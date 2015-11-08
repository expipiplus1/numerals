{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PackageImports      #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}

{-|
[@ISO639-1@]        en

[@ISO639-2B@]       eng

[@ISO639-3@]        eng

[@Native name@]     English

[@English name@]    English
-}

module Text.Numeral.Language.EN.TestData
    ( gb_cardinals, gb_ordinals
    , us_cardinals, us_ordinals
    ) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude     ( Num )
import "base-unicode-symbols" Data.Monoid.Unicode ( (⊕) )
import "numerals" Text.Numeral.Grammar.Reified ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )
import "text" Data.Text ( Text )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

-- Sources: http://en.wikipedia.org/wiki/List_of_numbers

en_cardinals ∷ (Num i) ⇒ [(i, Text)]
en_cardinals =
  [ (0, "zero")
  , (1, "one")
  , (2, "two")
  , (3, "three")
  , (4, "four")
  , (5, "five")
  , (6, "six")
  , (7, "seven")
  , (8, "eight")
  , (9, "nine")
  , (10, "ten")
  , (11, "eleven")
  , (12, "twelve")
  , (13, "thirteen")
  , (14, "fourteen")
  , (15, "fifteen")
  , (16, "sixteen")
  , (17, "seventeen")
  , (18, "eighteen")
  , (19, "nineteen")
  , (20, "twenty")
  , (21, "twenty-one")
  , (22, "twenty-two")
  , (23, "twenty-three")
  , (24, "twenty-four")
  , (25, "twenty-five")
  , (26, "twenty-six")
  , (27, "twenty-seven")
  , (28, "twenty-eight")
  , (29, "twenty-nine")
  , (30, "thirty")
  , (31, "thirty-one")
  , (32, "thirty-two")
  , (33, "thirty-three")
  , (34, "thirty-four")
  , (35, "thirty-five")
  , (36, "thirty-six")
  , (37, "thirty-seven")
  , (38, "thirty-eight")
  , (39, "thirty-nine")
  , (40, "forty")
  , (41, "forty-one")
  , (42, "forty-two")
  , (43, "forty-three")
  , (44, "forty-four")
  , (45, "forty-five")
  , (46, "forty-six")
  , (47, "forty-seven")
  , (48, "forty-eight")
  , (49, "forty-nine")
  , (50, "fifty")
  , (51, "fifty-one")
  , (52, "fifty-two")
  , (53, "fifty-three")
  , (54, "fifty-four")
  , (55, "fifty-five")
  , (56, "fifty-six")
  , (57, "fifty-seven")
  , (58, "fifty-eight")
  , (59, "fifty-nine")
  , (60, "sixty")
  , (61, "sixty-one")
  , (62, "sixty-two")
  , (63, "sixty-three")
  , (64, "sixty-four")
  , (65, "sixty-five")
  , (66, "sixty-six")
  , (67, "sixty-seven")
  , (68, "sixty-eight")
  , (69, "sixty-nine")
  , (70, "seventy")
  , (71, "seventy-one")
  , (72, "seventy-two")
  , (73, "seventy-three")
  , (74, "seventy-four")
  , (75, "seventy-five")
  , (76, "seventy-six")
  , (77, "seventy-seven")
  , (78, "seventy-eight")
  , (79, "seventy-nine")
  , (80, "eighty")
  , (81, "eighty-one")
  , (82, "eighty-two")
  , (83, "eighty-three")
  , (84, "eighty-four")
  , (85, "eighty-five")
  , (86, "eighty-six")
  , (87, "eighty-seven")
  , (88, "eighty-eight")
  , (89, "eighty-nine")
  , (90, "ninety")
  , (91, "ninety-one")
  , (92, "ninety-two")
  , (93, "ninety-three")
  , (94, "ninety-four")
  , (95, "ninety-five")
  , (96, "ninety-six")
  , (97, "ninety-seven")
  , (98, "ninety-eight")
  , (99, "ninety-nine")
  , (100, "one hundred")
  ]

