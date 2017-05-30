SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export MY_TEST_PROJECT=$SCRIPTPATH

## PATH

if [ -z ${PATH+x} ]; then
        export PATH=$MY_TEST_PROJECT/bin
else
    	export PATH=$MY_TEST_PROJECT/bin:$PATH
fi

## PYTHONPATH

if [ -z ${PYTHONPATH+x} ]; then
        export PYTHONPATH=$MY_TEST_PROJECT/lib
else
    	export PYTHONPATH=$MY_TEST_PROJECT/lib:$PYTHONPATH
fi
