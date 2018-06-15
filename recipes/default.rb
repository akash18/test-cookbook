chef_gem 'azure-storage-common' do
  version node['test']['azure_storage_gem_version']
  action :install
  compile_time true if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
end