en_ordinals ∷ (Num i) ⇒ [(i, Text)]
en_ordinals =
  [ (0, "zeroth")
  , (1, "first")
  , (2, "second")
  , (3, "third")
  , (4, "fourth")
  , (5, "fifth")
  , (6, "sixth")
  , (7, "seventh")
  , (8, "eighth")
  , (9, "ninth")
  , (10, "tenth")
  , (11, "eleventh")
  , (12, "twelfth")
  , (13, "thirteenth")
  , (14, "fourteenth")
  , (15, "fifteenth")
  , (16, "sixteenth")
  , (17, "seventeenth")
  , (18, "eighteenth")
  , (19, "nineteenth")
  , (20, "twentieth")
  , (21, "twenty-first")
  , (22, "twenty-second")
  , (23, "twenty-third")
  , (24, "twenty-fourth")
  , (25, "twenty-fifth")
  , (26, "twenty-sixth")
  , (27, "twenty-seventh")
  , (28, "twenty-eighth")
  , (29, "twenty-ninth")
  , (30, "thirtieth")
  , (31, "thirty-first")
  , (32, "thirty-second")
  , (33, "thirty-third")
  , (34, "thirty-fourth")
  , (35, "thirty-fifth")
  , (36, "thirty-sixth")
  , (37, "thirty-seventh")
  , (38, "thirty-eighth")
  , (39, "thirty-ninth")
  , (40, "fortieth")
  , (41, "forty-first")
  , (42, "forty-second")
  , (43, "forty-third")
  , (44, "forty-fourth")
  , (45, "forty-fifth")
  , (46, "forty-sixth")
  , (47, "forty-seventh")
  , (48, "forty-eighth")
  , (49, "forty-ninth")
  , (50, "fiftieth")
  , (51, "fifty-first")
  , (52, "fifty-second")
  , (53, "fifty-third")
  , (54, "fifty-fourth")
  , (55, "fifty-fifth")
  , (56, "fifty-sixth")
  , (57, "fifty-seventh")
  , (58, "fifty-eighth")
  , (59, "fifty-ninth")
  , (60, "sixtieth")
  , (61, "sixty-first")
  , (62, "sixty-second")
  , (63, "sixty-third")
  , (64, "sixty-fourth")
  , (65, "sixty-fifth")
  , (66, "sixty-sixth")
  , (67, "sixty-seventh")
  , (68, "sixty-eighth")
  , (69, "sixty-ninth")
  , (70, "seventieth")
  , (71, "seventy-first")
  , (72, "seventy-second")
  , (73, "seventy-third")
  , (74, "seventy-fourth")
  , (75, "seventy-fifth")
  , (76, "seventy-sixth")
  , (77, "seventy-seventh")
  , (78, "seventy-eighth")
  , (79, "seventy-ninth")
  , (80, "eightieth")
  , (81, "eighty-first")
  , (82, "eighty-second")
  , (83, "eighty-third")
  , (84, "eighty-fourth")
  , (85, "eighty-fifth")
  , (86, "eighty-sixth")
  , (87, "eighty-seventh")
  , (88, "eighty-eighth")
  , (89, "eighty-ninth")
  , (90, "ninetieth")
  , (91, "ninety-first")
  , (92, "ninety-second")
  , (93, "ninety-third")
  , (94, "ninety-fourth")
  , (95, "ninety-fifth")
  , (96, "ninety-sixth")
  , (97, "ninety-seventh")
  , (98, "ninety-eighth")
  , (99, "ninety-ninth")
  , (100, "one hundreth")
  ]

gb_cardinals ∷ (Num i) ⇒ TestData i
gb_cardinals =
  [ ( "default"
    , defaultInflection
    , en_cardinals
      ⊕ [ (-1, "minus one")
        , (101, "one hundred and one")
        , (110, "one hundred and ten")
        , (111, "one hundred and eleven")
        , (120, "one hundred and twenty")
        , (121, "one hundred and twenty-one")
        , (144, "one hundred and forty-four")
        , (200, "two hundred")
        , (300, "three hundred")
        , (666, "six hundred and sixty-six")
        , (1000, "one thousand")
        , (1001, "one thousand and one")
        , (1010, "one thousand and ten")
        , (1011, "one thousand and eleven")
        , (1024, "one thousand and twenty-four")
        , (1100, "one thousand one hundred")
        , (1728, "one thousand seven hundred and twenty-eight")
        , (2000, "two thousand")
        , (10000, "ten thousand")
        , (100000, "one hundred thousand")
        , (500000, "five hundred thousand")
        , (1000000, "one million")
        , (1048576, "one million forty-eight thousand five hundred and seventy-six")
        , (10000000, "ten million")
        ]
    )
  ]

