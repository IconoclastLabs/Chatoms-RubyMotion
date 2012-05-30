class Category
  attr_accessor :id, :name, :in_use

  def initialize(id, category_name)
    @id = id
    @name = category_name
    saved_pref = NSUserDefaults.standardUserDefaults.stringForKey(@name)
    if saved_pref
      @in_use = saved_pref.to_i.to_b?
    else
      @in_use = true
      self.save_preference
    end
  end

  def save_preference
    NSUserDefaults.standardUserDefaults.setObject(@in_use, forKey:@name)
    NSUserDefaults.standardUserDefaults.synchronize
  end
end

class Integer
  def to_b?
    !self.zero?
  end
end
