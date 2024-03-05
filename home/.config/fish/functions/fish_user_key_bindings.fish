function fish_user_key_bindings
  # The argument specifies the initial mode (insert, "default" or visual).
  fish_vi_key_bindings insert

  # Cleans up the written line
  bind -M insert \cc kill-whole-line repaint

  # Exits out of the current terminal session
  bind \cd 'exit'

  # Copy paste to system clipboard
  bind yy fish_clipboard_copy
  bind p fish_clipboard_paste
end

