#
# .profile for termux/Android
#
if [ "${0}" = "sh" -o "${0}" = "dash" -o "${0%/sh}" != "${0}" -o "${0%/dash}" != "${0}" ] ; then
  echo "------- loading .shrc from .profile"
  . ~/.shrc
fi

echo "------- loading .profile"

echo ------- exports
PATH="${HOME}/scheme/ts:${HOME}/tinyscheme-1.41:${HOME}/bin:${PATH}"
export PATH
LD_LIBRARY_PATH="${HOME}/empty:${HOME}/scheme/ts:${HOME}/tinyscheme-1.41:${PREFIX}/local/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH
SCHEME_LIBRARY_PATH="${HOME}/empty:${HOME}/scheme/ts:${HOME}/tinyscheme-1.41"
export SCHEME_LIBRARY_PATH
TINYSCHEMEINIT="${HOME}/scheme/ts/init.scm"
export TINYSCHEMEINIT
ENV="${HOME}/.shrc"
export ENV
echo "PATH=\"${PATH}\""
echo "LD_LIBRARY_PATH=\"${LD_LIBRARY_PATH}\""
echo "SCHEME_LIBRARY_PATH=\"${SCHEME_LIBRARY_PATH}\""
echo "TINYSCHEMEINIT=\"${TINYSCHEMEINIT}\""
echo "ENV=\"${ENV}\""

echo ------- remove "~" files
bak
#find -name "*~"
#find -name "*~" -print -delete
