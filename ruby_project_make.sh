#! /bin/bash
# This script creates a directory structure for a Ruby project and creates the project files

create_project_files(){
    
    echo "Creating project files"
    git init
    git branch -M main
    touch .gitignore
    touch README.md
    echo "# $1" >> README.md
    touch LICENSE
    touch "$1.rb"
    echo "#!/usr/bin/env ruby" >> "$1.rb" # Shebang line
    chmod +x "$1.rb" # Makes the file executable
    echo "puts 'Henlo World'" >> "$1.rb" # I know its spelled wrong but I like it
    echo "Ruby Project $1 created"
}

# Check if project already exists last thing you want is to overwrite something important
project_exists(){
    if [ -d "$1" ]; then
        echo "Project $1 already exists please choose another name"
        exit
    fi
}

#Accept optional argument for project name
if [ $# -eq 1 ]; then # Basically allows you to pass in a parameter to the script or not
    pname=$1
    project_exists "$pname" # Check if project exists
    echo "Creating project $pname"
    echo "Creating directory structure"
    mkdir "$pname"

    cd "$pname" || echo "Failed " exit
    create_project_files "$pname"
else


read -p "Enter name of Ruby project to create:" pname
project_exists "$pname"
echo "Creating project $pname"
echo "Creating directory structure"
mkdir "$pname"


cd "$pname" || echo "Failed " exit

create_project_files "$pname"

fi