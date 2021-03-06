function g -d 'Wrapper over git' -w git
  set git '/bin/git'
  set email 'jeremyasuncion808@gmail.com'

  if test (uname) = 'Darwin'
    set git '/usr/local/bin/git'
  end

  if string match -qe ~/projects/postmates $PWD
    set email 'jeremy.asuncion@postmates.com'
  end

  if test ($git config --global user.email) != "$email"
    $git config --global user.email $email
  end

  $git $argv
end
