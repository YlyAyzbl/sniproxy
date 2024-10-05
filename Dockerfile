FROM alpine:latest

# 安装 sniproxy
RUN apk add --no-cache sniproxy

# 创建配置目录
RUN mkdir -p /etc/sniproxy

# 暴露端口
EXPOSE 80 443

# 启动命令
CMD ["sniproxy", "-c", "/etc/sniproxy/sniproxy.conf", "-f"]

