#!/usr/bin/env bats

# The script of Bats is the same as shell scripting
# The "bc" and "dc" are different methods that can be used to perform addition
@test "addition" {
    result=$((2+2))
    [ "$result" -eq 4 ]
}

@test "addition using bc" {
    result="$(echo 2+2 | bc)"
    [ "$result" -eq 4 ]
}

@test "addition using dc" {
    result="$(echo 2 2+p | dc)"
    [ "$result" -eq 4 ]
}
