FROM scratch

ADD 071ed757f4fc75d36cc04957041b224ce95026fcb12e8faaaec5872defc98bd8.tar.xz /
ADD 306797ab68f340e8d62936e4f21818d9d4561ff850adf5a02159816066760e43.tar.xz /
ADD 53a5978225862b867ebf6cdd2835bfe2fa602802065378f04d9f0e32a9a79f35.tar.xz /
ADD 67aac35366102f22272e8f6c5103f3321b26f1a1845460f80e785c5d1cd2fe1e.tar.xz /
ADD 72de51b97cbc8d9911ea48c0c8d78ec4438b6a237ff0c1bb873dc9d6dd074cc8.tar.xz /
ADD e3f4bd36fb366e70f766dcf234b685156e7d24167cb8b88bec106759cf2bfefb.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
