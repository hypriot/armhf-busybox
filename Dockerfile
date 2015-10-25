FROM armbuild/busybox
COPY etc/group /etc/group
COPY etc/passwd /etc/passwd
RUN mkdir -f /tmp && mkdir -f /var
