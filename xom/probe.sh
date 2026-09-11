set +e

MPK_XOM_SCOPE=main \
MPK_XOM_VERBOSE=1 \
LD_PRELOAD="/root/AsmXoM/xom/libmpk_xom.so" \
./probe read

echo "exit code: $?"