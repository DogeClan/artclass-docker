FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    git \
    nodejs \
    npm

RUN git clone https://github.com/art-class/v4.git /app

WORKDIR /app

RUN npm install

CMD ["npm", "start"]
