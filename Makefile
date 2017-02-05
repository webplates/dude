# Setup environment
setup: build
	@mkdir -p var/
	@RAILS_ENV=production docker-compose run --rm errbit bundle exec rake db:seed

# Build the environment
build:
	@docker-compose build

# Start the environment
start:
	@docker-compose up -d

# Stop the environment
stop:
ifeq ($(FORCE), true)
	@docker-compose kill
else
	@docker-compose stop
endif

# Clean environment
clean: stop
	@rm -rf var/
	@docker-compose rm --force
	@docker network rm edde_public || true
	@docker network rm edde_internal || true

.PHONY: setup start stop clean
