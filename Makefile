# Thin wrapper around dashboard.sh, the launcher: `make dev` instead of
# `./dashboard.sh up`. `./dashboard.sh logs|update` have no target here; call
# the script directly.
#
# This file ships to every project wiki. The targets that create and sync
# project wikis live in meta.mk, which exists only in the meta repository.

.DEFAULT_GOAL := help

.PHONY: help dev down clean

help::
	@echo "make dev      start the dashboard release this wiki names (Docker), opens your browser"
	@echo "make down     stop the dashboard"
	@echo "make clean    remove what can be rebuilt (container, caches); never content"

dev:
	./dashboard.sh up

down:
	./dashboard.sh down

clean:
	./dashboard.sh clean

-include meta.mk
