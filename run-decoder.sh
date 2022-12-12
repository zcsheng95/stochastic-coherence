#!/bin/bash

path2repo=/home/sheng136/workspace/myprojects/language_modeling_via_stochastic_processes
latent_dim=16
domain='tm2'
encoder_path=/home/sheng136/workspace/myprojects/language_modeling_via_stochastic_processes/trained_model/tm2_encoder.ckpt
#python run_time_clm.py --model_name_or_path gpt2 --dataset_name ${domain} --do_train --do_eval --per_device_eval_batch_size=1 --per_device_train_batch_size=1 --save_total_limit=1 --load_best_model_at_end=True --overwrite_output_dir --num_train_epochs=10 --seed=1 --encoder_filepath=${encoder_path} --latent_dim=${latent_dim} --output_dir LM_${domain}_${latent_dim} --evaluation_strategy=steps --eval_steps=1000 --use_contrastive_embeddings


python runExp.py --model_type=gpt2 --model_name_or_path=${path2repo}/language_modeling_via_stochastic_processes/transformers/examples/pytorch/language-modeling/LM_tm2_16/ --prompt="<|endoftext|>" --num_return_sequences=1 --num_intervals=1000 --method=sample --stop_token="<|endoftext|>" --dataset_name=tm2 --encoder_filepath=${encoder_path} --latent_dim=${latent_dim} --project=LM_tm2 --no_eos --label=LM_tm2 --seed=0
