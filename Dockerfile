FROM node:20

# वर्क डिरेक्टरी सेट करणे
WORKDIR /app

# पॅकेज इन्स्टॉल करणे
RUN npm install git+https://github.com/NousResearch/Hermes-Agent.git

# Render च्या फ्री सर्व्हरसाठी पोर्ट ओपन करणे
EXPOSE 10000

# थेट नोड मॉड्यूल्सच्या बाईनरी पाथवरून गेटवे सुरू करणे
CMD ["./node_modules/.bin/hermes", "gateway", "start"]