gb_ordinals ∷ (Num i) ⇒ TestData i
gb_ordinals =
  [ ( "default"
    , defaultInflection
    , en_ordinals
      ⊕ [ (101, "one hundred and first")
        , (110, "one hundred and tenth")
        , (111, "one hundred and eleventh")
        , (120, "one hundred and twentieth")
        , (121, "one hundred and twenty-first")
        , (144, "one hundred and forty-fourth")
        , (200, "two hundreth")
        , (300, "three hundreth")
        , (666, "six hundred and sixty-sixth")
        , (1000, "one thousandth")
        , (1001, "one thousand and first")
        , (1010, "one thousand and tenth")
        , (1011, "one thousand and eleventh")
        , (1024, "one thousand and twenty-fourth")
        , (1100, "one thousand one hundreth")
        , (1728, "one thousand seven hundred and twenty-eighth")
        , (2000, "two thousandth")
        , (10000, "ten thousandth")
        , (100000, "one hundred thousandth")
        , (500000, "five hundred thousandth")
        , (1000000, "one millionth")
        , (1048576, "one million forty-eight thousand five hundred and seventy-sixth")
        , (10000000, "ten millionth")
        ]
    )
  ]

us_cardinals ∷ (Num i) ⇒ TestData i
us_cardinals =
  [ ( "default"
    , defaultInflection
    , en_cardinals
      ⊕ [ (-1, "negative one")
        , (101, "one hundred one")
        , (110, "one hundred ten")
        , (111, "one hundred eleven")
        , (120, "one hundred twenty")
        , (121, "one hundred twenty-one")
        , (144, "one hundred forty-four")
        , (200, "two hundred")
        , (300, "three hundred")
        , (666, "six hundred sixty-six")
        , (1000, "one thousand")
        , (1001, "one thousand one")
        , (1010, "one thousand ten")
        , (1011, "one thousand eleven")
        , (1024, "one thousand twenty-four")
        , (1100, "one thousand one hundred")
        , (1728, "one thousand seven hundred twenty-eight")
        , (2000, "two thousand")
        , (10000, "ten thousand")
        , (100000, "one hundred thousand")
        , (500000, "five hundred thousand")
        , (1000000, "one million")
        , (1048576, "one million forty-eight thousand five hundred seventy-six")
        , (10000000, "ten million")
        ]
    )
  ]

us_ordinals ∷ (Num i) ⇒ TestData i
us_ordinals =
  [ ( "default"
    , defaultInflection
    , en_ordinals
      ⊕ [ (101, "one hundred first")
        , (110, "one hundred tenth")
        , (111, "one hundred eleventh")
        , (120, "one hundred twentieth")
        , (121, "one hundred twenty-first")
        , (144, "one hundred forty-fourth")
        , (200, "two hundreth")
        , (300, "three hundreth")
        , (666, "six hundred sixty-sixth")
        , (1000, "one thousandth")
        , (1001, "one thousand first")
        , (1010, "one thousand tenth")
        , (1011, "one thousand eleventh")
        , (1024, "one thousand twenty-fourth")
        , (1100, "one thousand one hundreth")
        , (1728, "one thousand seven hundred twenty-eighth")
        , (2000, "two thousandth")
        , (10000, "ten thousandth")
        , (100000, "one hundred thousandth")
        , (500000, "five hundred thousandth")
        , (1000000, "one millionth")
        , (1048576, "one million forty-eight thousand five hundred seventy-sixth")
        , (10000000, "ten millionth")
        ]
    )
  ]