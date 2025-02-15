# Use the official Ubuntu image as a base
FROM ubuntu:latest

# Copy the vulnerability scanning script into the container
COPY vulnerability_scan.sh /

# Make the script executable
RUN chmod +x /vulnerability_scan.sh

# Run the vulnerability scanning script
CMD ["/vulnerability_scan.sh"]
