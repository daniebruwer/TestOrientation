//
//  UIExtendedAlertView.m
//  TestOrientation
//
//  Created by Danie Bruwer on 2014/09/25.
//  Copyright (c) 2014 Thumbzup. All rights reserved.
//

#import "UIExtendedAlertView.h"

@implementation UIExtendedAlertView

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}
-(BOOL)shouldAutorotate
{
    return YES;
}

@end
