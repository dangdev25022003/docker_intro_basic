# Sử dụng image chính thức của Node.js làm base image
FROM node:14

# Tạo thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# Cài đặt các phụ thuộc của ứng dụng
RUN npm install

# Sao chép mã nguồn ứng dụng vào thư mục làm việc
COPY . .

# Mở cổng 8080 để truy cập ứng dụng
EXPOSE 8080

# Chạy ứng dụng khi container khởi động
CMD ["node", "app.js"]