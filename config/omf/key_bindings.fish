bind -M insert -m jk default backward-char force-repaint

for mode in insert default visual
    bind -M $mode \cf forward-char
   end

bind \cr re_search
