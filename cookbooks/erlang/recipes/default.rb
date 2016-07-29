apt_repository 'erlang_solutions_repo' do
  uri 'https://packages.erlang-solutions.com/ubuntu/'
  distribution 'trusty'
  components ['contrib']
  key 'https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc'
  action :add
end

execute 'apt-get -y update'
package 'erlang'
