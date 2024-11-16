FROM public.ecr.aws/docker/library/node:buster-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD ["node", "/submission-weshare-mvc/src/main/java/weshare/server"]
