hostname = node['hostname']
file '/etc/motd' do
    content "Host Name is this : #{hostname}"
end