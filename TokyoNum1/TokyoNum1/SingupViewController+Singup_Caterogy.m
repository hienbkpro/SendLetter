//
//  SingupViewController+Singup_Caterogy.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "SingupViewController+Singup_Caterogy.h"
#import "LoginViewController.h"

@implementation SingupViewController (Singup_Caterogy)


//get value
-(void)SingUp{
    NSString *name = self.txtName.text;
    NSString *email = self.txtEmail.text;
    NSString *password = self.txtPassword.text;
    //
    NSLog(@"name is :%@",name);
    NSLog(@"Email is :%@",email);
    NSLog(@"Password is :%@",password);
    
    //viet login tu day
}







//go to login page
-(void)ToLoginPage{
    
    LoginViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SBLoginView"];
    
    // SET modal Transition Style
    controller.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    
    //    [self.navigationController pushViewController:controller animated:NO];
    [self presentViewController:controller animated:YES completion:nil];
    
    
}

@end
