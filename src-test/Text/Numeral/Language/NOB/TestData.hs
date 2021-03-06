{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PackageImports      #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}

{-|
[@ISO639-1@]        nb

[@ISO639-2B@]       nob

[@ISO639-3@]        nob

[@Native name@]     Bokmål

[@English name@]    Norwegian Bokmål
-}

module Text.Numeral.Language.NOB.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude     ( Integral )
import "base-unicode-symbols" Prelude.Unicode ( (⋅) )
import "numerals" Text.Numeral.Grammar.Reified ( defaultInflection )
import "numerals" Text.Numeral.Misc ( dec )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

-- Sources:
--   http://en.wikibooks.org/wiki/Norwegian_Numbers
--   http://www.sf.airnet.ne.jp/~ts/language/number/norwegian.html

cardinals ∷ (Integral i) ⇒ TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "null")
      , (1, "én")
      , (2, "to")
      , (3, "tre")
      , (4, "fire")
      , (5, "fem")
      , (6, "seks")
      , (7, "sju")
      , (8, "åtte")
      , (9, "ni")
      , (10, "ti")
      , (11, "elleve")
      , (12, "tolv")
      , (13, "tretten")
      , (14, "fjorten")
      , (15, "femten")
      , (16, "seksten")
      , (17, "sytten")
      , (18, "atten")
      , (19, "nitten")
      , (20, "tjue")
      , (21, "tjueen")
      , (22, "tjueto")
      , (23, "tjuetre")
      , (24, "tjuefire")
      , (25, "tjuefem")
      , (26, "tjueseks")
      , (27, "tjuesju")
      , (28, "tjueåtte")
      , (29, "tjueni")
      , (30, "tretti")
      , (31, "trettien")
      , (32, "trettito")
      , (33, "trettitre")
      , (34, "trettifire")
      , (35, "trettifem")
      , (36, "trettiseks")
      , (37, "trettisju")
      , (38, "trettiåtte")
      , (39, "trettini")
      , (40, "førti")
      , (41, "førtien")
      , (42, "førtito")
      , (43, "førtitre")
      , (44, "førtifire")
      , (45, "førtifem")
      , (46, "førtiseks")
      , (47, "førtisju")
      , (48, "førtiåtte")
      , (49, "førtini")
      , (50, "femti")
      , (51, "femtien")
      , (52, "femtito")
      , (53, "femtitre")
      , (54, "femtifire")
      , (55, "femtifem")
      , (56, "femtiseks")
      , (57, "femtisju")
      , (58, "femtiåtte")
      , (59, "femtini")
      , (60, "seksti")
      , (61, "sekstien")
      , (62, "sekstito")
      , (63, "sekstitre")
      , (64, "sekstifire")
      , (65, "sekstifem")
      , (66, "sekstiseks")
      , (67, "sekstisju")
      , (68, "sekstiåtte")
      , (69, "sekstini")
      , (70, "sytti")
      , (71, "syttien")
      , (72, "syttito")
      , (73, "syttitre")
      , (74, "syttifire")
      , (75, "syttifem")
      , (76, "syttiseks")
      , (77, "syttisju")
      , (78, "syttiåtte")
      , (79, "syttini")
      , (80, "åtti")
      , (81, "åttien")
      , (82, "åttito")
      , (83, "åttitre")
      , (84, "åttifire")
      , (85, "åttifem")
      , (86, "åttiseks")
      , (87, "åttisju")
      , (88, "åttiåtte")
      , (89, "åttini")
      , (90, "nitti")
      , (91, "nittien")
      , (92, "nittito")
      , (93, "nittitre")
      , (94, "nittifire")
      , (95, "nittifem")
      , (96, "nittiseks")
      , (97, "nittisju")
      , (98, "nittiåtte")
      , (99, "nittini")
      , (100, "hundre")
      , (123, "hundre tjuetre")
      , (200, "to hundre")
      , (300, "tre hundre")
      , (400, "fire hundre")
      , (500, "fem hundre")
      , (600, "seks hundre")
      , (700, "sju hundre")
      , (800, "åtte hundre")
      , (900, "ni hundre")
      , (1000, "tusen")
      , (1023, "tusen tjuetre")
      , (2000, "totusen")
      , (3000, "tretusen")
      , (4000, "firetusen")
      , (5000, "femtusen")
      , (6000, "sekstusen")
      , (7000, "sjutusen")
      , (8000, "åttetusen")
      , (9000, "nitusen")
      , (10000, "titusen")
      , (dec 6, "million")
      , (2 ⋅ dec 6, "to millioner")
      ]
    )
  ]
