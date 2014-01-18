//
//  TimeLine_ListViewController+TimeLine_List_Category.m
//  TokyoNum1
//
//  Created by PhamNgocTam on 1/16/14.
//  Copyright (c) 2014 PhamNgocTam. All rights reserved.
//

#import "TimeLine_ListViewController+TimeLine_List_Category.h"

@implementation TimeLine_ListViewController (TimeLine_List_Category)


-(void)LoadData{

    //create Object
    timeline =[Timeline new];
    timeline1 =[Timeline new];
    timeline2 =[Timeline new];
    timeline3 =[Timeline new];
    timeline4 =[Timeline new];
    timeline5 =[Timeline new];
    
    //set object
    timeline.avatar =@"avt.jpg";
    timeline.name=@"username";
    timeline.date=@"17/01/2014";
    timeline.content=@"gewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewg";
//    timeline.images = [NSArray arrayWithObjects:@"avt.jpg",@"auze.jpg",@"auze.jpg",@"auze.jpg",@"avt.jpg",@"avt.jpg",@"avt.jpg","auze.jpg",@"avt.jpg", nil];
    
    timeline1.avatar =@"avt.jpg";
    timeline1.name=@"username #1";
    timeline1.date=@"18/01/2014";
    timeline1.content=@"gewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewg";
    
    timeline2.avatar =@"avt.jpg";
    timeline2.name=@"username #2";
    timeline2.date=@"19/01/2014";
    timeline2.content=@"gewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewg";
    
    timeline3.avatar =@"avt.jpg";
    timeline3.name=@"username #3";
    timeline3.date=@"120/01/2014";
    timeline3.content=@"gewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewg";
    
    timeline4.avatar =@"avt.jpg";
    timeline4.name=@"username #4";
    timeline4.date=@"21/01/2014";
    timeline4.content=@"gewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewg";
    
    timeline5.avatar =@"avt.jpg";
    timeline5.name=@"username #5";
    timeline5.date=@"22/01/2014";
    timeline5.content=@"gewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewggewgewg";
//    timeline.images = [NSArray arrayWithObjects:@"avt.jpg",@"auze.jpg",@"auze.jpg",@"auze.jpg",@"avt.jpg",@"avt.jpg",@"avt.jpg", nil];
    
    //push data from object to array
    arrData  = [NSArray arrayWithObjects:timeline,timeline1,timeline2,timeline3,timeline4,timeline5, nil];

    
}


@end
