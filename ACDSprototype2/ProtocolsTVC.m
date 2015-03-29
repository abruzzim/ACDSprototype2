//
//  ProtocolsTVC.m
//  ACDSprototype2
//
//  Created by dev9998 on 3/29/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "ProtocolsTVC.h"
#import "TreatmentProtocol.h"

@interface ProtocolsTVC ()

@property NSMutableArray *treatmentProtocols;

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
    /*
    // Preserve selection between presentations.
    //
    self.clearsSelectionOnViewWillAppear = NO;
    */
    // Load statis data (treatment protocols).
    //
    self.treatmentProtocols = [[NSMutableArray alloc] init];
    [self loadTreatmentProtocols];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Static data

- (void) loadTreatmentProtocols {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%ProtocolsTVC-I-TRACE, -loadTreatmentProtocols: called.");
    
    TreatmentProtocol *item1 = [[TreatmentProtocol alloc] init];
    item1.name = @"Sepsis";
    [self.treatmentProtocols addObject:item1];
    
    TreatmentProtocol *item2 = [[TreatmentProtocol alloc] init];
    item2.name = @"Diabetic Ketoacidosis";
    [self.treatmentProtocols addObject:item2];
    
    TreatmentProtocol *item3 = [[TreatmentProtocol alloc] init];
    item3.name = @"Traumatic Brain Injury";
    [self.treatmentProtocols addObject:item3];
    
    TreatmentProtocol *item4 = [[TreatmentProtocol alloc] init];
    item4.name = @"Status Asthmaticus";
    [self.treatmentProtocols addObject:item4];
    
    TreatmentProtocol *item5 = [[TreatmentProtocol alloc] init];
    item5.name = @"Status Epilepticus";
    [self.treatmentProtocols addObject:item5];
    
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
    
    return self.treatmentProtocols.count;
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
    TreatmentProtocol *treatmentProtocol = self.treatmentProtocols[indexPath.row];
    
    // Set the cell's text label to the string representation of the treatment protocol object.
    //
    cell.textLabel.text = [treatmentProtocol name];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
