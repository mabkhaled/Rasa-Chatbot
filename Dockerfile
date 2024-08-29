# Base image
FROM rasa/rasa:3.6.20-full

# Copy your Rasa project files to the Docker container
COPY . /app

# Set the working directory
WORKDIR /app

# Install any additional dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Rasa will run on
EXPOSE 5005

# Command to start Rasa
CMD ["run", "--enable-api", "--cors", "*", "--debug"]
