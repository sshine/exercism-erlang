%% Based on canonical data version 1.1.0
%% https://github.com/exercism/problem-specifications/raw/master/exercises/minesweeper/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(minesweeper_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_no_rows_test'() ->
    Input=[

    ],
    Expected=[

    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'2_no_columns_test'() ->
    Input=[
        ""
    ],
    Expected=[
        ""
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'3_no_mines_test'() ->
    Input=[
        "   ",
        "   ",
        "   "
    ],
    Expected=[
        "   ",
        "   ",
        "   "
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'4_minefield_with_only_mines_test'() ->
    Input=[
        "***",
        "***",
        "***"
    ],
    Expected=[
        "***",
        "***",
        "***"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'5_mine_surrounded_by_spaces_test'() ->
    Input=[
        "   ",
        " * ",
        "   "
    ],
    Expected=[
        "111",
        "1*1",
        "111"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'6_space_surrounded_by_mines_test'() ->
    Input=[
        "***",
        "* *",
        "***"
    ],
    Expected=[
        "***",
        "*8*",
        "***"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'7_horizontal_line_test'() ->
    Input=[
        " * * "
    ],
    Expected=[
        "1*2*1"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'8_horizontal_line_mines_at_edges_test'() ->
    Input=[
        "*   *"
    ],
    Expected=[
        "*1 1*"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'9_vertical_line_test'() ->
    Input=[
        " ",
        "*",
        " ",
        "*",
        " "
    ],
    Expected=[
        "1",
        "*",
        "2",
        "*",
        "1"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'10_vertical_line_mines_at_edges_test'() ->
    Input=[
        "*",
        " ",
        " ",
        " ",
        "*"
    ],
    Expected=[
        "*",
        "1",
        " ",
        "1",
        "*"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'11_cross_test'() ->
    Input=[
        "  *  ",
        "  *  ",
        "*****",
        "  *  ",
        "  *  "
    ],
    Expected=[
        " 2*2 ",
        "25*52",
        "*****",
        "25*52",
        " 2*2 "
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).

'12_large_minefield_test'() ->
    Input=[
        " *  * ",
        "  *   ",
        "    * ",
        "   * *",
        " *  * ",
        "      "
    ],
    Expected=[
        "1*22*1",
        "12*322",
        " 123*2",
        "112*4*",
        "1*22*2",
        "111111"
    ],
    ?assertMatch(Expected, minesweeper:annotate(Input)).
