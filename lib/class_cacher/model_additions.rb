module ClassCacher
  module ModelAdditions
    def unique_class_cache
      after_create :flush_unique_class_cache_key
      after_update :flush_unique_class_cache_key  
      after_destroy :flush_unique_class_cache_key      

    private
      def flush_unique_class_cache_key
        Rails.cache.delete(["cached_unique_class_cache_key", self.class.name])
      end

      def self.unique_class_cache_key
        max_updated_at        = self.pluck("MAX(updated_at)").first.to_s
        parsed_max_updated_at = "#{ max_updated_at.present? ? DateTime.parse(max_updated_at).utc.to_s(:number) : nil }"
        count                 = self.count

        
        Digest::SHA1.hexdigest "#{ [parsed_max_updated_at, self.name, count] }"
      end

      def self.cached_unique_class_cache_key
        Rails.cache.fetch(["cached_unique_class_cache_key", self.name]) { self.unique_class_cache_key }
      end
    end
  end
end
