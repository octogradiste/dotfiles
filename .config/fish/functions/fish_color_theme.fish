set gray 666666

function fish_color_theme
  set --universal fish_color_normal          white               # default color
  set --universal fish_color_command         blue                # commands like echo
  set --universal fish_color_keyword         red                 # keywords like if - this falls back on the command color if unset
  set --universal fish_color_quote           green               # quoted text like "abc"
  set --universal fish_color_redirection     yellow              # IO redirections like >/dev/null
  set --universal fish_color_end             white               # process separators like ; and &
  set --universal fish_color_error           red                 # syntax errors
  set --universal fish_color_param           white               # ordinary command parameters
  set --universal fish_color_valid_path      white               # parameters that are filenames (if the file exists)
  set --universal fish_color_option          white               # options starting with “-”, up to the first “--” parameter
  set --universal fish_color_comment         brwhite             # comments like ‘# important’
  set --universal fish_color_selection       white               # selected text in vi visual mode
  set --universal fish_color_operator        white               # parameter expansion operators like * and ~
  set --universal fish_color_escape          white               # character escapes like \n and \x70
  set --universal fish_color_autosuggestion  $gray               # autosuggestions (the proposed rest of a command)
  set --universal fish_color_cancel          white               # the ‘^C’ indicator on a canceled command
  set --universal fish_color_search_match    --background $gray  # history search matches and selected pager items (background only)

  # Used for the default prompt
  # set --universal fish_color_cwd            white # the current working directory in the default prompt
  # set --universal fish_color_cwd_root       white # the current working directory in the default prompt for the root user
  # set --universal fish_color_user           white # the username in the default prompt
  # set --universal fish_color_host           white # the hostname in the default prompt
  # set --universal fish_color_host_remote    white # the hostname in the default prompt for remote sessions (like ssh)
  # set --universal fish_color_status         white # the last command’s nonzero exit code in the default prompt
end
