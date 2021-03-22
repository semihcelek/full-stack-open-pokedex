FROM node:12-alpine 
# AS build

WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . . 
RUN npm run build

# FROM node:12-alpine 

# WORKDIR /usr/src/app
# RUN npm init -y && npm install express
# COPY --from=build /usr/src/app .

EXPOSE 5000

CMD ["node", "app.js" ]

