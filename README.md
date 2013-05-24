tmuxBattery
===========

Script to get a Tmux battery indicator for laptops

* Showing percent and time left when on battery charge
* Showing only percent when plugged in

## Usage:
1. Put the script somewhere you can find it
2. Open your ~/.tmux.conf in your favorite editor
3. Paste the following lines at the end of the document: 

```bash
set -g status-right-length 50
set -g status-interval 2                           
set -g status-right "#[fg=blue,bg=black,bright]#(~/.tmux/battery.sh)#[default]"
```

where ~/.tmux/battery.sh is the path to the script
4. Kill Tmux by "killall tmux"
5. Start Tmux again
