file="/home/trayambrathore/Cronjob/pcDetails.txt"

echo "_________________$(date)_________________" >> "$file"
echo "CPU:" >> "$file"
top -bn1 | grep "Cpu" >> "$file"
echo "RAM: " >> "$file"
free -m >> "$file"
echo "Command History: " >> "$file"
$(history) >> "$file"

echo "" >> "$file"
