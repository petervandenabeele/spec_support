class Hash

  def delete_nil_values
    self.dup.delete_if{|key,val| val.nil?}
  end

end
