package 'git'

execute 'ssh_keyscan' do
  user 'vagrant'
  command 'ssh-keyscan -H github.com >> /home/vagrant/.ssh/known_hosts'
end

execute 'ssh_T' do
  command 'ssh -T git@github.com'
  ignore_failure true
end

