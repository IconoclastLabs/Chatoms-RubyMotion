class Chatoms
  attr_reader :starters
  def initialize
    @starters = []
    self.load_starters
  end

  def load_starters
    @starters = []
    answerFile = NSBundle.mainBundle.pathForResource('starters', ofType:'json')
    string = String.new(NSString.stringWithContentsOfFile(answerFile))
    json = BubbleWrap::JSON.parse(string)
    json['starters'].each do |starter|
      @starters.push(Chatom.new(starter['text'],starter['starters_category_id']))
    end

    # now randomize it
    @starters.shuffle!
  end

  # grab 1
  def next_chatom
    chatom = nil
    if @starters.size == 0
      #something cooler than this should happen
      self.load_starters
      chatom = Chatom.new("You've seen it all. How about a movie instead?", 0)
    else
      chatom = @starters.pop
    end
    return chatom
  end
  
  # Filter to only use the categories selected
  def filter(live_list)
    # re-bloat
    self.load_starters
    # slim to desired subset
    @starters = @starters.select {|starter| live_list.include?(starter.category)}
  end

  def size
    @starters.size
  end

end
