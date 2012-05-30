class ChatomsController < UIViewController

  def init
    if super
      self.title = "Chatoms"
    end
    $categories = Categories.new
    self
  end

  def loadView
    self.view = UIImageView.alloc.init
  end

  def viewDidLoad
    width = UIScreen.mainScreen.bounds.size.width
    height = UIScreen.mainScreen.bounds.size.height
    unit = height / 10
    top = unit * 2
    text_spot = unit * 5
    button_spot = 7.5 * unit
    @big_font = 34

    if ipad?
      @big_font = 80
      text_spot = unit * 6
      button_spot = 8 * unit
    end
    # Chatoms Model
    @chatoms = Chatoms.new
    # View Settings
    view.backgroundColor = UIColor.lightGrayColor
    view.image = UIImage.imageNamed("back.png")
    view.userInteractionEnabled = true

    # Chatoms Label
    @label = UILabel.alloc.initWithFrame([[unit/2,top], [width - unit, text_spot]])
    @label.text = "Spark a Conversation!"
    @label.textAlignment = UITextAlignmentCenter
    @label.font = UIFont.boldSystemFontOfSize(@big_font)
    @label.numberOfLines = 0 
    @label.backgroundColor = UIColor.clearColor
    @label.textColor = UIColor.whiteColor
    #shadow
    @label.shadowColor = UIColor.blackColor
    @label.layer.shadowRadius = 20
    @label.layer.shadowOpacity = 0.5
    @label.layer.masksToBounds = false
    view.addSubview(@label)

    self.navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAdd, target:self, action: 'action_tapped')

    @action = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @action.setTitle('New Chatom', forState:UIControlStateNormal)
    @action.titleLabel.font = UIFont.boldSystemFontOfSize(@big_font/2)
    @action.addTarget(self, action:'next_chatom', forControlEvents:UIControlEventTouchUpInside)
    @action.frame = [[unit/2, button_spot], [width - unit, unit]]
    view.addSubview(@action)

  end

  def viewWillAppear(animated)
    @chatoms.filter($categories.live_list)
  end
  # Chatoms settings
  def action_tapped
    self.title = "Chatoms"
    @settings = SettingsController.alloc.init
    @settings.title = "Settings"
    self.navigationController.pushViewController(@settings, animated:'YES')
  end

  #get and display a new chatom
  def next_chatom
    chatom = @chatoms.next_chatom
    @label.text = chatom.text
    self.title = $categories.category_name(chatom.category)
    @label.reduce_to_frame(@big_font)
  end

end

# MonkeyPatch (aka DuckPunching) the UILabel 
class UILabel

  def reduce_to_frame(start_font_size)
    good_font_size = start_font_size
    constraintSize = CGSizeMake(self.frame.size.width, 10000)

    begin
      good_font_size -= 2
      new_font = UIFont.boldSystemFontOfSize(good_font_size)
      current_size = self.text.sizeWithFont(new_font, constrainedToSize:constraintSize, lineBreakMode:UILineBreakModeWordWrap)
    end while self.frame.size.height <= current_size.height

    #now set to font size we have settled on
    self.font = UIFont.boldSystemFontOfSize(good_font_size)
  end
end
