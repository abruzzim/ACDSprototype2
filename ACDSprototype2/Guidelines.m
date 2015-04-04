//
//  Guidelines.m
//  ACDSprototype2
//
//  Created by abruzzim on 4/4/15.
//  Copyright (c) 2015 FWS. All rights reserved.
//

#import "Guidelines.h"

@implementation Guidelines

+ (NSArray *)knownGuidelines {
    
    // Treatment guidelines (protocols) dictionary keys.
    //
    NSString *key1 = @"title";
    NSString *key2 = @"filename";
    NSString *key3 = @"sizeWidth";
    NSString *key4 = @"sizeHeight";
    NSString *key5 = @"frameX";
    NSString *key6 = @"frameY";
    NSString *key7 = @"frameWidth";
    NSString *key8 = @"frameHeight";
    
    // Treatment guidelines (protocols) dictionary.
    //
    return @[
             @{key1:@"Sepsis",key2:@"SepsisFlowchat3",key3:@768.0,key4:@4914.0,key5:@0.0,key6:@0.0,key7:@768.0,key8:@4914.0},
             @{key1:@"Diabetic Ketoacidosis",key2:@"",key3:@768.0,key4:@4914.0,key5:@0.0,key6:@0.0,key7:@768.0,key8:@4914.0},
             @{key1:@"Traumatic Brain Injury",key2:@"",key3:@768.0,key4:@4914.0,key5:@0.0,key6:@0.0,key7:@768.0,key8:@4914.0},
             @{key1:@"Status Asthmaticus",key2:@"",key3:@768.0,key4:@4914.0,key5:@0.0,key6:@0.0,key7:@768.0,key8:@4914.0},
             @{key1:@"Status Epilepticus",key2:@"",key3:@768.0,key4:@4914.0,key5:@0.0,key6:@0.0,key7:@768.0,key8:@4914.0}
             ];
}

@end
