FROM scratch

ADD 306797ab68f340e8d62936e4f21818d9d4561ff850adf5a02159816066760e43.tar.xz /
ADD 608408f43a084795bc7226eb3c3e805c5db484f4df1043e0d7add6470cc330c4.tar.xz /
ADD 610bc9adb00bb088b12b2ff8b983944fd8613b788bb6bff6f8ba9f17f83c868d.tar.xz /
ADD 6d3b21dab7cda99a6eba898341f369c2d884df52c03947e115d3096c4cba3ca9.tar.xz /
ADD aed66449a54c2858da4369c2cc4183144719b370d719d048357df831338b6c08.tar.xz /
ADD fd46eaa04f559a8873028a9dcfb41e1f13ff1de37914f5f065fbacd232a14e1a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
