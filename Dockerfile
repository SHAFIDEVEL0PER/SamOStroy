# Используем официальный образ Nginx
FROM nginx:alpine

# Удаляем дефолтную конфигурацию Nginx
RUN rm -rf /etc/nginx/conf.d/default.conf

# Копируем нашу конфигурацию
COPY nginx.conf /etc/nginx/conf.d

# Копируем файлы проекта в контейнер
COPY . /usr/share/nginx/html

# Открываем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]