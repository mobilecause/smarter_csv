# the following extension for class Hash is needed (from Facets of Ruby library):

class Hash
  def self.zip(keys,values) # from Facets of Ruby library
    if self.respond_to? :to_h
      (keys.zip(values)).to_h
    else
      Hash[*(keys.zip(values)).flatten]
    end
  end
end
