# frozen_string_literal: true

module Response
  extend ActiveSupport::Concern

  def res(resources, as: "Base", root: "data")
    serializer = serializer_class(resources, as)
    
    if serializer
      render json: resources, each_serializer: serializer, root: root
    else
      render json: { "#{root}": resources }
    end
  end

  private

  def serializer_class(resources, as)
    klass = if resources.is_a?(ActiveRecord::Relation)
              resources.first.class
            elsif resources.is_a?(ActiveRecord::Base)
              resources.class
            end
    return unless klass

    "#{klass}::#{as}Serializer".constantize
  end
end
