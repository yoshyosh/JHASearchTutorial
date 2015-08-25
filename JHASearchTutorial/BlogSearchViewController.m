//
//  BlogSearchViewController.m
//  
//
//  Created by Joseph Anderson on 8/25/15.
//
//

#import "BlogSearchViewController.h"
#import "BlogObject.h"
#import "BlogPostTableViewCell.h"

@interface BlogSearchViewController ()

@end

@implementation BlogSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Blogs";
    self.tableView.estimatedRowHeight = 88.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerNib:[UINib nibWithNibName:@"BlogPostTableViewCell" bundle:nil] forCellReuseIdentifier:@"blogCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - <ABFRealmSearchControllerDataSource>

- (UITableViewCell *)searchViewController:(ABFRealmSearchViewController *)searchViewController
                            cellForObject:(id)anObject
                              atIndexPath:(NSIndexPath *)indexPath
{
  BlogPostTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"blogCell"];
  BlogObject *blog = anObject;
  
  cell.titleLabel.text = [blog.title capitalizedString];
  cell.emojiLabel.text = blog.emoji;
  cell.contentLabel.text = blog.content;
  
  return cell;
}

@end
