//
//  Book.m
//  图书馆管理系统3
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price {
    if ([super init]) {
        self.name = name;
        self.price = price;
    }
    return self;
}
@end
