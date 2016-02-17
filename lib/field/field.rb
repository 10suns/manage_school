module Field
  include BasicFilter

  def self.field_type(klass, attr)
    if klass.reflect_on_belongs_to_class(attr).present?
      :belongs_to
    elsif klass.defined_enums[attr].present?
      :enum
    elsif klass.columns_hash[attr].present?
      klass.columns_hash[attr].type
    else
      :string
    end
  end

  def self.data_for_select(klass, attr)
    association = klass.reflect_on_belongs_to_class(attr)
    return [] if association.nil?
    if association.respond_to?(:list_for_select)
      association.list_for_select
    elsif association.new.attributes.include?('name')
      association.pluck(:name, :id)
    else
      raise MissingPrimaryNameException
    end
  end

  class MissingPrimaryNameException < StandardError
  end
end