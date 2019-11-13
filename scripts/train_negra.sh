#!/usr/bin/env bash
#CUDA_VISIBLE_DEVICES=2 
python scripts/L2RParser.py --mode FastLSTM --num_epochs 1000 --batch_size 32 --decoder_input_size 256 --hidden_size 512 --encoder_layers 3 --decoder_layers 1 \
 --pos_dim 100 --char_dim 100 --num_filters 100 --arc_space 512 --type_space 128 \
 --opt adam --learning_rate 0.001 --decay_rate 0.75 --epsilon 1e-4 --coverage 0.0 --gamma 0.0 --clip 5.0 \
 --schedule 20 --double_schedule_decay 5 \
 --grandPar  --sibling \
 --p_in 0.33 --p_out 0.33 --p_rnn 0.33 0.33 --unk_replace 0.5 --label_smooth 1.0 --pos --char --beam 10 --prior_order inside_out \
 --word_embedding sskip --word_path "./embs/sskip.de.gz" --char_embedding random \
 --punctuation '.' '``' "''" ':' ',' \
--train "./negra/pred_pos_train.conllx" \
--dev "./negra/pred_pos_dev.conllx" \
--test "./negra/pred_pos_test.conllx" \
 --model_path "./negra/" --model_name 'network.pt' --seed 1



