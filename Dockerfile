FROM armbuild/busybox
COPY etc/group /etc/group
COPY etc/passwd /etc/passwd
COPY tmp /tmp
COPY var /var
