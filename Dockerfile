FROM node:20

# वर्क डिरेक्टरी सेट करणे
WORKDIR /app

# पॅकेज इन्स्टॉल करणे
RUN npm install git+https://github.com/NousResearch/Hermes-Agent.git

# Render च्या फ्री सर्व्हरसाठी पोर्ट ओपन करणे
EXPOSE 10000

# नोड मॅनेजरचा (npm) वापर करून थेट पॅकेजमधील स्क्रिप्ट रन करणे
CMD ["npm", "run", "gateway"]
