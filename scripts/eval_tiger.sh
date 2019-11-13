#!/bin/bash

python ./scripts/escape_parenthesis.py ./tiger/gold_test.conllx  > ./tiger/gold_test.conllx.escaped

python ./scripts/escape_parenthesis.py ./tiger/pred_test.conllx  > ./tiger/pred_test.conllx.escaped



java -jar -Dfile.encoding=utf-8  ./scripts/disconverter.jar deconv ./tiger/gold_test.conllx.escaped ./tiger/gold_test.trees

java -jar -Dfile.encoding=utf-8  ./scripts/disconverter.jar deconv ./tiger/pred_test.conllx.escaped ./tiger/pred_test.trees


java -jar -Dfile.encoding=utf-8 ./scripts/trees2export.jar  ./tiger/gold_test.trees  TIGER

java -jar -Dfile.encoding=utf-8 ./scripts/trees2export.jar  ./tiger/pred_test.trees  TIGER

echo "F1"

discodop eval ./tiger/gold_test.trees.export  ./tiger/pred_test.trees.export  ./disco-dop/proper.prm | tail -n 13

echo "Disc F1"

discodop eval ./tiger/gold_test.trees.export  ./tiger/pred_test.trees.export  ./disco-dop/proper.prm --disconly | tail -n 13


rm ./tiger/gold_test.conllx.escaped
rm ./tiger/pred_test.conllx.escaped
rm ./tiger/gold_test.trees
rm ./tiger/pred_test.trees
rm ./tiger/gold_test.trees.export
rm ./tiger/pred_test.trees.export
