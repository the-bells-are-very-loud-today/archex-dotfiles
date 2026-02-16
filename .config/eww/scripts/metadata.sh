while true; do
	metadata=$(playerctl  metadata -p ncspot -f "{{title}} - {{album}} - {{artist}}")
	echo $metadata
done
