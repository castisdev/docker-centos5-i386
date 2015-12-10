#!/bin/sh -e

pip2.7 install gcovr

wget https://github.com/google/styleguide/raw/gh-pages/cpplint/cpplint.py --no-check-certificate
sed -i -e s/'\/usr\/bin\/env python'/'\/usr\/bin\/env python2.7'/g cpplint.py
install cpplint.py /usr/local/bin/cpplint
rm -rf cpplint.py
