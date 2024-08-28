# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire book_catalog directory into the container
COPY book_catalog/ .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV DATABASE_URL=postgresql://sit722_part2_vishal_user:O1Iu7jx4qjVhSxjTXfKQR5eBCl3ldSEy@dpg-cr7aqgaj1k6c739o8th0-a.oregon-postgres.render.com:5432/sit722_part2_vishal

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]

