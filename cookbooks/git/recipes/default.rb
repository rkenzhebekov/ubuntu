package 'git'


execute 'ssh_keyscan' do
  command 'ssh-keyscan -H github.com >> ~/.ssh/known_hosts'
end

execute 'ssh_T' do
  command 'ssh -T git@github.com'
  ignore_failure true
end
