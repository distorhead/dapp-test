cookbook_file "/#{cookbook_name.to_s.tr('-', '_')}_before_setup.txt" do
  source 'baz.txt'
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

template '/baz.txt' do
  require 'securerandom'
  source 'baz.txt.erb'
  variables(var: SecureRandom.uuid)
end
