//
//  LoginViewController+Login_Category.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "LoginViewController+Login_Category.h"
#import "TimeLine_ListViewController.h"

@implementation LoginViewController (Login_Category)

//Login acttion
-(void)Login{

    NSString *email = self.txtEmail.text;
    NSString *passWord = self.txtPassword.text;
    
    if ([email isEqualToString:@"demo@framgia.com"] && [passWord isEqualToString:@"123456"]) {
        
        NSString * storyboardName = @"SBMain";
        NSString * viewControllerID = @"SBmain2";
        UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
        TimeLine_ListViewController * controller = (TimeLine_ListViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
        
        [self presentViewController:controller animated:YES completion:nil];
        
        NSLog(@"lOGIN OK");
    }
    else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Login Error" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
        
        NSLog(@"lOGIN NOT OK");
    }

}

@end
