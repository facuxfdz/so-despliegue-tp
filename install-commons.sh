#/bin/bash

rm -rf so-commons-library

git clone https://github.com/sisoputnfrba/so-commons-library

if cd so-commons-library && make install; then
    rm -rf so-commons-library
    echo "\033[1;32m so-commons-library installed successfully\033[0m"
else
    echo "\033[1;31m so-commons-library installation failed\033[0m"
fi