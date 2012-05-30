class Categories
  attr_reader :category_list

  def initialize
    @category_list = []
    @categories = ["Normal", "Fun", "Philosophy", "Out There", "Love", "Naughty", "Personal"]
 
    self.load_categories
    self
  end

  def load_categories

    @categories.each_with_index do |category, index|
      @category_list.push(Category.new(index + 1, category))
    end
  end

  #create an array of what categories are live
  def live_list
    #filter for just the categories that are in use
    my_list = @category_list.select {|category| category.in_use}
    # pluck the ids
    my_list.map(&:id)
  end

  def category_name(id)
    @categories[id - 1]
  end
end
