#!/bin/bash
# TEST_CSV_PATH='./cptac_slide_path.csv'
# TEST_CSV_PATH='./csv_path/cptac_luad_lusc.csv'
# TEST_CSV_PATH='./cptac_res/tmp4.csv'
# LMDB_DIR="./lmdb_dir_cptac_norm"
# LMDB_DIR='./lmdb_dir_cptac'

TEST_CSV_PATH='../scripts/tcga_csv/test.csv'
LMDB_DIR='../scripts/lmdb_dir'

MODEL_PATH='./model_res/fold1/resnet34.pth'
# K=50
# K=100
# K=150
# K=200
K=250
BS=1
# OUTPUT_CSV='./tcga_res_nonorm/fold1/tcga_fold1.csv'
# OUTPUT_CSV='./tcga_res_100patches/fold1/tcga_fold1.csv'
# OUTPUT_CSV='./tcga_res_150patches/fold1/tcga_fold1.csv'
# OUTPUT_CSV='./tcga_res_200patches/fold1/tcga_fold1.csv'
OUTPUT_CSV='./tcga_res_250patches/tcga_fold1.csv'


python test.py \
    --test_csv_path $TEST_CSV_PATH \
    --lmdb_dir $LMDB_DIR \
    --model_path $MODEL_PATH \
    --k $K \
    --batch_size $BS \
    --output_csv $OUTPUT_CSV

MODEL_PATH='./model_res/fold2/resnet34.pth'
# K=50
# K=100
# K=150
# K=200
K=250
BS=1
# OUTPUT_CSV='./tcga_res_nonorm/fold2/tcga_fold2.csv'
# OUTPUT_CSV='./tcga_res_100patches/fold2/tcga_fold2.csv'
# OUTPUT_CSV='./tcga_res_150patches/fold2/tcga_fold2.csv'
# OUTPUT_CSV='./tcga_res_200patches/fold2/tcga_fold2.csv'
OUTPUT_CSV='./tcga_res_250patches/tcga_fold2.csv'


python test.py \
    --test_csv_path $TEST_CSV_PATH \
    --lmdb_dir $LMDB_DIR \
    --model_path $MODEL_PATH \
    --k $K \
    --batch_size $BS \
    --output_csv $OUTPUT_CSV

MODEL_PATH='./model_res/fold3/resnet34.pth'
# K=50
# K=100
# K=150
# K=200
K=250
BS=1
# OUTPUT_CSV='./tcga_res_nonorm/fold3/tcga_fold3.csv'
# OUTPUT_CSV='./tcga_res_100patches/fold3/tcga_fold3.csv'
# OUTPUT_CSV='./tcga_res_150patches/fold3/tcga_fold3.csv'
# OUTPUT_CSV='./tcga_res_200patches/fold3/tcga_fold3.csv'
OUTPUT_CSV='./tcga_res_250patches/tcga_fold3.csv'


python test.py \
    --test_csv_path $TEST_CSV_PATH \
    --lmdb_dir $LMDB_DIR \
    --model_path $MODEL_PATH \
    --k $K \
    --batch_size $BS \
    --output_csv $OUTPUT_CSV

MODEL_PATH='./model_res/fold4/resnet34.pth'
# K=50
# K=100
# K=150
# K=200
K=250
BS=1
# OUTPUT_CSV='./tcga_res_nonorm/fold4/tcga_fold4.csv'
# OUTPUT_CSV='./tcga_res_100patches/fold4/tcga_fold4.csv'
# OUTPUT_CSV='./tcga_res_150patches/fold4/tcga_fold4.csv'
# OUTPUT_CSV='./tcga_res_200patches/fold4/tcga_fold4.csv'
OUTPUT_CSV='./tcga_res_250patches/tcga_fold4.csv'


python test.py \
    --test_csv_path $TEST_CSV_PATH \
    --lmdb_dir $LMDB_DIR \
    --model_path $MODEL_PATH \
    --k $K \
    --batch_size $BS \
    --output_csv $OUTPUT_CSV

MODEL_PATH='./model_res/fold5/resnet34.pth'
# K=50
# K=100
# K=150
# K=200
K=250
BS=1
# OUTPUT_CSV='./tcga_res_nonorm/fold5/tcga_fold5.csv'
# OUTPUT_CSV='./tcga_res_100patches/fold5/tcga_fold5.csv'
# OUTPUT_CSV='./tcga_res_150patches/fold5/tcga_fold5.csv'
# OUTPUT_CSV='./tcga_res_200patches/fold5/tcga_fold5.csv'
OUTPUT_CSV='./tcga_res_250patches/tcga_fold5.csv'


python test.py \
    --test_csv_path $TEST_CSV_PATH \
    --lmdb_dir $LMDB_DIR \
    --model_path $MODEL_PATH \
    --k $K \
    --batch_size $BS \
    --output_csv $OUTPUT_CSV

