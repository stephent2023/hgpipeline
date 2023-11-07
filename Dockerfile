# Use python as base image
FROM python:3.8
# Copy repo contents to image
 COPY . . 
# Install requirements
RUN pip install -r requirements.txt
# Set API key as env variable
ENV API_KEY ####################
# Expose the correct port
EXPOSE 8501
# Create an entrypoint
ENTRYPOINT ["streamlit", "run web_frontend.py"]
