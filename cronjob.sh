file="/home/trayambrathore/Cronjob/pcDetails.txt"

echo "_________________$(date)_________________" >> "$file"
echo "CPU:" >> "$file"
top -bn1 | grep "Cpu" >> "$file"
echo "RAM: " >> "$file"
free -m >> "$file"
echo "Command History: " >> "$file"
$(history) >> "$file"

echo "" >> "$file"

#commiting and pushing changes
git add .
git commit -m "This is a automatic commit without cronjob at - $(date)"
git push origin main