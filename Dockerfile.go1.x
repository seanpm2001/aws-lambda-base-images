FROM scratch

ADD 1f61be29f0734ecc9e9962d7b6aa8cb565d45992806717becba4bda0ec2a0568.tar.xz /
ADD 3f1d476f1a20513d618d2eeb268aeb5920c6398e89c39fe9863abf19f7728598.tar.xz /
ADD 763364d980987f6515539be14640f6196ae48cab719c0bbcdeb0da391a5dc0a9.tar.xz /
ADD 7b05dd77ba2396743a9214ceec017cdbc1a0281be02ed052dc12b4bba9195f2d.tar.xz /
ADD 8e84a52b642a06475bc96da4253aa1be0dfd79fa15e2837c0858178822fdb2f4.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
