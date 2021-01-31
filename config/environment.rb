require 'require_all'
require 'mongoid'

Mongoid.load!('config/mongoid.yml', :development)

require_all 'app'