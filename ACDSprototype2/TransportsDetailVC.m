//
//  TransportsDetailVC.m
//  ACDSprototype2
//
//  Created by dev9998 on 3/28/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "TransportsDetailVC.h"

@interface TransportsDetailVC ()

@end

@implementation TransportsDetailVC

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%TransportsDetailVC-I-TRACE, setDetailItem: called.");
    
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%TransportsDetailVC-I-TRACE, configureView: called.");
    
    // Update the user interface for the detail item.
    //
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Log a trace message to the console.
    //
    NSLog(@"%%TransportsDetailVC-I-TRACE, viewDidLoad: called.");
    
    // Do any additional setup after loading the view, typically from a nib.
    //
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
