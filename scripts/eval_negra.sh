#!/bin/bash

python ./scripts/escape_parenthesis.py ./negra/gold_test.conllx  > ./negra/gold_test.conllx.escaped

python ./scripts/escape_parenthesis.py ./negra/pred_test.conllx  > ./negra/pred_test.conllx.escaped



java -jar -Dfile.encoding=utf-8  ./scripts/disconverter.jar deconv ./negra/gold_test.conllx.escaped ./negra/gold_test.trees

java -jar -Dfile.encoding=utf-8  ./scripts/disconverter.jar deconv ./negra/pred_test.conllx.escaped ./negra/pred_test.trees


java -jar -Dfile.encoding=utf-8 ./scripts/trees2export.jar  ./negra/gold_test.trees  NEGRA

java -jar -Dfile.encoding=utf-8 ./scripts/trees2export.jar  ./negra/pred_test.trees  NEGRA

echo "F1"

discodop eval ./negra/gold_test.trees.export  ./negra/pred_test.trees.export  ./disco-dop/proper.prm | tail -n 13

echo "Disc F1"

discodop eval ./negra/gold_test.trees.export  ./negra/pred_test.trees.export  ./disco-dop/proper.prm --disconly | tail -n 13


rm ./negra/gold_test.conllx.escaped
rm ./negra/pred_test.conllx.escaped
rm ./negra/gold_test.trees
rm ./negra/pred_test.trees
rm ./negra/gold_test.trees.export
rm ./negra/pred_test.trees.export
