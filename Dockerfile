# Stage 1: Build stage
FROM node:20-alpine AS build-stage
WORKDIR /app

COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Production stage
FROM nginx:alpine AS production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY --from=build-stage /app/nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]