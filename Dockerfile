FROM node:20

# आवश्यक टूल्स आणि पॅकेज ग्लोबल इन्स्टॉल करणे
RUN npm install -g git+https://github.com/NousResearch/Hermes-Agent.git --unsafe-perm

# Render च्या फ्री सर्व्हरसाठी पोर्ट ओपन करणे
EXPOSE 10000

# ग्लोबल इन्स्टॉलेशनच्या अचूक पाथवरून थेट गेटवे सुरू करणे
CMD ["/usr/local/bin/hermes", "gateway", "start"]
