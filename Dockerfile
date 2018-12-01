FROM synthea:latest

# Pass args during build
ARG DATA_CITY
RUN echo $DATA_CITY

# Generate synthic data 
RUN ./run_synthea -s 1233 -p 1000 Texas $DATA_CITY

RUN ls -la ..

FROM node:8

# Create the directory to hold the code inside image
RUN mkdir -p ../app
WORKDIR ../app

# Install app dependencies using NPM
COPY package.json .
RUN npm install

# Bundle app source
COPY *.js ./
COPY fhir ./fhir
COPY static ./static
COPY --from=0 /synthea/output/fhir ./output/

# Import synthea data
RUN node import --input ./output

# Expose to the port your app uses
EXPOSE 9443

# Define the command to run your app using CMD
CMD ["npm", "start"]

