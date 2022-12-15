FROM node

COPY . /opt/alpha-test-1

EXPOSE 3000

WORKDIR /opt/alpha-test-1

RUN npm i

CMD ["node", "./src/index.js"]
