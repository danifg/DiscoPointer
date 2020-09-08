# DiscoPointer
This repository includes the code of the discontinuous constituent parser with Pointer Networks described in AAAI paper [Discontinuous Constituent Parsing with Pointer Networks](https://github.com/danifg/DiscoPointer). The implementation is based on the dependency parser by Ma et al. (2018) (https://github.com/XuezheMax/NeuroNLP2) and reuses part of its code.

### Requirements
This implementation requires Python 2.7, PyTorch 0.3.1 and Gensim >= 0.12.0 for the parser and Python 3.3+, Cython 0.21+ and Numpy 1.6+ for the evaluation script DISCODOP as mentioned in https://github.com/andreasvc/disco-dop. The use of two different python virtual environments is advised.
  

### Experiments
To train the parser, just include the augmented dependency version and EXPORT files of the discontinuous constituent treebanks and embeddings in the corresponding ``negra``, ``tiger`` and ``embs`` folders, and run the following scripts (in Python2) depending on the treebank (NEGRA or TIGER) that you are working with:

    ./scripts/train_negra.sh
or

    ./scripts/train_tiger.sh

Finally, to evaluate the trained model, just use the following scripts (in Python3) to compute the F1 and Discontinuous F1 scores:

    ./scripts/eval_negra.sh

or

    ./scripts/eval_tiger.sh

Please, do not hesitate to ask for the augmented dependency version of NEGRA and TIGER treebanks (obtained following the head rules described in the paper) and embeddings so that you can easily reproduce AAAI20 results.

### Citation
    @inproceedings{FerGomAAAI2020,
      author    = {Daniel Fern{\'{a}}ndez{-}Gonz{\'{a}}lez and
               Carlos G{\'{o}}mez{-}Rodr{\'{i}}guez},
      title     = {Discontinuous Constituent Parsing with Pointer Networks},
      booktitle = {Proceedings of the Thirty-Fourth {AAAI} Conference on Artificial Intelligence, {AAAI}
               2020, New York, NY, USA,
               February 7-12, 2020},
      pages     = {7724--7731},
      publisher = {{AAAI} Press},
      year      = {2020},
      url       = {https://aaai.org/ojs/index.php/AAAI/article/view/6275},
      doi       = {https://doi.org/10.1609/aaai.v34i05.6275}
    }
    
### Acknowledgments
This work has received funding from the European Research Council (ERC), under the European Union's Horizon 2020 research and innovation programme (FASTPARSE, grant agreement No 714150), from MINECO (FFI2014-51978-C2-2-R, TIN2017-85160-C2-1-R) and from Xunta de Galicia (ED431B 2017/01).

### Contact
If you have any suggestion, inquiry or bug to report, please contact d.fgonzalez@udc.es
