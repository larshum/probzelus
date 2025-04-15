all:
	@echo "To build the probzelus, first install the zelus-owl package using opam:"
	@echo "    opam pin -n -k path zelus-libs"
	@echo "    opam install zelus-io zelus-owl zelus-owl-plplot"
	@echo "Then:"
	@echo "    make -C probzelus"


docker_build:
	docker build -t probzelus -f probzelus.docker .

docker_run:
	docker run -it --rm -v /home/lars/Documents/probzelus/workspace:/home/opam/workspace probzelus bash
