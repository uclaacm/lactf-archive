FROM nginx:alpine

# Install required packages for logging
RUN apk add --no-cache curl

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Create directory for logs
RUN mkdir -p /var/log/nginx

# Configuration for Nginx
# RUN echo 'log_format detailed_log escape=json '\
#     '"time_local":"$time_local", '\
#     '"remote_addr":"$remote_addr", '\
#     '"remote_user":"$remote_user", '\
#     '"request":"$request", '\
#     '"status":"$status", '\
#     '"body_bytes_sent":"$body_bytes_sent", '\
#     '"http_referer":"$http_referer", '\
#     '"http_user_agent":"$http_user_agent", '\
#     '"request_body":"$request_body", '\
#     '"response_body":"$response_body"';' > /etc/nginx/conf.d/log_format.conf


EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]