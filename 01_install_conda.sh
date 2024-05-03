# Create virtual environment "openmmlab" by conda

conda create --name openmmlab python=3.11 -y

rem Active the created virtual environment
conda activate openmmlab

call .venv\Scripts\activate

REM pip install -r requirements.txt
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121-
pip install torchvision==0.17.1+cu121 -f https://download.pytorch.org/whl/torch_stable.html
pip3 install torch==2.2.1+cu121 torchaudio==2.2.1+cu121 torch==2.2.1+cu121 torchvision==0.17.1+cu121 -f https://download.pytorch.org/whl/torch_stable.html

pip install -U openmim
mim install mmengine
mim install "mmcv>=2.0.0"
mim install mmdet
