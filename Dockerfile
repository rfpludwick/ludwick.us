# Use image with ruby, Node.js, npm, and yarn
FROM timbru31/ruby-node:latest

# Grab dependencies
WORKDIR /app
COPY . /app

# Install nodemon and webrick
RUN npm install --global nodemon
RUN bundle add webrick

# Expose port 4000
EXPOSE 4000

# Start jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--livereload", "--open-url", "--host", "0.0.0.0"]
