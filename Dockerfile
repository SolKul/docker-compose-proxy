FROM ubuntu:20.04
# If the proxy is properly written in the .env file, 
# following apt-get update will succeed
# RUN apt-get update
CMD ["/bin/bash"]