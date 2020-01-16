baseDir="/mnt/c/splee"
binDir="$baseDir/bin"
inDir="$baseDir/in/"
outDir="$baseDir/out/"
spleeter="$binDir/speel.py"

lockFile="$binDir/lockfile"


cd $binDir

if test -f "$lockFile"; then
	echo "LockFile exists. Exiting"
	exit
else
	touch $lockFile
fi


inFiles=$(find $inDir -type f -name "*.mp3")

OIFS="$IFS"
IFS=$'\n'

for file in $inFiles;do
	echo $file
	python3 $spleeter $file $outDir
	rm $file
done

IFS="$OIFS"

rm $lockFile
