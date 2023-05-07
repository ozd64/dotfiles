source ~/.config/fish/git_utility.fish

if status is-interactive
    set fish_greeting # Remove fish greeting
    
    # Extending PATH variable
    fish_add_path . # Always add the current folder into the path
    fish_add_path ~/bin
    
    #Add Abbreviations
    abbr gs git status
    abbr gco git commit
    abbr gaa git add .
    abbr el exa -lah
    abbr gb git allBranches
    abbr gp git push
    abbr t tmux attach
    abbr tm-ls tmux ls
    
    # Add aliases for common ops.
    alias dotfiles='cd ~/.dotfiles'
    alias dev-rust='cd ~/dev/project/rust'
    alias dev-java='cd ~/dev/project/java'
    alias dev-elixir='cd ~/dev/project/elixir'
end
