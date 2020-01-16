clear
echo "-------------------------------------------------------------------------------"
echo "This machine is $(hostname)."
echo "$(last | awk '{print $1}' | sort -u | head -n -2 | wc -l) users have logged into $(hostname) since $(last | tail -n 1 |  awk $'{print $3" " $4" " $5 }'
); they are:"
echo "$(last -w | head -n -2 | awk '{print $1}' | sort -u | paste -s -d ',' )."
echo "$(hostname | sed 's/.*/\u&/') is at the IP Address $(hostname -I) and is running$(hostnamectl | head -n -2 | tail -n -1 | sed 's/\://g')."
echo "You are $(echo $USER), and you have logged in $(last -F |grep $USER |wc -l) times since $(last | tail -n 1 |  awk $'{print $3" " $4" " $5 }'
)."
echo "-------------------------------------------------------------------------------"
