require 'spec_helper'

class User < SuperModel::Base
  include ActiveModel::Callbacks
  extend ClassCacher::ModelAdditions
  unique_class_cache
end

describe ClassCacher::ModelAdditions do
  it 'generates a unique class cache key' do
    User.unique_class_cache_key.should_not be_nil
    User.unique_class_cache_key.should be_an_instance_of(String)
  end
end
