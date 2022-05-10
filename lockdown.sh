URL="https://raw.githubusercontent.com/BastianAsmussen/Lockdown/main/Value.txt" # 0 = off, 1 = on

echo "Checking GitHub..."
echo "($URL)"

curl -s -L $URL > Value.txt

VALUE=$(head -n 1 Value.txt)

if [ $VALUE = "1" ]
then

    echo "Lockdown is enabled."
fi

sleep 5s