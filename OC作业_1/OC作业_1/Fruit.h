//
//  Fruit.h
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject
{
    @public
    NSString *_name;
    NSString*_color;
    NSInteger _count;
    NSString * _area;
    NSInteger _price;
}

- (void)informationOfFruit:(Fruit* )fruit;

-(void)Say;

@end
