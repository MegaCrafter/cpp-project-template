PROJECT_NAME = cppproj

buildall: cmake build

br: cmake build
	@echo "\033[1;32m==== RUNNING ====\033[0m"
	@./out/build/$(PROJECT_NAME)

cmake:
	@echo "\033[1;32m==== CMAKE STAGE =====\033[0m"
	@mkdir -p out/build
	@cd out/build; cmake ../..

build:
	@echo "\033[1;32m==== BUILD STAGE ====\033[0m"
	@cd out/build; make

.PHONY: buildall br cmake build
