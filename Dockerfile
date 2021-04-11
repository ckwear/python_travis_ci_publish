FROM markcha/nuxt:core

# RUN npm i -g npm
# RUN npm i -g nuxt
# RUN npm i -g vue@2.6.12
# RUN npm i -g cross-env
# RUN apk update
# RUN apk upgrade
# RUN apk add git
# Create app directory
WORKDIR /app
# EXPOSE 3013
COPY . .

RUN npm install

RUN nuxt build

ENV NODE_ENV production
ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3013
CMD ["node", "server/index.js"]
