//
//  Person.m
//  OC07课后作业
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age {
    if ([super init]) {
        _name = name;
        _age = age;
    }
    return self;
}
@end
