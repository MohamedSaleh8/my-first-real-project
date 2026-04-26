
#Builder
FROM node:18 AS builder
#working directory
WORKDIR /app
#copy required files
COPY package*.json .
#install dependencies
RUN npm install

#tiny image for others fi`
FROM node:18-alpine
#working directory - every stage has its own working directory
WORKDIR /app
#copy only the required files from builder stage
COPY --from=builder /app/node_modules ./node_modules
#copy the rest of the files
COPY server.js .

COPY views ./views
COPY package.json .
#port to expose
EXPOSE 4000
#command to run the application
CMD ["node","server.js"]
