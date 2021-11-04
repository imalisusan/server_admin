# Simple for loop

names="Brad Kevin Alice Mark"
for name in $names
    do 
        echo "Hello $name"
done

# for loop to rename files
files=$(ls *.txt)
new="new"
for file in $files
    do
        echo "Renaming $file to new-$file"
        mv $file $new-$file
done