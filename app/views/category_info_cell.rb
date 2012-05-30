class CategoryInfoCell < UITableViewCell
  CellID = 'CategoryIdentifier'

  attr_reader :category_label

  def initWithStyle(style, reuseIdentifier:reuseIdentifier)
    if super
      height = UIScreen.mainScreen.bounds.size.height
      unit = height / 10
      @category_label = UILabel.alloc.initWithFrame([[unit * 1.3,5],[160,30]])
      @category_label.backgroundColor = UIColor.clearColor
      @category_label.adjustsFontSizeToFitWidth = true
      @category_label.font = UIFont.systemFontOfSize(20)
      self.addSubview(@category_label)
    end
    self
  end

  def self.cellForInfo(category_info, inTableView:tableView)
    cell = tableView.dequeueReusableCellWithIdentifier(CellID) || CategoryInfoCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:CellID)
    cell.category_label.text = category_info.name
    cell.imageView.image = UIImage.imageNamed("#{category_info.name}.png")
    cell
  end
end 
