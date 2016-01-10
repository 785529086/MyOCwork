//
//  Person.m
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import "Person.h"

@implementation Person


- (void)dealloc{
    [_name release];
    [super dealloc];
}

@end
