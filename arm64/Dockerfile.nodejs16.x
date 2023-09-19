FROM scratch

ADD 1417e8aab52d3dc8fa1ce363046d51120d407a7853fe672356c38dce77e7f675.tar.xz /
ADD 211201fc7e5678fdab687aae359f8898afb285685a62340f3f557f87d7748e32.tar.xz /
ADD 3f970166ce121182840bfd191034cf0508aa6b3301a0d80313c9da7571b30913.tar.xz /
ADD 6b38ff8d8e067b275dc10af2c2756f3e3ffe277e819fabe3717c286b13c6013d.tar.xz /
ADD 8876be6236f77e29eadbe01a08164f80026691c259a9e80d1ec66bbe4df70911.tar.xz /
ADD fb7c736c61752b7e095cd1d4ae02f6102c77a862faeb11b475f49abdbc345030.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
