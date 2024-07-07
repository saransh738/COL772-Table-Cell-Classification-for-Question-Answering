#!/bin/bash
TRAIN_COMMAND="python3 train.py"
TEST_COMMAND="python3 test.py"
if [ "$1" != "test" ]; then
    TRAIN_DATA="$1"
    VAL_DATA="$2"
    $TRAIN_COMMAND $TRAIN_DATA $VAL_DATA
fi
if [ "$1" == "test" ]; then
    TRAIN_DATA="$2"
    PREDICTION_JSON="$3"
    $TEST_COMMAND $TRAIN_DATA $PREDICTION_JSON
fi
