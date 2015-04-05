//
//  GuidelineVC.m
//  ACDSprototype2
//
//  Created by abruzzim on 4/4/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "GuidelineVC.h"

@interface GuidelineVC ()

@end

@implementation GuidelineVC

// Create the view that the controller manages.
//
- (void)loadView {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%GuidelineVC-I-TRACE, -loadView: called.");
    
    // Return a screen object representing the device's screen.
    //
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    
    // Create a View the size of the whole screen (The "Paint").
    //
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    
    // Assign a View to this ViewController.
    //
    self.view = view;
    
}
// Perform additional initialization after loading the view.
//
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Log a trace message to the console.
    //
    NSLog(@"%%GuidelineVC-I-TRACE, -viewDidLoad: called.");
    
    // Set background color
    //
    self.view.backgroundColor = [UIColor cyanColor];
    NSLog(@"%%GuidelineVC-I-TRACE, backgroundColor set.");
    
    // Instantiate a scroll view with a frame equal to the bounds.
    //
    self.scrollView.frame = self.view.bounds;
    NSLog(@"%%GuidelineVC-I-TRACE, scrollView frame set.");
    
    // Set autoresizing bitmask.
    //
    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    NSLog(@"%%GuidelineVC-I-TRACE, scrollView autoresizingMask set.");
    
    // Add the UIView to the end of the UIScrollView's list of subviews/
    //
    [self.scrollView addSubview:self.flowchartImage];
    NSLog(@"%%GuidelineVC-I-TRACE, flowchartImage added to scollView.");
    
    // Add the UIScrollView to the end of the UIView's list of subviews.
    //
    [self.view addSubview:self.scrollView];
    NSLog(@"%%GuidelineVC-I-TRACE, scrollView added to GuidelineVC view.");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
