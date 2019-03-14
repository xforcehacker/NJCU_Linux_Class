#1 Alternate to remove the rm command

alias rm = 'remove_all'

#2. Aliases for 3 directories..
alias bin = 'cd /bin'
alias desktop = 'cd ~/Desktop'
alias temp = 'cd /tmp'

#3. Function that prints function
add_a_user(){
	USER=$1
	PASSWORD=$2
	shift;shift; #shifting twice. 
	echo "Adding user......."
	echo useradd -c $USER
	echo passwd $USER $PASSWORD
	echo "added user $USER with $PASSWORD. "
}

echo "start of script.."
add_a_user chaitanya HelloWorldLinux

