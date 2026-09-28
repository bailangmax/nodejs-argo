FROM node:26-alpine

# 1. 显式指定正确的代码存放目录（例如 /app）
WORKDIR /app

# 2. 复制项目文件
COPY package*.json ./
RUN npm install
COPY . .

# 3. 设置启动命令
CMD ["node", "index.js"]
