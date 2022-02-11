if grep -q WSL /proc/version;#If you're using WSL
then 
    #You will be given setup of X-server for WSL
    export DISPLAY="$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0"
    export LIBGL_ALWAYS_INDIRECT=
    #use hardware acceleration
    export LIBGL_ALWAYS_SOFTWARE=
fi
