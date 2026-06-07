FROM node:20

# वर्क डिरेक्टरी तयार करणे
WORKDIR /usr/src/app

# अधिकृत पॅकेज थेट npm वरून इन्स्टॉल करणे
RUN npm install -g @nousresearch/hermes-agent-cli --unsafe-perm

# Render च्या फ्री सर्व्हरला जिवंत ठेवण्यासाठी डमी पोर्ट
EXPOSE 10000

# गेटवे थेट सुरू करण्याची अचूक कमांड
CMD ["hermes", "gateway", "start"]
