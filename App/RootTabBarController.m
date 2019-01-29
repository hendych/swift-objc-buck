//
//  RootTabBarController.m
//  SwiftObjcBuck
//
//  Created by hendy.christianto on 24/01/19.
//

#import "RootTabBarController.h"
#import "SecondViewController.h"
#import "SwiftObjcBuckBin-Swift.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewControllers];
}

- (void)setupViewControllers {
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    firstVC.title = @"First VC";
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    secondVC.title = @"Second VC";
    
    self.viewControllers = @[firstVC, secondVC];
}

@end
