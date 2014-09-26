//
//  ViewController.m
//  TestOrientation
//
//  Created by Danie Bruwer on 2014/09/25.
//  Copyright (c) 2014 Thumbzup. All rights reserved.
//

#import "ViewController.h"
#import "UIExtendedAlertView.h"
@interface ViewController ()

@end

#define DEGREES_RADIANS(angle) ((angle) / 180.0 * M_PI)

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortraitUpsideDown | UIInterfaceOrientationMaskPortrait;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    return YES;
}
-(BOOL)shouldAutorotate
{
    return YES;
}
- (IBAction)btnClicked:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello"
                                                    message:@"UIAlertView"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    [alert show];
}
- (IBAction)btnExtendedClicked:(id)sender {
    
    [UIApplication sharedApplication].statusBarOrientation = UIInterfaceOrientationPortraitUpsideDown;
    
    UIExtendedAlertView *alert = [[UIExtendedAlertView alloc] initWithTitle:@"Hello"
                                                    message:@"UIExtendedAlertView"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
//    alert.transform=CGAffineTransformMakeRotation(DEGREES_RADIANS(180));
//    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [alert show];
    
    
}

- (void)didPresentAlertView:(UIAlertView *)alertView
{
    [UIView beginAnimations:@"" context:nil];
    [UIView setAnimationDuration:0.1];
    alertView.transform =CGAffineTransformMakeRotation(DEGREES_RADIANS(90)); //CGAffineTransformRotate(alertView.transform, DEGREES_RADIANS(90));
    [UIView commitAnimations];
}

@end
