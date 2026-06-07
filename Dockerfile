FROM node:20-slim

# आवश्यक टूल्स आणि डिपेंडन्सीस इन्स्टॉल करणे
RUN apt-get update && apt-get install -y curl bash git python3 make g++ && rm -rf /var/lib/apt/lists/*

# Hermes Agent अधिकृत पॅकेज इन्स्टॉल करणे
RUN npm install -g @nousresearch/hermes-agent-cli --unsafe-perm

# Render ला फसवण्यासाठी आणि फ्री वेब सर्व्हर चालू ठेवण्यासाठी एक छोटा डमी पोर्ट ओपन करणे
EXPOSE 10000

# मुख्य गेटवे चालू करणे
CMD ["hermes", "gateway", "start"]
