@ECHO OFF
rem Create virtual environment "openmmlab" by conda
call conda create --name python311 python=3.11 -y

rem Active the created virtual environment
conda activate python311

pip install -r requirements.txt
pip install torch==2.2.1+cu121 torchvision==0.17.1+cu121 -f https://download.pytorch.org/whl/torch_stable.html


pip install -U openmim
mim install mmengine
mim install "mmcv>=2.0.0"
mim install mmdet
