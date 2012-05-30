class Chatom
  attr_accessor :text, :category

  def initialize(text='Sample Text', category='Default Category')
    @text = text
    @category = category
  end
end
