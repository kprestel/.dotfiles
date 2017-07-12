set fish_key_bindings fish_user_key_bindings

eval (thefuck --alias | tr '\n' ';')
eval (/usr/bin/python3.6 -m virtualfish auto_activation global_requirements projects)
. ~/z-fish/z.fish

if [ ! -f ~/.fish_launched ]
    touch ~/.fish_launched
    neofetch
    rm ~/.fish_launched
end

set -xg PYTHONDONTWRITEBYTECODE 1

set -g theme_display_docker_machine yes
set -g theme_display_exit_status yes

# set -g Z_SCRIPT_PATH ~/z-fish/z.fish


setenv SSH_ENV $HOME/.ssh/environment

function start_agent                                                                                                                                                                    
    echo "Initializing new SSH agent ..."
    ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
    echo "succeeded"
    chmod 600 $SSH_ENV 
    . $SSH_ENV > /dev/null
    ssh-add
end

function test_identities                                                                                                                                                                
    ssh-add -l | grep "The agent has no identities" > /dev/null
    if [ $status -eq 0 ]
        ssh-add
        if [ $status -eq 2 ]
            start_agent
        end
    end
end

if [ -n "$SSH_AGENT_PID" ] 
    ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test_identities
    end  
else
    if [ -f $SSH_ENV ]
        . $SSH_ENV > /dev/null
    end  
    ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test_identities
    else 
        start_agent
    end  
end
