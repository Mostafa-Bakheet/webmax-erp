# WEBMAX ERP - Dockerfile for Railway Deployment
FROM frappe/erpnext:v15

USER root

# Set environment variables
ENV FRAPPE_APP_NAME=webmax
ENV DB_HOST=db
ENV DB_PORT=3306
ENV REDIS_CACHE_HOST=redis-cache
ENV REDIS_QUEUE_HOST=redis-queue
ENV REDIS_SOCKETIO_HOST=redis-socketio

# Create necessary directories
RUN mkdir -p /home/frappe/frappe-bench/sites /home/frappe/frappe-bench/logs

# Copy custom app
COPY --chown=frappe:frappe erpnext /home/frappe/frappe-bench/apps/webmax

# Install the app
RUN pip install -e /home/frappe/frappe-bench/apps/webmax

# Expose port
EXPOSE 8000

USER frappe

# Start command
CMD ["bench", "start"]
