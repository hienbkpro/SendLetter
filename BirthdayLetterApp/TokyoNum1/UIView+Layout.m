//
//  UIView+Layout.m
//  Fun For Kids
//
//  Created by Huy Hoang on 11/14/13.
//  Copyright (c) 2013 FR. All rights reserved.
//

#import "UIView+Layout.h"

@implementation UIView (Layout)
- (CGFloat)oX
{
    return self.frame.origin.x;
}

- (CGFloat)oY
{
    return self.frame.origin.y;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)eX
{
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)eY
{
    return self.frame.origin.y + self.frame.size.height;
}
@end
