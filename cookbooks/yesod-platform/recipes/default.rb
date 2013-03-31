#
# Cookbook Name:: vagrant_main
# Recipe:: default

directory "/vagrant/www" do
  mode "0755"
end

execute "update-cabal" do
  command "cabal update"
  action :run
  ignore_failure true
end

execute "update-cabal-install" do
  command "cabal install cabal-install"
  action :run
  ignore_failure true
end

execute "install-yesod" do
  command "cabal install yesod-platform"
  action :run
  ignore_failure true
end
