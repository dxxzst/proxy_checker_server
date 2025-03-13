# 使用官方 Node.js 镜像作为基础镜像
FROM node:16.15.0

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json
COPY package.json ./

# 安装依赖
RUN npm install

# 复制应用程序代码
COPY . .

# 暴露应用程序端口
EXPOSE 9527

# 启动应用程序
CMD ["node", "server.js"]