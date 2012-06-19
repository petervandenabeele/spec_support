class Hash

  def delete_nil_values
    self.dup.delete_if{|key,val| val.nil?}
  end

end

class Object

  def factory_hash(m)
    m.attributes.delete_nil_values
  end

end
