//
//  TimeLine_ListViewController.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "TimeLine_ListViewController.h"
#import "TimeLine_ListViewController+TimeLine_List_Category.h"
#import "TimeLine_ListViewController+TimeLine_ListInsertView.h"

#import "TimeLine_DetailsViewController.h"


@interface TimeLine_ListViewController ()
{
    Timeline *data_;
    NSArray *images;
}
@end

@implementation TimeLine_ListViewController


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
    
    images = [NSArray arrayWithObjects:@"avt.jpg",@"auze.jpg",@"auze.jpg",@"auze.jpg",@"avt.jpg",@"avt.jpg",@"avt.jpg",@"auze.jpg",@"avt.jpg", nil];
    
    [super viewDidLoad];
    [self LoadData];
    [self ViewLoadInsert];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView

{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return [arrData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    // Configure the cell...
    if (cell==nil) {
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }

    data_ = [arrData objectAtIndex:indexPath.row];
    
    UIImageView *avatar = (UIImageView *)[cell viewWithTag:100];
    avatar.image = [UIImage imageNamed:data_.avatar];
    avatar.layer.cornerRadius = 25;
    avatar.layer.masksToBounds = YES;
    
    
    UILabel *name = (UILabel *)[cell viewWithTag:101];
    name.text = data_.name;
    
    UILabel *date = (UILabel *)[cell viewWithTag:102];
    date.text = data_.date;
    
    UILabel *content = (UILabel *)[cell viewWithTag:103];
    content.text = data_.content;
    
    
    
    UIScrollView *viewImage = (UIScrollView *)[cell viewWithTag:104];
    
    viewImage.contentSize = CGSizeMake(1600, 165);   //scroll view size
    
    viewImage.backgroundColor = [UIColor clearColor];
    
    //    cl.showsVerticalScrollIndicator = YES;    // to hide scroll indicators!
    
    viewImage.showsHorizontalScrollIndicator = YES; //by default, it shows!
    
    viewImage.scrollEnabled = YES;                 //say "NO" to disable scroll
    
    
    
    //
    
    

    for (int i=0; i<images.count; i++) {

   
//    for (NSString *image in data_.images) {
    
        UIImageView *imgV1 = [[UIImageView alloc] initWithFrame:CGRectMake(i*175, 0, 165, 165)];
        
//        imgV1 = (UIImageView *)[cell viewWithTag:105];

        
        [imgV1 setImage:[UIImage imageNamed:images[i]]];
      
        
        //
//        NSMutableString *img = [NSMutableString string];
//        for (NSString *image in data_.images) {
//            [img appendFormat:@"%@",image];
//            
//             [imgV1 setImage:[UIImage imageNamed:img]];
//        }
//
//        NSLog(@"image is: %@",img);

        
        
        imgV1.layer.cornerRadius = 2;
        imgV1.layer.masksToBounds = YES;
        
        
        imgV1.tag=i;
        
        
//        NSLog(@"tags =: %d",imgV1.tag);
        
        
        
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                             
                                                                                    action:@selector(Clicked:)];
        
        
        
        [imgV1 setMultipleTouchEnabled:YES];
        [imgV1 setUserInteractionEnabled:YES];
        [imgV1 addGestureRecognizer:singleTap];
        
        
        [viewImage addSubview:imgV1];

 }
    
    

    return cell;
    
}


-(void)Clicked:(UITapGestureRecognizer *)sender{
    
    UIButton *myBtn = (UIButton *)sender.view;
    NSLog(@"tag here: %d", myBtn.tag);
    
    //        NSLog(@"you are Clicked button: %@",myBtn);
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    data_ = [arrData objectAtIndex:indexPath.row];
//    NSString *name = data_.content;
//    UIAlertView *messageAlert = [[UIAlertView alloc]
//                                 initWithTitle:@"Row Selected" message:name delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//
//    [messageAlert show];
    
    [self  GotoDetails];
    
}


//details
-(void)GotoDetails{
    
    //SBTimeline
    //SBTimeDetailsView
    NSString * storyboardName = @"SBTimeline";
    NSString * viewControllerID = @"SBTimeDetailsView";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    TimeLine_DetailsViewController * controller = (TimeLine_DetailsViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
    
    //set value
    controller.avatar = data_.avatar;
    controller.name = data_.name;
    controller.date = data_.date;
    controller.content = data_.content;

    [self.navigationController pushViewController:controller animated:NO];

    
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a story board-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 
 */


@end
