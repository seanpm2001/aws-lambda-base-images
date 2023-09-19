FROM scratch

ADD 4de629af3a0a0765f8711bf93a8b5d3f9cc921503395b9032f4bbb71e836fa75.tar.xz /
ADD 8876be6236f77e29eadbe01a08164f80026691c259a9e80d1ec66bbe4df70911.tar.xz /
ADD 8cdac9985793f9d91708f8c46bff68b633234fdff57ec94b223a35b0841ecd14.tar.xz /
ADD d5883500aa09226a29c93820773d216aee2cc24c79b37229ffabd58653de4fac.tar.xz /
ADD e70da7f9c9902c92ba912fc1ad0137fc77e9b427d44f8d23744c4621eb5a8b30.tar.xz /
ADD e80e4f98ea3de4a177e7e5045054add3230d6691098bc9caee671277529ff0f8.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
