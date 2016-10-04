function cd
  if [ -n $argv[1] ]
    builtin cd $argv[1]
    and ls -AF
  else
    builtin cd ~
    and ls -AF
  end
end

