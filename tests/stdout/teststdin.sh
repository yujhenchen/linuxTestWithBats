# Test use
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)
FAILED="${RED}Failed${RESET}"
PASS="${GREEN}Passed${RESET}"

VARIABLE_A="A"
VARIABLE_B="B"
VARIABLE_A_COPY="A"

# Run test failed
if [ "$VARIABLE_A" = "$VARIABLE_B" ]; then
    echo "${PASS} $VARIABLE_A==$VARIABLE_B"
else
    echo "${FAILED} $VARIABLE_A!=$VARIABLE_B"
fi

# Run test pass
if [ "$VARIABLE_A" = "$VARIABLE_A_COPY" ]; then
    echo "${PASS} $VARIABLE_A==$VARIABLE_A_COPY"
else
    echo "${FAILED} $VARIABLE_A==$VARIABLE_A_COPY"
fi
