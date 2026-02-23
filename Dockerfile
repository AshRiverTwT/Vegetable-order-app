FROM node:18-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --omit=dev

# Copy application code
COPY . .

# App listens on 3000
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
