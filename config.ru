require 'rubygems'
require 'bundler/setup'

require 'models'
require 'routes'
require 'bowtie'

map "/check" do
  run Prey::Standalone
end

map "/" do
  BOWTIE_AUTH = {:user => 'admin', :pass => 'secret'}
  run Bowtie::Admin
end
