FROM node:20-slim

# 設定容器內的工作目錄
WORKDIR /usr/src/app

# 先複製 package*.json 進去安裝依賴
COPY package*.json ./
RUN npm install --only=production

# 複製其餘程式碼
COPY . .

# Cloud Run 預設會給 $PORT 環境變數，你的程式必須監聽它
EXPOSE 8090

# 啟動指令
CMD [ "node", "index.js" ]