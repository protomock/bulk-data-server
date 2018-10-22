FROM synthea:latest

# Generate synthic data 
RUN ./run_synthea start -s 1233 -p 100 Texas Corpus Christi

FROM node:8

# Create the directory to hold the code inside image
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies using NPM
COPY package.json .
RUN npm install

# Bundle app source
COPY *.js /
COPY fhir /fhir
COPY static /static

# Import synthea data
RUN node import --input ./synthea/output/fhir

# Expose to the port your app uses
EXPOSE 9443

# Define the command to run your app using CMD
CMD ["npm", "start"]

