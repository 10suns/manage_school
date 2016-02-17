module BasicFilter
  def self.edit_field_filter(attributes)
    ignored_fields = %w(id created_at updated_at)
    attributes - ignored_fields
  end

  def self.show_field_filter(attributes)
    ignored_fields = %w(id)
    attributes - ignored_fields
  end
end