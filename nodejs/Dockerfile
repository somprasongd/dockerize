FROM node:10-alpine AS builder

# Define working directory and copy source
WORKDIR /src
COPY . .
# Install dependencies and build whatever you have to build 
# (babel, grunt, webpack, etc.)
RUN npm install && npm run build

FROM node:10-alpine as base
ENV NODE_ENV=production
# RUN groupadd -r nodejs && useradd -m -r -g -s /bin/bash nodejs nodejs
# USER nodejs
WORKDIR /app
RUN mkdir -p logs
# Expose ports (for orchestrators and dynamic reverse proxies)
EXPOSE 3000

FROM base as final
# Install deps for production only
COPY ./package* ./
RUN npm install --production && \
  npm cache clean --force
# Copy builded source from the upper builder stage
COPY --from=builder /src/dist .

# Start the app
CMD ["node", "index.js"]