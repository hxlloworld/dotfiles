if status is-interactive
#	starship init fish | source    
	fastfetch --color '93' --logo-color-1 '93' --logo-color-2 '93'
# Commands to run in interactive sessions can go here
end
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
starship init fish | source

fish_add_path /home/michelle/.spicetify

