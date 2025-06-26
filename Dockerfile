# Start from the official n8n Docker image
FROM n8nio/n8n:latest 

# Install FFmpeg
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*
    
# Switch back to the n8n default user
USER node
