//
//  GuidelinesTVC.m
//  ACDSprototype2
//
//  Created by abruzzim on 4/4/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "GuidelinesTVC.h"
#import "Guidelines.h"
#import "GuidelineVC.h"

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
    NSLog(@"%%GuidelinesTVC-I-TRACE, -tableView:cellForRowAtIndexPath: called.");
    
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

// Manager selection; Tell the delegate that the specified row is now selected.
//
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Log a trace message to the console.
    //
    NSLog(@"%%GuidelinesTVC-I-TRACE, -tableView:didSelectRowAtIndexPath: called.");

    // Instantiate a guidelineVC.
    //
    GuidelineVC *guidelineVC = [[GuidelineVC alloc] init];
    NSLog(@"%%GuidelinesTVC-I-TRACE, guidelineVC instantiated.");
    
    // Set the guidelineVC properties from the model data.
    //
    guidelineVC.scrollView = [[UIScrollView alloc] init];
    NSLog(@"%%GuidelinesTVC-I-TRACE, scrollView instantiated.");
    guidelineVC.scrollView.contentSize = [self.guidelines[indexPath.row][@"size"] CGSizeValue];
    NSLog(@"%%GuidelinesTVC-I-TRACE, scollView contentSize set.");
    guidelineVC.flowchartImage = [[UIImageView alloc] initWithFrame:[self.guidelines[indexPath.row][@"frame"] CGRectValue]];
    NSLog(@"%%GuidelinesTVC-I-TRACE, flowchart image view instantiated with frame.");
    [guidelineVC.flowchartImage setImage:[UIImage imageNamed:self.guidelines[indexPath.row][@"filename"]]];
    NSLog(@"%%GuidelinesTVC-I-TRACE, flowchart image filename set.");
    NSString *prefixTitle = self.guidelines[indexPath.row][@"title"];
    guidelineVC.title = [prefixTitle stringByAppendingString:@" Flowchart"];
    NSLog(@"%%GuidelinesTVC-I-TRACE, guideline VC title set.");
 
    // Push the guidelineVC onto the ProtocolsTVC’s stack and update the display.
    //
    [self.navigationController pushViewController:guidelineVC animated:YES];

    
}

@end
