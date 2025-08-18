FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm install
EXPOSE 80
COPY . .
CMD ["npm", "test"]
