{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PackageImports    #-}
{-# LANGUAGE UnicodeSyntax     #-}

{-|
[@ISO639-1@]        nb

[@ISO639-2B@]       nob

[@ISO639-3@]        nob

[@Native name@]     Bokmål

[@English name@]    Norwegian Bokmål
-}

module Text.Numeral.Language.NOB
    ( -- * Language entry
      entry
      -- * Conversions
    , cardinal
      -- * Structure
    , struct
      -- * Bounds
    , bounds
    ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

import "base" Data.Function ( ($), const, fix )
import "base" Data.Maybe    ( Maybe(Just) )
import "base" Prelude       ( Integral, (-), negate )
import "base-unicode-symbols" Data.Function.Unicode ( (∘) )
import qualified "containers" Data.Map as M ( fromList, lookup )
import           "this" Text.Numeral
import qualified "this" Text.Numeral.BigNum as BN
import qualified "this" Text.Numeral.Exp    as E
import           "this" Text.Numeral.Misc ( dec )
import "this" Text.Numeral.Entry
import "text" Data.Text ( Text )


-------------------------------------------------------------------------------
-- NOB
-------------------------------------------------------------------------------

entry ∷ Entry
entry = emptyEntry
    { entIso639_1    = Just "nb"
    , entIso639_2    = ["nob"]
    , entIso639_3    = Just "nob"
    , entNativeNames = ["Bokmål"]
    , entEnglishName = Just "Norwegian Bokmål"
    , entCardinal    = Just Conversion
                       { toNumeral   = cardinal
                       , toStructure = struct
                       }
    }

cardinal ∷ (Integral α, E.Scale α) ⇒ i → α → Maybe Text
cardinal inf = cardinalRepr inf ∘ struct

struct ∷ ( Integral α, E.Scale α
         , E.Unknown β, E.Lit β, E.Neg β, E.Add β, E.Mul β, E.Scale β
         )
       ⇒ α → β
struct = pos
       $ fix
       $ findRule (   0, lit               )
                [ (  13, add    10      L  )
                , (  20, lit               )
                , (  21, add    20      R  )
                , (  30, mul    10      R L)
                , ( 100, step  100   10 R L)
                , (1000, step 1000 1000 R L)
                ]
                  (dec 6 - 1)
         `combine` pelletierScale R L BN.rule

bounds ∷ (Integral α) ⇒ (α, α)
bounds = let x = dec 60000 - 1 in (negate x, x)

cardinalRepr ∷ i → Exp i → Maybe Text
cardinalRepr = render defaultRepr
               { reprValue = \_ n → M.lookup n syms
               , reprScale = BN.scaleRepr (BN.quantityName "illion" "illioner") []
               , reprAdd   = Just (⊞)
               , reprMul   = Just (⊡)
               , reprNeg   = Just $ \_ _   → "minus "
               }
    where
      (Lit 100  ⊞ _) _ = " "
      (Lit 1000 ⊞ _) _ = " "
      (_        ⊞ _) _ = ""

      (_ ⊡ Lit 10  ) _ = ""
      (_ ⊡ Lit 1000) _ = ""
      (_ ⊡ _       ) _ = " "

      syms =
          M.fromList
          [ (0,  const "null")
          , (1,  \c → case c of
                        CtxEmpty → "én"
                        _        → "en"
            )
          , (2,  const "to")
          , (3,  tenForms   "tre"  "tret" "tret")
          , (4,  tenForms   "fire" "fjor" "før")
          , (5,  const "fem")
          , (6,  const "seks")
          , (7,  tenForms   "sju"  "syt"  "syt")
          , (8,  tenForms   "åtte" "at"   "åt")
          , (9,  tenForms   "ni"   "nit"  "nit")
          , (10, \c → case c of
                        CtxAdd {} → "ten"
                        _         → "ti"
            )
          , (11, const "elleve")
          , (12, const "tolv")
          , (20, const "tjue")
          , (100, const "hundre")
          , (1000, const "tusen")
          ]

      tenForms n a m = \c → case c of
                              CtxAdd _ (Lit 10  ) _ → a
                              CtxMul _ (Lit 100 ) _ → n
                              CtxMul _ (Lit 1000) _ → n
                              CtxMul {}             → m
                              _                     → n
