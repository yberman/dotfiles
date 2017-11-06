set -x
set -e


apt-get -y update

echo "apt-getting packages"
while read -r package_name
do
    apt-get -y install "$package_name"
done < apt-get.txt

apt-get -y upgrade

touch DONE
