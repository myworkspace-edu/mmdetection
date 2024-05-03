mim download mmdet --config rtmdet_l_8xb32-300e_coco --dest ./checkpoints
cd demo
mkdir .\output
python video_demo2.py
