
#This function combines the commands mkdir and cd into one function
mkcd(){
#Test to make sure directoryname doesn't already exist
if [[ ! -d $(pwd)$1 ]]
	then	
		mkdir $1 && cd $1
		echo "Created directory: " $(pwd) 
	else
		echo "Directory" $1 "already exists!"
	fi
}
