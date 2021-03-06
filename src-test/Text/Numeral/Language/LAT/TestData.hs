{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PackageImports      #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}

{-|
[@ISO639-1@]        la

[@ISO639-2B@]       lat

[@ISO639-3@]        lat

[@Native name@]     Latine

[@English name@]    Latin
-}

module Text.Numeral.Language.LAT.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude     ( Num )
import "numerals" Text.Numeral.Grammar.Reified ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://www.informalmusic.com/latinsoc/latnum.html
  http://www.sf.airnet.ne.jp/~ts/language/number/latin.html
-}

cardinals ∷ (Num i) ⇒ TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "nihil")
      , (1, "ūnus")
      , (2, "duo")
      , (3, "trēs")
      , (4, "quattuor")
      , (5, "quīnque")
      , (6, "sex")
      , (7, "septem")
      , (8, "octō")
      , (9, "novem")
      , (10, "decem")
      , (11, "ūndecim")
      , (12, "duodecim")
      , (13, "trēdecim")
      , (14, "quattuordecim")
      , (15, "quīndecim")
      , (16, "sēdecim")
      , (17, "septendecim")
      , (18, "duodēvīgintī")
      , (19, "ūndēvīgintī")
      , (20, "vīgintī")
      , (21, "vīgintī ūnus")
      , (22, "vīgintī duo")
      , (23, "vīgintī trēs")
      , (24, "vīgintī quattuor")
      , (25, "vīgintī quīnque")
      , (26, "vīgintī sex")
      , (27, "vīgintī septem")
      , (28, "duodētrīgintā")
      , (29, "ūndētrīgintā")
      , (30, "trīgintā")
      , (31, "trīgintā ūnus")
      , (32, "trīgintā duo")
      , (33, "trīgintā trēs")
      , (34, "trīgintā quattuor")
      , (35, "trīgintā quīnque")
      , (36, "trīgintā sex")
      , (37, "trīgintā septem")
      , (38, "duodēquadrāgintā")
      , (39, "ūndēquadrāgintā")
      , (40, "quadrāgintā")
      , (41, "quadrāgintā ūnus")
      , (42, "quadrāgintā duo")
      , (43, "quadrāgintā trēs")
      , (44, "quadrāgintā quattuor")
      , (45, "quadrāgintā quīnque")
      , (46, "quadrāgintā sex")
      , (47, "quadrāgintā septem")
      , (48, "duodēquīnquāgintā")
      , (49, "ūndēquīnquāgintā")
      , (50, "quīnquāgintā")
      , (51, "quīnquāgintā ūnus")
      , (52, "quīnquāgintā duo")
      , (53, "quīnquāgintā trēs")
      , (54, "quīnquāgintā quattuor")
      , (55, "quīnquāgintā quīnque")
      , (56, "quīnquāgintā sex")
      , (57, "quīnquāgintā septem")
      , (58, "duodēsexāgintā")
      , (59, "ūndēsexāgintā")
      , (60, "sexāgintā")
      , (61, "sexāgintā ūnus")
      , (62, "sexāgintā duo")
      , (63, "sexāgintā trēs")
      , (64, "sexāgintā quattuor")
      , (65, "sexāgintā quīnque")
      , (66, "sexāgintā sex")
      , (67, "sexāgintā septem")
      , (68, "duodēseptuāgintā")
      , (69, "ūndēseptuāgintā")
      , (70, "septuāgintā")
      , (71, "septuāgintā ūnus")
      , (72, "septuāgintā duo")
      , (73, "septuāgintā trēs")
      , (74, "septuāgintā quattuor")
      , (75, "septuāgintā quīnque")
      , (76, "septuāgintā sex")
      , (77, "septuāgintā septem")
      , (78, "duodēoctōgintā")
      , (79, "ūndēoctōgintā")
      , (80, "octōgintā")
      , (81, "octōgintā ūnus")
      , (82, "octōgintā duo")
      , (83, "octōgintā trēs")
      , (84, "octōgintā quattuor")
      , (85, "octōgintā quīnque")
      , (86, "octōgintā sex")
      , (87, "octōgintā septem")
      , (88, "duodēnōnāgintā")
      , (89, "ūndēnōnāgintā")
      , (90, "nōnāgintā")
      , (91, "nōnāgintā ūnus")
      , (92, "nōnāgintā duo")
      , (93, "nōnāgintā trēs")
      , (94, "nōnāgintā quattuor")
      , (95, "nōnāgintā quīnque")
      , (96, "nōnāgintā sex")
      , (97, "nōnāgintā septem")
      , (98, "duodēcentum")
      , (99, "ūndēcentum")
      , (100, "centum")
      ]
    )
  ]
