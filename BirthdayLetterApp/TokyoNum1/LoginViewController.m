//
//  LoginViewController.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginViewController+Login_Category.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

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
	
    self.txtEmail.delegate=self;
    self.txtPassword.delegate=self;
    [self GetVuesFromTextField];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}



//Login
- (IBAction)btnLogin:(id)sender {

    [self Login];
    
    NSLog(@"Login");
}

- (IBAction)btnClose:(id)sender {

    [self dismissViewControllerAnimated:YES completion:NULL];
}



//hide keyboard
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    return YES;
    
}

@end
