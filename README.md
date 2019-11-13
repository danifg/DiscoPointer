# DiscoPointer
This repository includes the code of the discontinuous constituent parser with pointer networks described in AAAI paper [Discontinuous Constituent Parsing with Pointer Networks](https://github.com/danifg/DiscoPointer). The implementation is based on the dependency parser by Ma et al. (2018) (https://github.com/XuezheMax/NeuroNLP2) and reuses part of its code.

### Requirements
This implementation requires Python 2.7, PyTorch 0.3.1 and Gensim >= 0.12.0 for the parser and Python 3.3+, Cython 0.21+ and Numpy 1.6+ for the evaluation script DISCODOP as mentioned in https://github.com/andreasvc/disco-dop. The use of two different pyhton environments is advised.
  

### Experiments
To train the parser, just include the augmented dependency version of constituent datasets and embeddings in the corresponding ``negra``, ``tiger`` and ``embs`` folders, and run the following scripts depending on the treebank (NEGRA or TIGER) that you are working with:

    ./scripts/train_negra.sh
or

    ./scripts/train_tiger.sh

Finally, to evalute the trained model, just use the following scripts to compute the F1 and Discontinuous F1 scores:

    ./scripts/eval_negra.sh
or

    ./scripts/eval_tiger.sh

Please, do not hesitate to ask for the augmented dependency version of NEGRA and TIGER treebanks so that you can directly train the model.
