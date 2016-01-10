//
//  Fruit.m
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Fruit.h"

@implementation  Fruit



- (void)informationOfFruit:(Fruit *)fruit {
    NSLog(@"name:%@, color:%@, count:%ld, area: %@, price:%ld",fruit->_name, fruit->_color, fruit->_count,fruit->_area, fruit->_price);
}
-(void)Say {
    NSLog(@"orange 说 : 我是褚橙,我骄傲");
}
@end