## TEST_CSV_PATH='./csv_path/beijing_slide_path_fold.csv'
##========================================================
## 北京的
## TEST_CSV_PATH='./csv_path/beijing_slide_path.csv'
# TEST_CSV_PATH='../scripts/csv_path/beijing_slide_path_fold.csv'
# LMDB_DIR='../lmdb_dir_external/lmdb_dir_beijing_norm'
#LMDB_DIR='../scripts/lmdb_dir_beijing'  # no norm
##========================================================

## LMDB_DIR='./lmdb_dir_beijing'
##========================================================
## 江苏的
## TEST_CSV_PATH='./csv_path/jiangsu.csv'
## LMDB_DIR='../lmdb_dir_external/lmdb_dir_jiangsu_norm'


## MODEL_PATH='./results/saved_models/resnet34_dropout.pth'
## K=60
## TEST_CSV_PATH='./test.csv'

## TEST_CSV_PATH='../scripts/tcga_csv/test.csv'
## LMDB_DIR='../scripts/lmdb_dir'
## MODEL_PATH='./results/saved_models/resnet34_dropout_cluster.pth'
## MODEL_PATH='./tcga_res/fold1/resnet34.pth'
## MODEL_PATH='./tcga_res/fold2/resnet34.pth'
## MODEL_PATH='./tcga_res/fold3/resnet34.pth'
## MODEL_PATH='./tcga_res/fold4/resnet34.pth'
## MODEL_PATH='./tcga_res/fold5/resnet34.pth'

## MODEL_PATH='./tcga_csv_50/fold1/resnet50_dropout_cluster.pth'
## MODEL_PATH='./tcga_csv_50/fold2/resnet50_dropout_cluster.pth'
## MODEL_PATH='./tcga_csv_50/fold3/resnet50_dropout_cluster.pth'
## MODEL_PATH='./tcga_csv_50/fold4/resnet50_dropout_cluster.pth'
## MODEL_PATH='./tcga_csv_50/fold5/resnet50_dropout_cluster.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing_res/fold2/beijing_fold2.csv'


## python test.py \
##     --test_csv_path $TEST_CSV_PATH \
##     --lmdb_dir $LMDB_DIR \
##     --model_path $MODEL_PATH \
##     --k $K \
##     --batch_size $BS


# MODEL_PATH='./model_res/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing_res_norm/fold1/beijing_fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing_res_norm/fold2/beijing_fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing_res_norm/fold3/beijing_fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing_res_norm/fold4/beijing_fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing_res_norm/fold5/beijing_fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# TEST_CSV_PATH='../scripts/csv_path/jiangsu.csv'
# LMDB_DIR='../lmdb_dir_external/lmdb_dir_jiangsu_norm'
# #LMDB_DIR='../scripts/lmdb_dir_jiangsu'  # no norm

# MODEL_PATH='./model_res/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./jiangsu_res_norm/fold1/jiangsu_fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./jiangsu_res_norm/fold2/jiangsu_fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./jiangsu_res_norm/fold3/jiangsu_fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./jiangsu_res_norm/fold4/jiangsu_fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./jiangsu_res_norm/fold5/jiangsu_fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# TEST_CSV_PATH='../scripts/cptac_res/tmp4.csv'
# LMDB_DIR="../scripts/lmdb_dir_cptac_norm"
# #LMDB_DIR="../scripts/lmdb_dir_cptac" # no norm

# MODEL_PATH='./model_res/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./cptac_res_norm/fold1/cptac_fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./cptac_res_norm/fold2/cptac_fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./cptac_res_norm/fold3/cptac_fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./cptac_res_norm/fold4/cptac_fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./cptac_res_norm/fold5/cptac_fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# shenzhen
# TEST_CSV_PATH='../scripts/csv_path/shenzhen_nonorm_foreval.csv'
# TEST_CSV_PATH='../scripts/csv_path/shenzhen_norm_foreval.csv'
# LMDB_DIR="../scripts/lmdb_dir_shenzhen_norm"
# # LMDB_DIR="../scripts/lmdb_dir_shenzhen_nonorm" # no norm

# MODEL_PATH='./model_res/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./shenzhen_res_norm/fold1/shenzhen_fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./shenzhen_res_norm/fold2/shenzhen_fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./shenzhen_res_norm/fold3/shenzhen_fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./shenzhen_res_norm/fold4/shenzhen_fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./shenzhen_res_norm/fold5/shenzhen_fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='/mnt/usb3/beijing2/beijing2_lmdb_norm.csv'
# TEST_CSV_PATH='/mnt/usb3/beijing2/beijing2_norm_90.csv'
# LMDB_DIR="../scripts/lmdb_dir_beijing2_norm"
# # LMDB_DIR="../scripts/lmdb_dir_shenzhen_nonorm" # no norm

# MODEL_PATH='./model_res/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing2_res_norm/fold1/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing2_res_norm/fold2/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing2_res_norm/fold3/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing2_res_norm/fold4/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./beijing2_res_norm/fold5/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='../scripts/csv_path/stanford_norm177.csv'
# LMDB_DIR="../scripts/lmdb_dir_stanford_norm"

