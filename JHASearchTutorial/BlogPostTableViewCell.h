//
//  BlogPostTableViewCell.h
//  JHASearchTutorial
//
//  Created by Joseph Anderson on 8/25/15.
//  Copyright (c) 2015 JAnderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlogPostTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *emojiLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *contentLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

@end
