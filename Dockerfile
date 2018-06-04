#基于基础镜像
FROM registry.cn-hangzhou.aliyuncs.com/sjq-study/python:3.6
#维护者
MAINTAINER 441452752@qq.com
#将当前目录下的文件全部复制到基础镜像的/usr/src/myapp目录下
COPY . /usr/src/myapp
#为后续的RUN,CMD,ENTRYPOINT指令配置工作目录
WORKDIR /usr/src/myapp

testbug

#指定启动容器时执行的命令--启动程序
CMD ["python", "test-auto-notify.py"]
