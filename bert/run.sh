export BERT_BASE_DIR=models/chinese_L-12_H-768_A-12 #全局变量 下载的预训练bert地址
export MY_DATASET=chinese_data #全局变量 数据集所在地址

python run_classifier_modify2.py \
  --data_dir=$MY_DATASET \
  --bert_model=$BERT_BASE_DIR  \
  --do_train=true \
  --do_eval=true \
  --task_name='mrpc' \
  --output_dir=sim_output/
