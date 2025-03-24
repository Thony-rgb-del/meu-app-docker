# Usa a imagem oficial do Node.js como base
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos da aplicação para o container
COPY package.json package-lock.json ./
RUN npm install

COPY . .

# Expõe a porta em que a aplicação vai rodar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "server.js"]
  
