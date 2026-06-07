FROM node:20
RUN curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
CMD ["/root/.hermes/bin/hermes", "gateway", "start"]
