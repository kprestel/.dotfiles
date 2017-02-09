set fish_key_bindings fish_user_key_bindings

if [ ! -f ~/.fish_launched ]
    touch ~/.fish_launched
    neofetch
    rm ~/.fish_launched
end

set -xg PYTHONDONTWRITEBYTECODE 1

set -g Z_SCRIPT_PATH ~/z-fish/z.fish
