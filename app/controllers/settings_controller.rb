class SettingsController < UIViewController

  def loadView
    super

    @table_view =  @table_view = UITableView.alloc.initWithFrame(CGRectZero, style:UITableViewStyleGrouped)
    @table_view.frame = self.content_frame
    @table_view.dataSource = self
    @table_view.delegate = self
    @table_view.rowHeight = 40
    self.view.addSubview @table_view
  end

  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
  end

  def viewDidUnload
    @table_view = nil
  end

  def viewWillDisappear(animated)
    #rehash the chatoms available depending on current settings
    #$chatoms.filter($categories.live_list)
  end

  def numberOfSectionsInTableView(tableView)
    1
  end

  def tableView(tableView, numberOfRowsInSection:section)
    $categories.category_list.length
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    category = $categories.category_list[indexPath.row] 
    cell = CategoryInfoCell.cellForInfo(category, inTableView:tableView)
    @switch = UISwitch.alloc.initWithFrame([[0, 0], [150, 25]])
    @switch.addTarget(self, action:'category_switch_is_changed:', forControlEvents:UIControlEventValueChanged)
    @switch.on = category.in_use
    cell.accessoryView = @switch
    cell
  end

  def tableView(tableView,didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
  end

  def tableView(tableView, titleForHeaderInSection:section)
    result = nil
    if (tableView == @table_view && section == 0)
      result = "Categories"
    end
    result
  end
  
  def tableView(tableView, heightForHeaderInSection:section)
    if(tableView = @table_view)
      if(section == 0)
        result = 30
      end
    end
    result
  end

  def tableView(tableView, viewForFooterInSection:section)
    result = nil
  end

  def tableView(tableView, heightForFooterInSection:section)
    if(tableView = @table_view)
      if(section == 0)
        result = 30
      end
    end
    result
  end

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    'YES'
  end

  def category_switch_is_changed(sender)
    owner_cell = sender.superview
    owner_cell_index_path = @table_view.indexPathForCell(owner_cell)
    category = $categories.category_list[owner_cell_index_path.row]

    if sender.on?
      category.in_use = true
    else
      category.in_use = false
    end
    category.save_preference
  end
end

