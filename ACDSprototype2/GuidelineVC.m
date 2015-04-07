//
//  GuidelineVC.m
//  ACDSprototype2
//
//  Created by abruzzim on 4/4/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "GuidelineVC.h"

@interface GuidelineVC ()

#define TABBAR_HEIGHT 48
#define TOOLBAR_HEIGHT 50
@property (strong, nonatomic) UIToolbar *toolBar;

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
    
    // Instantiate and configure the tool bar
    //
    self.toolBar = [[UIToolbar alloc] init];
    self.toolBar.backgroundColor = [UIColor lightGrayColor];
    self.toolBar.barStyle = UIBarStyleDefault;
    //self.toolBar.frame = CGRectMake(0, self.view.frame.size.height - TOOLBAR_HEIGHT - TABBAR_HEIGHT, self.view.frame.size.width, TOOLBAR_HEIGHT);
    [self addToolbarItems];
    [self.view addSubview:self.toolBar];
    self.toolBar.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.toolBar
                                  attribute:NSLayoutAttributeLeft
                                  relatedBy:0
                                     toItem:self.view
                                  attribute:NSLayoutAttributeLeft
                                 multiplier:1
                                   constant:0]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.toolBar
                                  attribute:NSLayoutAttributeRight
                                  relatedBy:0
                                     toItem:self.view
                                  attribute:NSLayoutAttributeRight
                                 multiplier:1
                                   constant:0]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.toolBar
                                  attribute:NSLayoutAttributeBottom
                                  relatedBy:0
                                     toItem:self.view
                                  attribute:NSLayoutAttributeBottom
                                 multiplier:1
                                   constant:-TABBAR_HEIGHT]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addToolbarItems {
    
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle:@"Flowchart"
                                                             style:UIBarButtonItemStyleDone
                                                            target:self
                                                            action:@selector(doButton1:)];
    
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithTitle:@"Text"
                                                             style:UIBarButtonItemStyleDone
                                                            target:self
                                                            action:@selector(doButton2:)];
    
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                            target:self
                                                                            action:nil];
    
    NSArray *barButtonItems = [NSArray arrayWithObjects:spacer, btn1, spacer, btn2, spacer, nil];
    
    [self.toolBar setItems:barButtonItems];
}

- (void)doButton1:(UIButton *)sender {
    NSLog(@"%%GuidelineVC-I-TRACE, -doButton1 called.");
}

- (void)doButton2:(UIButton *)sender {
    NSLog(@"%%GuidelineVC-I-TRACE, -doButton2 called.");
}

- (void)doButton3:(UIButton *)sender {
    NSLog(@"%%GuidelineVC-I-TRACE, -doButton3 called.");
}

@end
