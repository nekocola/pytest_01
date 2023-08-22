FROM python:3.11.3
 
WORKDIR ./python_rds
 
ADD . .
RUN pip3 install -i https://mirrors.aliyun.com/pypi/simple --upgrade pip 
RUN pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple
RUN pip3 install -r requirements.txt
 
CMD ["python3", "./src/main.py"]
