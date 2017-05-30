set SCRIPT = `/usr/sbin/lsof +p $$ | grep -oE /.\*my_test_project.cshrc`
set SCRIPTPATH = `dirname $SCRIPT`
setenv MY_TEST_PROJECT $SCRIPTPATH

### Paths ###

if ( $?PATH ) then
        setenv PATH $MY_TEST_PROJECT/bin:$PATH
else
    	setenv PATH $MY_TEST_PROJECT/bin
endif

### Python path
if ( $?PYTHONPATH ) then
        setenv PYTHONPATH $MY_TEST_PROJECT/python_dependencies:$PYTHONPATH
else
    	setenv PYTHONPATH $MY_TEST_PROJECT/python_dependencies
endif
