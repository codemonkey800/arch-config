function exists -d 'Silent wrapper over "type". Returns the status of the command'
    if test (count $argv) -gt 0
        type $argv[1] > /dev/null ^ /dev/null
    else
        echo 'You need to specify a command.'
        return -1
    end
end

