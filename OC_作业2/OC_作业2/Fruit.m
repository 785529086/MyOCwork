//
//  Fruit.m
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit
- (void)setArea:(NSString *)area {
    _area = area;
}
- (NSString *)area {
    return _area;
}

-(void)setColor:(NSString *)color {
    _color = color;
}
-(NSString *)color {
    return _color;
}

-(void)setPrice:(NSInteger)price {
    _price = price;
}
-(NSInteger)price {
    return _price;
}

-(instancetype)initWithArea:(NSString *)area
                      color:(NSString *)color
                      price:(NSInteger)price
{
    self = [super init];
    if (self) {
        _area = area;
        _color = color;
        _price = price;
    }
    return self;
}

+(instancetype)fruitWithName:(NSString *)name
                       color:(NSString *)color
                       price:(NSInteger)price
{
    Fruit *fruit = [[Fruit alloc] initWithArea:@"苹果" color:@"红色" price:8];
    return fruit;




}




@end
