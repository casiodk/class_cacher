require 'spec_helper'

describe ClassCacher::ModelAdditions do
  it 'generates a unique class cache key' do
    User.unique_class_cache_key.should_not be_nil
    User.unique_class_cache_key.should be_an_instance_of(String)
  end

  it 'generates a new key on save' do
    User.create!(name: "John")
    first_key = User.unique_class_cache_key
    User.create!(name: "Johnny")
    User.unique_class_cache_key.should_not eq(first_key)
  end
end
