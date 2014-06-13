scrot -s
scp *.png root@107.170.117.30:/var/cafedaydream/
filename=`ls *.png`
echo "http://cafedaydream.com/$filename" | xclip -sel clip
rm *.png
