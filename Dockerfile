FROM node:20.12

WORKDIR /

COPY . /BotsApp

WORKDIR /BotsApp

RUN #git init --initial-branch=multi-device

RUN #git remote add origin https://github.com/Prince-Mendiratta/BotsApp.git

RUN #git fetch origin multi-device

RUN #git reset --hard origin/multi-device

RUN yarn
RUN yarn add sqlite3

# RUN cp -r /root/Baileys/lib /BotsApp/node_modules/@whiskeysockets/baileys/

CMD [ "npm", "start"]