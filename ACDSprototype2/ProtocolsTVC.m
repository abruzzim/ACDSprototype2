//
//  ProtocolsTVC.m
//  ACDSprototype2
//
//  Created by dev9998 on 3/29/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "ProtocolsTVC.h"
#import "TreatmentProtocols.h"

@interface ProtocolsTVC ()

@property NSArray *protocolTitles;

@end

@implementation ProtocolsTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Log a trace message to the console.
    //
    NSLog(@"%%ProtocolsTVC-I-TRACE, -viewDidLoad: called.");
    
    // Set background color
    //
    self.view.backgroundColor = [UIColor greenColor];
    
    // Set the preferred size for the master view controller’s view.
    //
    self.preferredContentSize = CGSizeMake(320.0, 600.0);
    
    // Retrieve treatment protocol title array.
    //
    self.protocolTitles = [TreatmentProtocols titles];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%ProtocolsTVC-I-TRACE, -numberOfSectionsInTableView: called.");
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%ProtocolsTVC-I-TRACE, -tableView:numberOfRowsInSection: called.");
    
    return self.protocolTitles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%ProtocolsTVC-I-TRACE, -tableView:cellForRowAtIndexPath:");
    
    // Configure the cell.
    //
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProtocolCell"
                                                            forIndexPath:indexPath];
    
    // Return the data object corresponding to the index path row.
    //
    NSString *treatmentProtocolTitle = self.protocolTitles[indexPath.row];
    
    // Set the cell's text label to the string representation of the treatment protocol object.
    //
    cell.textLabel.text = treatmentProtocolTitle;
    
    return cell;
}

@end
