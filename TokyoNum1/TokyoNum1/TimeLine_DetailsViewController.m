//
//  TimeLine_DetailsViewController.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "TimeLine_DetailsViewController.h"
#import "TimeLine_DetailsViewController+TimeLine_Details_Category.h"
#import "TimeLine_DetailsViewController+Share_Caterory.h"
#import "TimeLine_DetailsViewController+Timeline_DetailsInsertView.h"

@interface TimeLine_DetailsViewController ()

@end

@implementation TimeLine_DetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
//    [self ViewLoadInsert];
    
    self.imgAvatar.image = [UIImage imageNamed:self.avatar];
    self.txtname.text = self.name;
    self.txtDate.text = self.date;
    self.txtContent.text = self.content;
    
 
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//close
- (IBAction)btnClose:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
