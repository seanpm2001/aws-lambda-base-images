FROM scratch
ADD x86_64/2fa3ea3c00b6ecd4613f3ce3a572d1b79f9538290a853c6613839f180a371342.tar.xz /
ADD x86_64/306797ab68f340e8d62936e4f21818d9d4561ff850adf5a02159816066760e43.tar.xz /
ADD x86_64/5e8f8a606d71500e0b80579055b853ae6f1def4aad906cf7f90d38acb7ac45f3.tar.xz /
ADD x86_64/650ae99ec7392bbe7dcad2f41acb6011a59cbb5f2dfeb308ed8ac37784627ce7.tar.xz /
ADD x86_64/8015cc91053a45d53ed162f8dada72fc16e4bb0c49a01075631432e368976d06.tar.xz /
ADD x86_64/ed2fd0e99fae4d913f621f427429ebad206120affa9edc006aab982586b7deef.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
