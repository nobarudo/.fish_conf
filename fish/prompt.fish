set normal (set_color normal)
set blue (set_color blue)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

function fish_prompt
	set -l last_status $status
  # User
  set_color green
  echo -n (whoami)
  set_color normal

  echo -n '@'

  # Host
  set_color $fish_color_host
  echo -n (hostname -s)
  set_color normal

  echo -n ' :'

  # PWD
  set_color yellow
  echo -n (prompt_pwd)
  set_color normal

  __terlar_git_prompt
  #printf '%s ' (__fish_git_prompt)
  #set_color normal
  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '--> '
  set_color normal
end
