./tools/dist_test.sh ${CONFIG_FILE} ${CHECKPOINT_FILE} ${GPU_NUM} [--out ${RESULT_FILE}] [--eval ${EVAL_METRICS}]





python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} [--out ${RESULT_FILE}] [--eval ${EVAL_METRICS}] [--show]

python3 tools/test.py configs/segformer/segformer_mit-b5_1024x1024_40k_tianchi_aug.py work_dirs/segformer_mit-b5_1024x1024_40k_tianchi_aug/iter_8000.pth --out data/test_res_dir/test_res/2507.pkl --aug-test --format-only
./tools/dist_test.sh configs/segformer/segformer_mit-b5_1024x1024_40k_tianchi_aug.py work_dirs/segformer_mit-b5_1024x1024_40k_tianchi_aug/iter_8000.pth  8 --aug-test --format-only --eval-options "imgfile_prefix=./segformer_test_results"