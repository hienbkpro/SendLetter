//
//  WriteViewController.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "WriteViewController.h"
#import "WriteViewController+Attach_Category.h"
#import "WriteViewController+WriteInsertView.h"


@interface WriteViewController ()

@end

@implementation WriteViewController

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
    [self ViewLoadInsert];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




//icon
- (IBAction)btnIcon:(id)sender {
    
    [self Icon];
}


//photo
- (IBAction)btnPhoto:(id)sender {

    [self Photo];
}


//video
- (IBAction)btnVideo:(id)sender {

    [self Video];
}


//Location
- (IBAction)btnLocation:(id)sender {

    [self Location];
}


//Friend
- (IBAction)btnFriend:(id)sender {

    [self Friend];
}


//Done
- (IBAction)btnDone:(id)sender {

    [self Done];
   
}

@end
