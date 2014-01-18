//
//  WriteViewController.h
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WriteViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *txtText;

- (IBAction)btnIcon:(id)sender;
- (IBAction)btnPhoto:(id)sender;
- (IBAction)btnVideo:(id)sender;
- (IBAction)btnLocation:(id)sender;
- (IBAction)btnFriend:(id)sender;
- (IBAction)btnDone:(id)sender;

@end
