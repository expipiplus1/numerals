{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PackageImports      #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}

{-|
[@ISO639-1@]        -

[@ISO639-2@]        fur

[@ISO639-3@]        fur

[@Native name@]     Furlan

[@English name@]    Friulan
-}

module Text.Numeral.Language.FUR.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude     ( Integral )
import "base-unicode-symbols" Prelude.Unicode ( (⋅) )
import "numerals" Text.Numeral.Grammar
import "numerals" Text.Numeral.Grammar.Reified ( defaultInflection )
import "numerals" Text.Numeral.Misc ( dec )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

-- Sources:
--   http://www.languagesandnumbers.com/how-to-count-in-friulian/en/fur/
cardinals ∷ (Integral i) ⇒ TestData i
cardinals =
  [ ( "masculine"
    , masculine defaultInflection
    , [ (0, "zero")
      , (1, "un")
      , (2, "doi")
      , (3, "trê")
      , (4, "cuatri")
      , (5, "cinc")
      , (6, "sîs")
      , (7, "siet")
      , (8, "vot")
      , (9, "nûf")
      , (10, "dîs")
      , (11, "undis")
      , (12, "dodis")
      , (13, "tredis")
      , (14, "cutuardis")
      , (15, "cuindis")
      , (16, "sedis")
      , (17, "disesiet")
      , (18, "disevot")
      , (19, "disenûf")
      , (20, "vincj")
      , (21, "vincjeun")
      , (22, "vincjedoi")
      , (23, "vincjetrê")
      , (24, "vincjecuatri")
      , (25, "vincjecinc")
      , (26, "vincjesîs")
      , (27, "vincjesiet")
      , (28, "vincjevot")
      , (29, "vincjenûf")
      , (30, "trente")
      , (31, "trenteun")
      , (32, "trentedoi")
      , (33, "trentetrê")
      , (34, "trentecuatri")
      , (35, "trentecinc")
      , (36, "trentesîs")
      , (37, "trentesiet")
      , (38, "trentevot")
      , (39, "trentenûf")
      , (40, "cuarante")
      , (41, "cuaranteun")
      , (42, "cuarantedoi")
      , (43, "cuarantetrê")
      , (44, "cuarantecuatri")
      , (45, "cuarantecinc")
      , (46, "cuarantesîs")
      , (47, "cuarantesiet")
      , (48, "cuarantevot")
      , (49, "cuarantenûf")
      , (50, "cincuante")
      , (51, "cincuanteun")
      , (52, "cincuantedoi")
      , (53, "cincuantetrê")
      , (54, "cincuantecuatri")
      , (55, "cincuantecinc")
      , (56, "cincuantesîs")
      , (57, "cincuantesiet")
      , (58, "cincuantevot")
      , (59, "cincuantenûf")
      , (60, "sessante")
      , (61, "sessanteun")
      , (62, "sessantedoi")
      , (63, "sessantetrê")
      , (64, "sessantecuatri")
      , (65, "sessantecinc")
      , (66, "sessantesîs")
      , (67, "sessantesiet")
      , (68, "sessantevot")
      , (69, "sessantenûf")
      , (70, "setante")
      , (71, "setanteun")
      , (72, "setantedoi")
      , (73, "setantetrê")
      , (74, "setantecuatri")
      , (75, "setantecinc")
      , (76, "setantesîs")
      , (77, "setantesiet")
      , (78, "setantevot")
      , (79, "setantenûf")
      , (80, "otante")
      , (81, "otanteun")
      , (82, "otantedoi")
      , (83, "otantetrê")
      , (84, "otantecuatri")
      , (85, "otantecinc")
      , (86, "otantesîs")
      , (87, "otantesiet")
      , (88, "otantevot")
      , (89, "otantenûf")
      , (90, "novante")
      , (91, "novanteun")
      , (92, "novantedoi")
      , (93, "novantetrê")
      , (94, "novantecuatri")
      , (95, "novantecinc")
      , (96, "novantesîs")
      , (97, "novantesiet")
      , (98, "novantevot")
      , (99, "novantenûf")
      , (100, "cent")
      , (109, "cent e nûf")
      , (110, "cent e dîs")
      , (123, "cent e vincjetrê")
      , (200, "dusinte")
      , (230, "dusinte e trente")
      , (234, "dusinte e trentecuatri")
      , (300, "tresinte")
      , (400, "cuatricent")
      , (500, "cinccent")
      , (600, "sîscent")
      , (700, "sietcent")
      , (800, "votcent")
      , (900, "nûfcent")
      , (999, "nûfcent e novantenûf")
      , (1000, "mil")
      , (1001, "mil e un")
      , (1005, "mil e cinc")
      , (1050, "mil e cincuante")
      , (1100, "mil e cent")
      , (1110, "mil cent e dîs")
      , (1500, "mil e cinccent")
      , (1550, "mil cinccent e cincuante")
      , (2000, "doi mil")
      , (2005, "doi mil e cinc")
      , (2050, "doi mil e cincuante")
      , (2500, "doi mil e cinccent")
      , (2550, "doi mil cinccent e cincuante")
      , (3000, "trê mil")
      , (4000, "cuatri mil")
      , (10000, "dîs mil")
      , (12000, "dodis mil")
      , (12005, "dodis mil e cinc")
      , (12345, "dodis mil tresinte e cuarantecinc")
      , (100000, "cent mil")
      , (110000, "cent e dîs mil")
      , (110010, "cent e dîs mil e dîs")
      , (123456, "cent e vincjetrê mil cuatricent e cincuantesîs")
      , (dec 6, "un milion")
      , (2 ⋅ dec 6, "doi milions")
      , (3 ⋅ dec 6, "trê milions")
      , (10 ⋅ dec 6, "dîs milions")
      , (dec 9, "un miliart")
      , (2 ⋅ dec 9, "doi miliarts")
      , (3 ⋅ dec 9, "trê miliarts")
      ]
    )
  , ( "feminine"
    , feminine defaultInflection
    , [ (1, "une")
      , (2, "dôs")
      , (2 ⋅ dec 6, "dôs milions")
      , (2 ⋅ dec 9, "dôs miliarts")
      ]
    )
  ]
