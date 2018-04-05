exitstatus() {
	if [[ $? == 0 ]]; then
		echo '✔'
	else
		echo '✘'
	fi
}

PS1='\t \u@\h:\W \$ $(exitstatus) '
alias ls='ls -al'
