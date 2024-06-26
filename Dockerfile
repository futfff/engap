# Используем базовый образ Node.js
FROM node:latest

# Создаем рабочую директорию внутри контейнера
WORKDIR /usr/src/app

# Копируем файл package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем все остальные файлы в рабочую директорию
COPY . .

# Открываем порт 3000 для доступа к приложению
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm" , "run" , "dev"]