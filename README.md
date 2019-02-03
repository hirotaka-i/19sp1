# STAT115_HSPH
## System
### Start docker 
	docker run -d -p 8787:8787 -v /c/Users/Hirotaka/Downloads/STAT115:/home/rstudio/test -e PASSWORD=test --name rstudio rocker/rstudio

### Install required in the container
	docker exec -it a196 /bin/bash
	sudo apt-get update
	sudo apt-get install -y libz-dev # for "affy"
	apt-get install -y libxml2-dev # for "sva"
	apt-get install -y libpython3-dev # for "reticulate"
	sudo apt install -y python3-pip # pip
	pip3 install numpy

### Allocate more memory
The default 1G memory is not enough. Allocate more in VM virtual box