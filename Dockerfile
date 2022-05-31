FROM alpine
MAINTAINER LiXunHuan(lxh@cxh.cn)
# 创建工作目录，修改alpine源为中科大的源，安装必要工具
RUN mkdir -p /app && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
  apk update && \
  apk upgrade && \
  apk add ca-certificates && update-ca-certificates && \
  apk add --update tzdata && \
  rm -rf /var/cache/apk/*
WORKDIR /app
ENV TZ=Asia/Shanghai
EXPOSE 8080

