rand=$(curl -s -X GET "https://www.random.org/integers/?num=1&min=1&max=$1&col=1&base=10&format=plain&rnd=new")
notify-send "Random Number: $rand"
eww close rng
