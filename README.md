# Ruby Project Creation Script
This is a simple shell script that automates the process of creating a new Ruby project and initializing Git repository.



## Requirements 
1. Git installed on your system
2. Ruby installed on your system


## Usage
1. Clone this repository or download the `ruby_project_make.sh` script.

2. Open a terminal and navigate to the directory where you want to create your project.

3. Place `ruby_project_make.sh` script in that directory 

4. Run the script using one the following commands:
    
    **i.** If you want to create using an argument for the project name, 
     run the following command:

    ```
    sh /path/to/ruby_project_make.sh project_name

    ```
    **or**
    
    **i.** If you want to create using a prompt for the project name, run the following command:

    ```

    sh /path/to/ruby_project_make.sh

    ```

    **ii.** Follow the prompt to enter your `project name`

### Following actions will then happen:
1. The script will create a new directory named with `project_name` 
2. Initialize a Git repository 
3. Set repository branch to `main`
4. Create a `README.md` file with the `project name` as its contents.
5. Create a empty `LICENCE` file.
6. Create a `.gitignore` file
7. Create a empty ruby file with the name `project_name.rb`

You can start working on your project by opening the project directory in your favorite code editor.

## License
This script is released under the MIT License. Feel free to modify and use it however you like.
