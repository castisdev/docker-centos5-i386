#!/bin/sh -e

pip2.7 install gcovr

wget http://google-styleguide.googlecode.com/svn/trunk/cpplint/cpplint.py
sed -i -e s/'\/usr\/bin\/python'/'\/usr\/local\/bin\/python2.7'/g cpplint.py
install cpplint.py /usr/local/bin/cpplint
rm -rf cpplint.py

