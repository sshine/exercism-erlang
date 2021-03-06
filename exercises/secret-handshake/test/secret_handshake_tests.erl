%% Based on canonical data version 1.2.0
%% https://github.com/exercism/problem-specifications/raw/master/exercises/secret-handshake/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(secret_handshake_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_wink_for_1_test'() ->
    ?assertEqual(["wink"], secret_handshake:commands(1)).

'2_double_blink_for_10_test'() ->
    ?assertEqual(["double blink"],
		 secret_handshake:commands(2)).

'3_close_your_eyes_for_100_test'() ->
    ?assertEqual(["close your eyes"],
		 secret_handshake:commands(4)).

'4_jump_for_1000_test'() ->
    ?assertEqual(["jump"], secret_handshake:commands(8)).

'5_combine_two_actions_test'() ->
    ?assertEqual(["wink", "double blink"],
		 secret_handshake:commands(3)).

'6_reverse_two_actions_test'() ->
    ?assertEqual(["double blink", "wink"],
		 secret_handshake:commands(19)).

'7_reversing_one_action_gives_the_same_action_test'() ->
    ?assertEqual(["jump"], secret_handshake:commands(24)).

'8_reversing_no_actions_still_gives_no_actions_test'() ->
    ?assertEqual([], secret_handshake:commands(16)).

'9_all_possible_actions_test'() ->
    ?assertEqual(["wink", "double blink", "close your eyes",
		  "jump"],
		 secret_handshake:commands(15)).

'10_reverse_all_possible_actions_test'() ->
    ?assertEqual(["jump", "close your eyes", "double blink",
		  "wink"],
		 secret_handshake:commands(31)).

'11_do_nothing_for_zero_test'() ->
    ?assertEqual([], secret_handshake:commands(0)).
