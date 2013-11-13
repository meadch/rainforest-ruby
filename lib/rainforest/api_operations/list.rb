module Rainforest
  module APIOperations
    module List
      module ClassMethods
        def all(filters={}, api_key=nil)
          response, api_key = Rainforest.request(:get, url, api_key, filters)

          # TODO(jon): Suggest an object attribute be returned instead of this.
          Util.convert_to_rainforest_object(response, api_key, class_name.downcase)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end