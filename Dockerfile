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

# Copy entire project
COPY --chown=frappe:frappe . /home/frappe/frappe-bench/apps/webmax

# Rename erpnext folder to webmax for proper module import
RUN mv /home/frappe/frappe-bench/apps/webmax/erpnext /home/frappe/frappe-bench/apps/webmax/webmax 2>/dev/null || true

# Install the app
WORKDIR /home/frappe/frappe-bench/apps/webmax
RUN pip install -e .

# Expose port
EXPOSE 8000

USER frappe

# Start command
CMD ["bench", "start"]
