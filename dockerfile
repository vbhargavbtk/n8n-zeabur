# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Expose the n8n port
EXPOSE 5678

# Start n8n

ENV N8N_PORT=8080
EXPOSE 8080
CMD ["n8n", "start"]
