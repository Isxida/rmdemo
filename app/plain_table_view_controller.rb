class PlainTableViewController < UITableViewController
  def viewDidLoad
    searchBar = UISearchBar.alloc.initWithFrame(CGRectMake(0, 0, 0, 0))
    searchBar.delegate = self
    searchBar.sizeToFit
    view.tableHeaderView = searchBar
    view.dataSource = view.delegate = self
  end

  def searchBarSearchButtonClicked(searchBar)
    alert = UIAlertView.new
    alert.message = searchBar.text
    alert.addButtonWithTitle "Oki Doki" 
    alert.show
  end
end