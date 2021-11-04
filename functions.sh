function sayHello()
{
    echo "Hello world"
}
sayHello

#Functions with params
function greet()
{
    echo "Hello, i am $1 and i am $2"
}
greet "Susan" "22"

#Create a folder and write to the file
mkdir hello 
touch "hello/world.txt"
echo "Hello world" >> "hello/world.txt"
echo "Created hello/world.txt"