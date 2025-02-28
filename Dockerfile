# Sử dụng image nginx cơ bản
FROM nginx:alpine

# Xóa file default của Nginx
RUN rm /usr/share/nginx/html/*

# Copy file index.html vào thư mục của Nginx
COPY index.html /usr/share/nginx/html/index.html
