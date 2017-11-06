set -x
set -e

echo "apt-getting packages"
while read -r package_name
do
    sudo apt-get install "$package_name"
done < apt-get.txt

touch DONE
