//
//  TransportsSplitVC.m
//  ACDSprototype2
//
//  Created by dev9998 on 3/28/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "TransportsSplitVC.h"
#import "TransportsDetailVC.h"

// The UISplitViewControllerDelegate protocol defines methods that allow you to manage changes to a split view interface.
// Use the methods of this protocol to respond to changes in the current display mode and to the current interface orientation.
// When the split view interface collapses and expands, or when a new view controller is added to the interface, you can
// also use these methods to configure the child view controllers appropriately.
//
@interface TransportsSplitVC () <UISplitViewControllerDelegate>

@end

@implementation TransportsSplitVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Log a trace message to the console.
    //
    NSLog(@"%%TransportsSplitVC-I-TRACE, viewDidLoad: called.");
    
    // Return the navigation controller managed by the split-view controller.
    //
    UINavigationController *transportSplitNC = [self.viewControllers lastObject];
    
    // Set a custom bar button item, which changes the display mode of the split view controller,
    // displayed on the left of the navigation bar when the receiver is the top navigation item.
    //
    transportSplitNC.topViewController.navigationItem.leftBarButtonItem = self.displayModeButtonItem;
    
    // Set the delegate to receive split view controller messages.
    //
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (BOOL)            splitViewController:(UISplitViewController *)splitViewController
        collapseSecondaryViewController:(UIViewController *)secondaryViewController
              ontoPrimaryViewController:(UIViewController *)primaryViewController {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%TransportsSplitVC-I-TRACE, splitViewController:collapseSecondaryViewController:ontoPrimaryViewController:");
    
    if ([secondaryViewController isKindOfClass:[UINavigationController class]] &&
        [[(UINavigationController *)secondaryViewController topViewController] isKindOfClass:[TransportsDetailVC class]] &&
        ([(TransportsDetailVC *)[(UINavigationController *)secondaryViewController topViewController] detailItem] == nil)) {
        // Return YES to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
        return YES;
    } else {
        return NO;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
