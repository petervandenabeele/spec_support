class Hash

  def delete_nil_values
    self.dup.delete_if{|key,val| val.nil?}
  end

end

module SpecSupport

  def self.present_attributes(m)
    m.attributes.delete_nil_values
  end

end
