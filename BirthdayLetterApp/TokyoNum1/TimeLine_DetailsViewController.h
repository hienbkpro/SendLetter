//
//  TimeLine_DetailsViewController.h
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Timeline.h"

@interface TimeLine_DetailsViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic) NSString *avatar;
@property(strong,nonatomic) NSString *name;
@property(strong,nonatomic) NSString *date;
@property(strong,nonatomic) NSString *content;
@property (weak, nonatomic) IBOutlet UIImageView *imgAvatar;
@property (weak, nonatomic) IBOutlet UILabel *txtname;
@property (weak, nonatomic) IBOutlet UILabel *txtDate;
@property (weak, nonatomic) IBOutlet UITextView *txtContent;
@property(strong, nonatomic) Timeline *tmObject;

@property (weak, nonatomic) IBOutlet UIScrollView *scrolViewImages;


- (IBAction)btnClose:(id)sender;

@end
