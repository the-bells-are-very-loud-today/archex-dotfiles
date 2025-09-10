while true; do
	metadata=$(playerctl metadata -f "{{title}} - {{album}} - {{artist}}")
	echo $metadata
done
