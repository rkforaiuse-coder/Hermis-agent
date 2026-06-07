FROM node:20-slim
RUN apt-get update && apt-get install -y curl bash git python3 make g++ && rm -rf /var/lib/apt/lists/*
RUN npm install -g git+https://github.com/NousResearch/Hermes-Agent.git --unsafe-perm
EXPOSE 10000
CMD ["hermes", "gateway", "start"]
