require "pry"

module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect {|a| a.name == name}
      # binding.pry
    end
  end

  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
end
