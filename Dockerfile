# FROM python:3.13

# WORKDIR /usr/src/app

# # set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Upgrade pip and install dependencies efficiently
# RUN pip install --upgrade pip --no-cache-dir

# # Copy requirements file first to leverage Docker caching
# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy the rest of your project files
# COPY . .

FROM python:3.13

WORKDIR /usr/src/app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Upgrade pip and install dependencies efficiently
RUN pip install --upgrade pip --no-cache-dir

# Copy requirements file first to leverage Docker caching
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files
COPY . .

# Copy Server Key
COPY server.key /usr/src/app/

# Default command to run your honeypot
CMD ["python3", "basic_ssh_honeypot.py", "-p", "2222", "-b", "0.0.0.0"]
