FROM scratch
ADD x86_64/306797ab68f340e8d62936e4f21818d9d4561ff850adf5a02159816066760e43.tar.xz /
ADD x86_64/54710bcb52ddfc12ee8881fc22d07f392bc293cb92f1de74a0ce173991af31de.tar.xz /
ADD x86_64/9b192adb86cd4ac41fedff66d83641b110f869244cd744370ed862fdbfd6b17b.tar.xz /
ADD x86_64/b91bca703c1f7a820c7356309f16f6a0b6a973b290ad0c598f9add8c9f302fc7.tar.xz /
ADD x86_64/ca3aa0c5d1881ba1c5140615b16df6041716330c2f32dcad921b7b2c7276c2a1.tar.xz /
ADD x86_64/dc1014ccd0b012d1dd771e98be2c21303cd554127243c28ea3ceb0ec75216a9e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
