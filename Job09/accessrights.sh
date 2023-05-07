#!/bin/bash
CSV_FILE="Shell_Userlist.csv"
while IFS=, read -r username password role; do
    if ! id "$username" >/dev/null 2>&1; then
        /usr/sbin/useradd -m -p "$(openssl passwd -1 "$password")" "$username"
	echo "Utilisateur $username créé."
    fi

    if [[ "$role" == "admin" ]]; then
	if ! groups "$username" | grep -q -w "sudo"; then
	    /usr/bin/usermod -aG sudo sudo "$username"
	    echo "Permissions de super-utilisateur accordées à $username."
	fi
    fi
done <"$CSV_FILE"
