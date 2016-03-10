//
//  ViewController.m
//  CustomUIActionSheet
//
//  Created by DesenGuo on 2016-03-09.
//  Copyright © 2016 divecommunications. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)openMenu:(id)sender
{
    [[BottomMenuHelper sharedInstance] popShareMenuFromViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
