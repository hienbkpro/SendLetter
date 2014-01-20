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
{
    NSArray *images;
}
@end

@implementation TimeLine_DetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    images = [NSArray arrayWithObjects:@"avt.jpg",@"auze.jpg",@"auze.jpg",@"auze.jpg",@"avt.jpg",@"avt.jpg",@"avt.jpg",@"auze.jpg",@"avt.jpg", nil];
    
    [super viewDidLoad];
	
//    [self ViewLoadInsert];
    
    self.imgAvatar.image = [UIImage imageNamed:self.avatar];
    
    self.imgAvatar.layer.cornerRadius = 30;
    self.imgAvatar.layer.masksToBounds = YES;
    
    self.txtname.text = self.name;
    self.txtDate.text = self.date;
    self.txtContent.text = self.content;
    
    //
    [self LoadImages];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}


//close
- (IBAction)btnClose:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}



-(void)LoadImages{
    self.scrolViewImages.backgroundColor = [UIColor clearColor];
    self.scrolViewImages.showsHorizontalScrollIndicator = YES; //by default, it shows!
    self.scrolViewImages.scrollEnabled = YES;                 //say "NO" to disable scroll
    self.scrolViewImages.pagingEnabled = YES;
    
    //
    for (int i=0; i<images.count; i++) {
        
        UIImageView *imgV1 = [[UIImageView alloc] initWithFrame:CGRectMake(i*292, 0, 292, 251)];

        [imgV1 setImage:[UIImage imageNamed:images[i]]];
        
        imgV1.layer.cornerRadius = 10;
        imgV1.layer.masksToBounds = YES;
        
        imgV1.tag=i;

        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                             
                                                                                    action:@selector(Clicked:)];
        
        [imgV1 setMultipleTouchEnabled:YES];
        [imgV1 setUserInteractionEnabled:YES];
        [imgV1 addGestureRecognizer:singleTap];
        
        
        [self.scrolViewImages addSubview:imgV1];
        
    }
    
    //auto size a UIScrollView to fit the content
    CGRect contentRect = CGRectZero;
    for (UIView *view in self.scrolViewImages.subviews) {
        contentRect = CGRectUnion(contentRect, view.frame);
    }
    self.scrolViewImages.contentSize = contentRect.size;


}



-(void)Clicked:(UITapGestureRecognizer *)sender{
    
    UIButton *myBtn = (UIButton *)sender.view;
    NSLog(@"tag here: %d", myBtn.tag);

}

@end
