FROM node:20

# आवश्यक टूल्स इन्स्टॉल करणे
RUN apt-get update && apt-get install -y curl bash git

# थेट npm वरून अधिकृत hermes-agent CLI इन्स्टॉल करणे (हे Render वर परफेक्ट चालते)
RUN npm install -g @nousresearch/hermes-agent-cli || true

# बॉट चालू करण्याची कमांड
CMD ["hermes", "gateway", "start"]
