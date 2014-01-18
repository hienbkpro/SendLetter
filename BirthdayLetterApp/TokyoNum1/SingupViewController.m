//
//  SingupViewController.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "SingupViewController.h"
#import "SingupViewController+Singup_Caterogy.h"



@interface SingupViewController ()

@end

@implementation SingupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//set delegate to Text Field
-(void)SetDelegateToTextField{
    
    self.txtName.delegate=self;
    self.txtEmail.delegate=self;
    self.txtPassword.delegate=self;
    self.txtRePassword.delegate=self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self SetDelegateToTextField];
    [self GetvalueTextField];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}


-(void)GetvalueTextField{
    NSString *name = self.txtName.text;
    NSString *email = self.txtEmail.text;
    NSString *password = self.txtPassword.text;
    //
    NSLog(@"name is :%@",name);
    NSLog(@"Email is :%@",email);
    NSLog(@"Password is :%@",password);
    
    //viet login tu day
}




- (IBAction)btnSingup:(id)sender {
    
//    [self SingUp];
    
    [self ToLoginPage];
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
