require 'class_cacher'
require 'class_cacher_active_record'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => File.dirname(__FILE__) + "/class_cacher_active_record.sqlite3")
load File.dirname(__FILE__) + '/support/schema.rb'
load File.dirname(__FILE__) + '/support/models.rb'
load File.dirname(__FILE__) + '/support/data.rb'
