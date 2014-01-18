//
//  SettingSendMailViewController.h
//  BirthdayLetterApp
//
//  Created by Nguyen Huy Hung on 1/18/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingSendMailViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldIdReceive;

- (IBAction)buttonSend:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonSend;

@end
