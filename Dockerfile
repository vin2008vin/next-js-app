FROM node 20-alpine

WORKDIR /app

COPY package*.json ./

RUN npn install

COPY . .
RUN npn run build
EXPOSE 3000
CMD ["npm", "start"]


