IPv4=('10.0.1.1' '10.0.2.1' '10.0.3.1' '10.0.4.1' '10.0.5.1' '10.0.6.1' '10.0.7.1' '10.0.8.1' '10.0.9.1' '10.0.10.1' '10.0.11.1' '10.0.12.1')


ping_command='ping -c 5 -W 5'

check_if_up(){
ip=$1
$ping_command $ip
if $?; then 
    return 1
else
    return 0
fi
}
