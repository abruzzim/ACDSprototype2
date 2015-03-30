//
//  VideoVC.m
//  ACDSprototype2
//
//  Created by abruzzim on 3/30/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "VideoVC.h"

@interface VideoVC ()

@end

@implementation VideoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Log a trace message to the console.
    //
    NSLog(@"%%FormularyVC-I-TRACE, -viewDidLoad: called.");
    
    // Set background color
    //
    self.view.backgroundColor = [UIColor purpleColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
