FROM node:20

# वर्क डिरेक्टरी सेट करणे
WORKDIR /app

# थेट अधिकृत GitHub सोर्सवरून प्रोजेक्ट डिरेक्टरीमध्ये लोकल इन्स्टॉलेशन करणे
RUN npm install git+https://github.com/NousResearch/Hermes-Agent.git

# Render च्या फ्री सर्व्हरसाठी पोर्ट ओपन करणे
EXPOSE 10000

# लोकल बिन मधील मुख्य कमांड रन करणे
CMD ["npx", "hermes", "gateway", "start"]
