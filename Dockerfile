FROM ubuntu:20.04
RUN echo $HTTP_PROXY
# ここでプロキシのURL:PORTが表示されたら成功
CMD ["/bin/bash"]