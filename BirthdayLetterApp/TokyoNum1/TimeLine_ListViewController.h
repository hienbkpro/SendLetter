//
//  TimeLine_ListViewController.h
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Timeline.h"

@interface TimeLine_ListViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>
{
    Timeline *timeline;
    Timeline *timeline1;
    Timeline *timeline2;
    Timeline *timeline3;
    Timeline *timeline4;
    Timeline *timeline5;
    NSArray *arrData;
}




@end
