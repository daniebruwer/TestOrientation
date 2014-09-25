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
    
    UIExtendedAlertView *alert = [[UIExtendedAlertView alloc] initWithTitle:@"Hello"
                                                    message:@"UIExtendedAlertView"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    [alert show];
    
}

@end
