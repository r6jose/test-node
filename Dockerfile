FROM node

RUN mkdir /usr/src/app
WORKDIR /user/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json /user/src/app/

RUN npm install

COPY . user/src/app/

EXPOSE 4000
CMD [ "npm", "start"]