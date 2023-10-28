# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 aj180npr/item-app:v1

# Login ke Docker Hub
docker login

# Mengunggah image ke Docker Hub
docker push aj180npr/item-app:v1
