//
//  Teacher.m
//  OC07课后作业
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
                   className:(NSString *)className
{
    if ([super init]) {
        _className = className;
    }
    return self;
}



@end
