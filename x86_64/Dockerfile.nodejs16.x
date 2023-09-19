FROM scratch

ADD 25e1190e32ce324370acd6a6e6119e3faf012631f753a4f63a50c590d13fc852.tar.xz /
ADD 306797ab68f340e8d62936e4f21818d9d4561ff850adf5a02159816066760e43.tar.xz /
ADD 92827487705675dd71775148d21782cd2e97cb8ddd59972ef7558ac8e087fe1a.tar.xz /
ADD a4b7e459fb691e8c5f5f7a7d2beeb91efb218c66a722ade7afedf9496528e20c.tar.xz /
ADD e82ae072587dde44758c160de1e09f1d045869615f3b1e236e65b6cc22b50417.tar.xz /
ADD ff779fd3fedb16b9de16e5e0ce83a8bc6af9e42e4a088277064d962e59a0a2d4.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
