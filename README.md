# E-learning Platform
An e-learning platform built with Ruby on Rails, PostgreSQL and Docker.

# Requirements
- Docker: https://docs.docker.com/
- Rails: https://guides.rubyonrails.org/install_ruby_on_rails.html
- Docker compose: https://docs.docker.com/compose/install/

# Getting started
## Development setup
### 1. Clone repository
```
git clone https://github.com/nguyenxuanhung2304/e-learning.git
cd e-learning/
```

### 2. Environment setup
Copy the `env.example` file to `.env` file
```
cp env.example .env
```
Update environment variables in `.env` file

### 3. Build and start containers
#### 3.1 Basic
```
# Stop containers if running
docker-compose down

# Build images
docker-compose build

# Create and migrate database
docker-compose run web rails db:create
docker-compose run web rails db:migrate

# Start application
docker-compose up -d

# Check containers status
docker ps
```

#### 3.2 Useful command
```
# View logs
docker-compose logs -f web

# Access Rails console
docker-compose exec web rails c

# Run tests
docker-compose exec web rspec

# Restart application
docker-compose restart web
```
