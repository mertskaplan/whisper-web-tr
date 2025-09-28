# Temel image
FROM node:18

# Çalışma dizini
WORKDIR /app

# Dosyaları kopyala
COPY . .

# Bağımlılıkları yükle
RUN npm install

# Build al
RUN npm run build

# Serve yükle
RUN npm install -g serve

# Portu aç
EXPOSE 4173

# Container çalıştığında başlatılacak komut
CMD ["serve", "-s", "dist", "-l", "4173"]
