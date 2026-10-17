# 1. Use an official Python runtime as a parent image
FROM python:3.12-slim

# 2. Add an environment variable that requires a build argument
ARG BUILD_ENV=production
ENV APP_ENV=$BUILD_ENV

# 3. Set the working directory
WORKDIR /app

# 4. Layer that pip installs the requirements file FIRST (for caching)
COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Layer that copies the REST of the code files
COPY src/ .

# 6. Run the app
CMD ["python", "app.py"]
