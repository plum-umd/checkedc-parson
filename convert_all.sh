CCONV=/Users/mwh/checkedc/checkedc-clang/llvm/cmake-build-debug/bin/CConvertStandalone
INCLUDES=/Users/mwh/checkedc/checkedc/include
BASEDIR=.

# -dump-stats \
# -dump-intermediate \

CPATH=$INCLUDES $CCONV \
-output-postfix=checked \
-alltypes \
-extra-arg-before=-Wall \
-extra-arg-before=-Wextra \
-extra-arg-before=-std=c99 \
-extra-arg-before=-pedantic-errors \
-base-dir="$BASEDIR" \
$BASEDIR/tests.c \
$BASEDIR/parson.c
