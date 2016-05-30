 
GPU_ID=1
NET_FINAL=output/faster_rcnn_end2end/vg_train/faster_rcnn_cap_rpn_no_reg_iter_200000.caffemodel
TEST_IMDB="vg_test"
PT_DIR="faster_rcnn_cap"
time ./lib/tools/test_net_cap_im_first.py --gpu ${GPU_ID} \
  --def_feature models/${PT_DIR}/vgg_region_feature_rpn_no_reg.prototxt \
  --def_recurrent models/${PT_DIR}/test_cap_pred.prototxt \
  --def_embed models/${PT_DIR}/test_word_embedding.prototxt \
  --net ${NET_FINAL} \
  --imdb ${TEST_IMDB} \
  --cfg models/${PT_DIR}/faster_rcnn_end2end.yml \