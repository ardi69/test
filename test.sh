uname -a
echo find make
if [ -z "$MAKE" -a -x "$(which gnumake 2>/dev/null)" ]; then MAKE=$(which gnumake); fi
if [ -z "$MAKE" -a -x "$(which gmake 2>/dev/null)" ]; then MAKE=$(which gmake); fi
if [ -z "$MAKE" -a -x "$(which make 2>/dev/null)" ]; then MAKE=$(which make); fi
if [ -z "$MAKE" ]; then
	echo no make found
#	exit 1
fi
echo use $MAKE as make
export MAKE

echo find makeinfo
which makeinfo >/dev/null 2>&1 || { echo "Can't find makinfo. Please Install e.g. pacman -S texinfo";  }
which bison >/dev/null 2>&1 || { echo "Can't find bison. Please Install e.g. pacman -S bison";  }


#---------------------------------------------------------------------------------
# find proper gawk
#---------------------------------------------------------------------------------
if [ -z "$GAWK" -a -x "$(which gawk 2>/dev/null)" ]; then GAWK=$(which gawk); fi
if [ -z "$GAWK" -a -x "$(which awk 2>/dev/null)" ]; then GAWK=$(which awk); fi
if [ -z "$GAWK" ]; then
	echo no awk found
#	exit 1
fi
echo use $GAWK as gawk
export GAWK
