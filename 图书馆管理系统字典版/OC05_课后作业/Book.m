//
//  Book.m
//  OC05_课后作业
//
//  Created by dllo on 12/5/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithBookOfName:(NSString *)name
                             price:(NSInteger)price
{
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
        _group = [[name substringToIndex:1] uppercaseString];
    }
    return self;
}

//- (NSString *)name {
//    return _name;
//}
//- (NSInteger)price {
//    return _price;
//}
//- (NSString *)group{
//    return _group;
//}



- (void)informationOfBook {
    NSLog(@"name:%@,price:%ld",_name,_price);
}
@end
