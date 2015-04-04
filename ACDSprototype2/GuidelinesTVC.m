//
//  GuidelinesTVC.m
//  ACDSprototype2
//
//  Created by abruzzim on 4/4/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "GuidelinesTVC.h"
#import "Guidelines.h"

@interface GuidelinesTVC ()

@property NSArray *guidelines;

@end

@implementation GuidelinesTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Log a trace message to the console.
    //
    NSLog(@"%%GuidelinesTVC-I-TRACE, -viewDidLoad: called.");
    
    // Set background color
    //
    self.view.backgroundColor = [UIColor greenColor];
    
    // Retrieve treatment guidelines array.
    //
    self.guidelines = [Guidelines knownGuidelines];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%GuidelinesTVC-I-TRACE, -numberOfSectionsInTableView: called.");
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%GuidelinesTVC-I-TRACE, -tableView:numberOfRowsInSection: called.");
    
    return self.guidelines.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%GuidelinesTVC-I-TRACE, -tableView:cellForRowAtIndexPath:");
    
    // Configure the cell.
    //
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GuidelineCell"
                                                            forIndexPath:indexPath];
    
    // Return the data object corresponding to the index path row.
    //
    NSString *guidelineTitle = self.guidelines[indexPath.row][@"title"];
    
    // Set the cell's text label to the string representation of the treatment protocol object.
    //
    cell.textLabel.text = guidelineTitle;
    
    return cell;
}

@end
