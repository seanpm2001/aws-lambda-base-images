FROM scratch

ADD 0612c88bfb94d9cd718ad4aed08a46642e84ccaba6a3715436eaba9bf75d479a.tar.xz /
ADD 2f62a221f3b0849d4b0dcfd1cce453c4a526583d81d210cc4b854c2908b06402.tar.xz /
ADD 46c4c76b2dbcfe0600784abb408b99f0785ccf814ed6466549f45ccd517d2416.tar.xz /
ADD 8876be6236f77e29eadbe01a08164f80026691c259a9e80d1ec66bbe4df70911.tar.xz /
ADD b235f0379471cc5f5b02ca05e815d52bbb6f153d4296f648dcb5671f1f465009.tar.xz /
ADD d33d5fe8c63ffe204f26cee670e2f7eb712721cec6417ca69ab9456e91507416.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
