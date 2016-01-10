//
//  NSMutableArray+covert.m
//  OC09课后作业
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "NSMutableArray+covert.h"

@implementation NSMutableArray (covert)

- (void)covert {
    NSString *temp = [[NSString alloc]init];
    for (int i = 0; i < self.count - 1; i++) {
        for ( int j = 0; j < self.count - 1 - i; j++) {
        NSString *per1 = [self objectAtIndex:j];
        NSString *per2 = [self objectAtIndex:j + 1];
            if ([per1 compare:per2] == -1) {
                temp = per1;
                per1 = per2;
                per2 = temp;
            }
  
        }
        }

    }




@end
