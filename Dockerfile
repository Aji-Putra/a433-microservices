# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di container
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan variabel lingkungan NODE_ENV dan DB_HOST
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk produksi dan build aplikasi
RUN npm install --production --unsafe-perm
RUN npm run build

# Ekspos port 8080
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