# MODEL_PATH='./model_res/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./stanford_res_norm/fold1/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./stanford_res_norm/fold2/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./stanford_res_norm/fold3/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./stanford_res_norm/fold4/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# MODEL_PATH='./model_res/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./stanford_res_norm/fold5/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='../scripts/csv_path/stanford_norm177.csv'
# LMDB_DIR="../scripts/lmdb_dir_stanford_norm"

# MODEL_PATH='./model_res/fold1/resnet34.pth'
# MODEL_PATH='./model_res_75/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/tcga_res/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold2/resnet34.pth'
# MODEL_PATH='./model_res_75/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/tcga_res/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold3/resnet34.pth'
# MODEL_PATH='./model_res_75/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/tcga_res/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold4/resnet34.pth'
# MODEL_PATH='./model_res_75/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/tcga_res/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold5/resnet34.pth'
# MODEL_PATH='./model_res_75/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/tcga_res/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='../scripts/csv_path/beijing_slide_path_fold.csv'
# LMDB_DIR='../lmdb_dir_external/lmdb_dir_beijing_norm'
# # MODEL_PATH='./model_res/fold1/resnet34.pth'
# MODEL_PATH='./model_res_75/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing_res/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold2/resnet34.pth'
# MODEL_PATH='./model_res_75/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing_res/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold3/resnet34.pth'
# MODEL_PATH='./model_res_75/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing_res/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold4/resnet34.pth'
# MODEL_PATH='./model_res_75/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing_res/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold5/resnet34.pth'
# MODEL_PATH='./model_res_75/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing_res/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='../scripts/csv_path/jiangsu.csv'
# LMDB_DIR='../lmdb_dir_external/lmdb_dir_jiangsu_norm'
# # MODEL_PATH='./model_res/fold1/resnet34.pth'
# MODEL_PATH='./model_res_75/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/jiangsu_res/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold2/resnet34.pth'
# MODEL_PATH='./model_res_75/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/jiangsu_res/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold3/resnet34.pth'
# MODEL_PATH='./model_res_75/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/jiangsu_res/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold4/resnet34.pth'
# MODEL_PATH='./model_res_75/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/jiangsu_res/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold5/resnet34.pth'
# MODEL_PATH='./model_res_75/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/jiangsu_res/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='../scripts/cptac_res/tmp4.csv'
# LMDB_DIR="../scripts/lmdb_dir_cptac_norm"
# # MODEL_PATH='./model_res/fold1/resnet34.pth'
# MODEL_PATH='./model_res_75/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/cptac_res/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold2/resnet34.pth'
# MODEL_PATH='./model_res_75/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/cptac_res/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold3/resnet34.pth'
# MODEL_PATH='./model_res_75/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/cptac_res/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold4/resnet34.pth'
# MODEL_PATH='./model_res_75/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/cptac_res/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold5/resnet34.pth'
# MODEL_PATH='./model_res_75/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/cptac_res/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='../scripts/csv_path/shenzhen_norm_foreval.csv'
# LMDB_DIR="../scripts/lmdb_dir_shenzhen_norm"
# # MODEL_PATH='./model_res/fold1/resnet34.pth'
# MODEL_PATH='./model_res_75/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/shenzhen_res/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold2/resnet34.pth'
# MODEL_PATH='./model_res_75/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/shenzhen_res/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold3/resnet34.pth'
# MODEL_PATH='./model_res_75/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/shenzhen_res/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold4/resnet34.pth'
# MODEL_PATH='./model_res_75/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/shenzhen_res/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold5/resnet34.pth'
# MODEL_PATH='./model_res_75/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/shenzhen_res/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV


# TEST_CSV_PATH='/mnt/usb3/beijing2/beijing2_norm_90.csv'
# LMDB_DIR="../scripts/lmdb_dir_beijing2_norm"
# # MODEL_PATH='./model_res/fold1/resnet34.pth'
# MODEL_PATH='./model_res_75/fold1/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing2_res/fold1.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold2/resnet34.pth'
# MODEL_PATH='./model_res_75/fold2/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing2_res/fold2.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold3/resnet34.pth'
# MODEL_PATH='./model_res_75/fold3/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing2_res/fold3.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold4/resnet34.pth'
# MODEL_PATH='./model_res_75/fold4/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing2_res/fold4.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV

# # MODEL_PATH='./model_res/fold5/resnet34.pth'
# MODEL_PATH='./model_res_75/fold5/resnet34.pth'
# K=50
# BS=1
# OUTPUT_CSV='./75_res/beijing2_res/fold5.csv'


# python test.py \
#     --test_csv_path $TEST_CSV_PATH \
#     --lmdb_dir $LMDB_DIR \
#     --model_path $MODEL_PATH \
#     --k $K \
#     --batch_size $BS \
#     --output_csv $OUTPUT_CSV
