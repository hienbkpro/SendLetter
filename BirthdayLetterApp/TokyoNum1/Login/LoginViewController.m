//
//  LoginViewController.m
//  BirthdayLetterApp
//
//  Created by Nguyen Huy Hung on 1/21/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
{
    AFHTTPRequestOperationManager * _httpRequestOperationManager;
}
@property (weak, nonatomic) IBOutlet UITextField *textFieldUsername;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
- (IBAction)loginActionPress:(id)sender;
- (IBAction)forgotPasswordActionPress:(id)sender;
- (IBAction)loginByFacebookPress:(id)sender;
@end

@implementation LoginViewController
@synthesize textFieldPassword;
@synthesize textFieldUsername;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSURL *baseURL = [[NSURL alloc] initWithString:BASE_URL];
    _httpRequestOperationManager = [[AFHTTPRequestOperationManager alloc]
                                    initWithBaseURL:baseURL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginActionPress:(id)sender {
    if ([self checkNilUsernameAndPassword]) {
        //Process not nil
        NSDictionary *data = @{kFRUserEmail:self.textFieldUsername.text, kFRUserPassword:self.textFieldPassword.text};
        [_httpRequestOperationManager POST:kFRUserLogin
                                  parameters:data
                                     success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                         NSString *convertedString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
                                         NSLog(@"%@", convertedString);
                                     } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                         NSLog(@"Error: %@", [error description]);
                                     }];
    }
}

- (IBAction)forgotPasswordActionPress:(id)sender {
}

- (IBAction)loginByFacebookPress:(id)sender {
}

- (BOOL)checkNilUsernameAndPassword
{
    BOOL check = true;
    if (textFieldUsername.text.length == 0 || textFieldPassword.text.length == 0) {
        //Show error
        check = false;
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"ERROR" message:@"username or password cannot nil" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    return check;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}


@end
