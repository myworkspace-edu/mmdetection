@ECHO OFF
rem Create virtual environment "python311" by conda
call conda create --name python311 python=3.11 -y

rem Remote the virtual environment
rem conda deactivate
rem conda remove -n python311 --all



rem Active the created virtual environment
call conda activate python311

REM pip install -r requirements.txt

REM Install MMCV v1.7.2, PyTorch 2.1.0 with CUDA 12.1
REM pip install torch==2.1.0+cu121 torchaudio==2.1.0+cu121 torch==2.1.0+cu121 torchvision -f https://download.pytorch.org/whl/torch_stable.html
pip install torch==2.2.1+cu121 torchaudio==2.2.1+cu121 torch==2.2.1+cu121 torchvision==0.17.1+cu121 -f https://download.pytorch.org/whl/torch_stable.html

REM The latest version of MMCV: v1.7.2. Link: https://github.com/open-mmlab/mmcv/releases/tag/v1.7.2
pip install -U openmim
mim install mmcv==2.1.0
REM mim install mmcv-full==1.7.2
mim install mmengine==0.10.4
mim install mmdet==3.3.0
pip install -U sahi
