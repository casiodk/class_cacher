class User < ActiveRecord::Base
  extend ClassCacher::ModelAdditions
  unique_class_cache
end
