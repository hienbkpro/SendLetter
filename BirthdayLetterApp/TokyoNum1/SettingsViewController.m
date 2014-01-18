//
//  SettingsViewController.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "SettingsViewController.h"
#import "LoginViewController.h"
#import "StartViewController.h"
#import "ProfileSettingViewController.h"
#import "SettingsViewController+Settings_InsertView.h"


@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

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

}

//profile
- (IBAction)btnProfile:(id)sender {
    
    NSString * storyboardName = @"SBTop";
    NSString * viewControllerID = @"SBProfileView";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    ProfileSettingViewController * controller = (ProfileSettingViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];

    [self.navigationController pushViewController:controller animated:NO];
}

//log out
- (IBAction)btnLogout:(id)sender {
    

    [self Alert];
}

//logout
-(void)LogOut{

    NSString * storyboardName = @"SBLogin";
    NSString * viewControllerID = @"SBStartHome";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    StartViewController * controller = (StartViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
    
    [self presentViewController:controller animated:YES completion:nil];

}

//alert
- (void)Alert {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"LOG OUT!"
                              
                                                        message:@"Are you sure ? "
                              
                                                       delegate:self
                              
                                              cancelButtonTitle:@"OK"
                              
                                              otherButtonTitles:@"NO", nil];
    
    
    [alertView show];
    
}

//event for alert
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex

{
    if(buttonIndex == 0)
    {
        [self LogOut];
        NSLog(@"You OK");
    }
    
    else if(buttonIndex == 1)
    {
        NSLog(@"You NO");
    }
}

@end
