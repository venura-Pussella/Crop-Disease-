# Use TensorFlow Serving as the base image
FROM tensorflow/serving

# Set the working directory
WORKDIR /Potato-Disease-Detection-Project

# Copy the project files into the container
COPY . /Potato-Disease-Detection-Project

# Expose the REST API port
EXPOSE 8601

# Define the command to run TensorFlow Serving
CMD ["tensorflow_model_server", 
     "--rest_api_port=8601", 
     "--model_config_file=/Potato-Disease-Detection-Project/models.config"]

