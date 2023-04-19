FROM tensorflow/tensorflow:latest-gpu
RUN pip3 install --upgrade pip
COPY . /tmp_board_ocr/
RUN pip install -r /tmp/requirements.txt


# Jupyter Notebookのポート番号
EXPOSE 8888

# JupyterLabを起動
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "--NotebookApp.token=''"]
