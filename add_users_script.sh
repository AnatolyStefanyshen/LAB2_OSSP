users=("anatoliy" "user" "admin")

for user in "${users[@]}"; do
    if [ -d "/home/$user" ]; then
        echo "Каталог для користувача $user вже існує"
    else
        mkdir -p "/home/$user"
        adduser "$user"
        password=$(openssl rand -base64 12)
        echo "$password" > "/home/$user/password.txt"
        ssh-keygen -t rsa -b 2048 -f "/home/$user/.ssh/id_rsa" -N "" -q
        echo "Користувач $user створений"
    fi
done
