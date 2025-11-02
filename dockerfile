# Use the official n8n Docker image as base
FROM n8nio/n8n:latest

# Set timezone
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Set environment variables for your setup
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_ENCRYPTION_KEY=supersecretkey
ENV N8N_HOST=vbhargavbtkn8n.zeabur.app
ENV WEBHOOK_URL=https://vbhargavbtkn8n.zeabur.app/
ENV N8N_PORT=8080
ENV EXECUTIONS_PROCESS=main

# Create a directory for persistent data
WORKDIR /home/node/.n8n

# Expose Zeabur's expected port
EXPOSE 8080

# Start n8n
CMD ["n8n", "start"]
