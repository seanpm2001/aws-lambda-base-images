FROM scratch

ADD 3446d9a0c925ef861b860019cd4cdc25e1471909f9595fd70a3611b591512708.tar.xz /
ADD 421d4c3b453088a7610122358309a0175fb7603334608db4249b7ffbffabae40.tar.xz /
ADD 604138d65dbf898c5c9ec5973f08f40c69cb78a3185e998478b366001d97a422.tar.xz /
ADD 8876be6236f77e29eadbe01a08164f80026691c259a9e80d1ec66bbe4df70911.tar.xz /
ADD a1440fa4505d0add46a807124cd22ba9289a0a1e9c4788470b9f8bf27bc10653.tar.xz /
ADD afa75757f8b7ec0d1c590d50b5cbb2c1e873f999b8587dd9571d47dd78a36a66.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
