@ECHO OFF
rem Create virtual environment
python -m venv .venv
rem Active the created virtual environment
call .venv\Scripts\activate
python.exe -m pip install --upgrade pip

REM pip install -r requirements.txt
pip install torch==2.2.1+cu121 torchaudio==2.2.1+cu121 torch==2.2.1+cu121 torchvision==0.17.1+cu121 -f https://download.pytorch.org/whl/torch_stable.html

pip install -U openmim
mim install mmengine
mim install "mmcv>=2.0.0"
mim install mmdet
