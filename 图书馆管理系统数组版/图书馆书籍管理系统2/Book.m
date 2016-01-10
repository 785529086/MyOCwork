//
//  Book.m
//  图书馆书籍管理系统2
//
//  Created by dllo on 15/12/6.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Book.h"

@implementation Book
//- (id)init {
//    if (self = [super init]) {
//        self.name = nil;
//        self.price = 0;
//    }
//    return self;
//}

- (id)initWithName:(NSString *)name price:(CGFloat)price {
    self = [self init];
    self.name = name;
    self.price = price;
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"书名:%@" @"价格:%.2f",_name,_price];
}


@end
