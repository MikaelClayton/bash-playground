# Bash Script Cheat Sheet

- Create File with `touch`:
```bash 
touch filename.txt
```

- Make file executable with `chmod`:
```bash
chmod +x filename.txt
```

- Run file with `./`:
```bash
./filename.txt
```

- We Need to have the declaration of the interpreter at the top of the file get this by running: (should look like this /bin/bash)
```bash
which bash
```
- Take the output and add it to the top of the file with a `#!`(shebang):
```bash
#!/bin/bash
```

- Print to the console with `echo`:
```bash
echo "Hello World"
```

- Variables are declared with `=`: (convention is to use uppercase)
```bash
NAME="Mikael"
```

- Access the variable with `$`:
```bash
echo $NAME
```

- User input is taken with `read`:
```bash
read -p "Enter your name: " NAME
```

- If statements are declared with `if`:
```bash
if [ "$NAME" == "Mikael" ]
then
    echo "Your name is Mikael"
fi
```

- Else if is declared with `elif`:
```bash
if [ "$NAME" == "Mikael" ]
then
    echo "Your name is Mikael"
elif [ "$NAME" == "Bob" ]
then
    echo "Your name is Bob"
else
    echo "Your name is not Mikael or Bob"
fi
```

# COMPARISON OPERATORS
- eq - is equal to - `==`
- ne - is not equal to - `!=`
- gt - is greater than - `>`
- lt - is less than - `<`
- ge - is greater than or equal to - `>=`
- le - is less than or equal to - `<=`

# FILE CONDITIONS
- `-d file` True if the file is a directory
- `-e file` True if the file exists (Note that this is not particularly portable, thus `-f` is generally used)
- `-f file` True if the provided string is a file
- `-g file` True if the group id is set on a file
- `-r file` True if the file is readable
- `-s file` True if the file has a non-zero size
- `-u` True if the user id is set on a file
- `-w` True if the file is writable
- `-x` True if the file is an executable

# CASE STATEMENTS
- Case statements are declared with `case`:
```bash
case "$NAME" in
    "Mikael")
        echo "Your name is Mikael"
        ;;
    "Bob")
        echo "Your name is Bob"
        ;;
    *)
        echo "Your name is not Mikael or Bob"
        ;;
esac
```

- For loops are declared with `for`:
```bash
NAMES="Mikael Sarah Bob"
for NAME in $NAMES
    do
        echo "Hello $NAME"
done
```

- While loops are declared with `while`:
```bash
while [ condition ]
    do
        echo "Hello"
done
```

- Functions are declared with `function`:
```bash
function sayHello() {
    echo "Hello World"
}

sayHello
```

- Pass arguments to a function:
```bash
function greet() {
    echo "Hello, I am $1 and I am $2"
}

greet "Mikael" "23"
```
