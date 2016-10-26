FROM node:6.9-onbuild

EXPOSE 3000

RUN npm run typings install
RUN npm run tsc
