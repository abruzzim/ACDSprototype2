//
//  TransportsDetailVC.h
//  ACDSprototype2
//
//  Created by dev9998 on 3/28/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransportsDetailVC : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak,   nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
