FROM docker.io/seapapa/btrfs:builder
ARG version
WORKDIR /root
RUN yumdownloader --source kernel-$version.x86_64
RUN rpm -i kernel-$version.src.rpm
WORKDIR /root/rpmbuild/SPECS
RUN rpmbuild -bc --target=`uname -m` kernel.spec
RUN ls ../BUILDROOT/kernel-$version.x86_64/usr/src/kernels/$version.x86_64/
WORKDIR /root/linux-btrfs-softlockup
#RUN git fetch amazonlinux --tags
RUN git checkout kernel-$version
RUN git config --global user.email "you@example.com"&& git config --global user.name "Your Name"
RUN git cherry-pick d149d8fdce9172cdfbb68ff564235513d
WORKDIR /root/linux-btrfs-softlockup/fs/btrfs
RUN make -C /root/rpmbuild/BUILDROOT/kernel-$version.x86_64/usr/src/kernels/$version.x86_64/ M=/root/linux-btrfs-softlockup/fs/btrfs  modules
RUN ls /root/linux-btrfs-softlockup/fs/btrfs/btrfs.ko  
