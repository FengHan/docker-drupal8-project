CURRENT_DIRECTORY := $(shell pwd)

start:  
@fig up -d

clean:  
@fig rm --force

stop:  
@fig stop

status:  
@fig ps

cli:  
@fig run --rm web bash

log:  
@tail -f logs/nginx-error.log

cc:  
@fig run --rm web drush cc all

restart:  
@fig stop web
@fig start web
@tail -f logs/nginx-error.log

.PHONY: clean start stop status cli log cc restart
