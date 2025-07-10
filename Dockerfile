FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

# Install rollup and typescript globally to ensure build works
RUN npm install -g rollup typescript

COPY . .

# Build project
RUN npm run build

# Start server
CMD ["node", "dist/server.js"]
