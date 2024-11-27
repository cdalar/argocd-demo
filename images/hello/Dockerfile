# Use the official Golang image to build the application
FROM golang:1.23 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . .

# Build the Go web application
RUN go build -o web-app

# Use a smaller image for the runtime
FROM debian:bullseye-slim

# Set the working directory for the runtime image
WORKDIR /app

# Copy the built binary from the build stage
COPY --from=build /app/web-app .

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["./web-app"]
