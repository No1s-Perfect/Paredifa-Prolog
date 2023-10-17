# Use the official SWI-Prolog base image
FROM swipl:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Prolog source files and modules into the container
COPY server.pl /app/server.pl
COPY modules /app/modules

# Expose the port your Prolog server will run on (replace 5000 with your desired port)
EXPOSE 9000

# Command to run your Prolog application when the container starts
ENTRYPOINT ["swipl"]
CMD ["/app/server.pl",  "--user=daemon", "--fork=false", "--port=9000"]

