FROM flaskdemo
LABEL maintainer="maple7yuan@gmail.com"
COPY . src
RUN yum -y install epel-release
RUN yum -y install python-pip
WORKDIR /src
RUN pip install --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
EXPOSE 8081
ENTRYPOINT ["python", "./app.py"]

