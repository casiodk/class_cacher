module ClassCacher
  class Railtie < Rails::Railtie
    initializer 'class_cacher.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end
