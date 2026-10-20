FROM ruby:3.4.5-slim

# Install system dependencies, Node.js, and Yarn
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    libyaml-dev \
    pkg-config \
    git \
    curl \
    shared-mime-info \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && corepack enable \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Pre-install bundler if needed
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy JavaScript package manifests and install frontend dependencies
COPY package.json yarn.lock* ./
RUN yarn install --frozen-lockfile || yarn install

# Copy the rest of the application code
COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
