class User < ActiveRecord::Base
  extend ClassCacher::ModelAdditions
  unique_class_cache
  flush_unique_class_cache_key
  self.unique_class_cache_key
  self.cached_unique_class_cache_key
end
