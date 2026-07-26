# =========================================
# Dockerfile - Docker Static Website Assignment
# Student: Nikhil Phogat | SAP ID: 500101978
# =========================================

# Use the lightweight official Nginx image (Alpine Linux base)
FROM nginx:alpine

# Metadata labels identifying the student and assignment
LABEL student="Nikhil Phogat"
LABEL roll_number="500101978"
LABEL assignment="Docker Static Website"

# Copy the static website files into Nginx's default web root
COPY website/ /usr/share/nginx/html/

# Document that the container listens on port 80
EXPOSE 80

# Nginx's base image already starts the server by default (CMD is inherited),
# so no CMD/ENTRYPOINT override is needed.
