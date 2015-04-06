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
    
    // Treatment guidelines (protocols) dictionary.
    //
    NSDictionary *guideline1 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Sepsis", @"title",
                                @"SepsisFlowchart3", @"filename",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4914)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4914)], @"frame",
                                nil];
    
    NSDictionary *guideline2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Diabetic Ketoacidosis", @"title",
                                @"", @"filename",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                nil];
    
    NSDictionary *guideline3 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Traumatic Brain Injury", @"title",
                                @"", @"filename",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                nil];
    
    NSDictionary *guideline4 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Status Asthmaticus", @"title",
                                @"", @"filename",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                nil];
    
    NSDictionary *guideline5 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Status Epilepticus", @"title",
                                @"", @"filename",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                nil];
    
    NSArray *guidelines = [[NSArray alloc] initWithObjects:
                           guideline1,
                           guideline2,
                           guideline3,
                           guideline4,
                           guideline5,
                           nil];
    
    return guidelines;
    
}

@end
