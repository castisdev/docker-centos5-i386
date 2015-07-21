# Pull base image
FROM centos:centos5

# Install EPEL repo
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm

# Install
RUN yum install -y \
  sudo \
  wget \
  gcc \
  gcc-c++ \
  make \
  unzip \
  openssl \
  openssl-devel \
  git \
  cppcheck \
  subversion \
  boost-devel \
  glibc-devel \
  e2fsprogs-devel \
  gdb \
  valgrind; \
  yum -y clean all

ADD install_xercesc280.sh /script/
RUN /script/install_xercesc280.sh

ADD install_devtoolset2.sh /script/
RUN /script/install_devtoolset2.sh
ENV PATH /opt/rh/devtoolset-2/root/usr/bin/:$PATH

ADD install_boost158.sh /script/
RUN /script/install_boost158.sh
ENV BOOST_ROOT /usr/local/boost158

ADD install_python27.sh /script/
RUN /script/install_python27.sh

ADD install_python34.sh /script/
RUN /script/install_python34.sh

ADD install_cpptools.sh /script/
RUN /script/install_cpptools.sh

ADD install_cryptopp.sh /script/
RUN /script/install_cryptopp.sh

ADD install_cmake32.sh /script/
RUN /script/install_cmake32.sh

ADD install_gmock170.sh /script/
RUN /script/install_gmock170.sh

# Add root files
ADD .bashrc /root/.bashrc
ADD legacy_mode.sh /root/

# Set environment variables
ENV HOME /root

# Define default command
CMD ["bash"]

