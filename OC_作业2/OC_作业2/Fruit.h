//
//  Fruit.h
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject
{
    NSString *_area;
    NSString *_color;
    NSInteger _price;
}
- (void)setArea:(NSString *)area;
- (NSString *)area;

-(void)setColor:(NSString *)color;
-(NSString *)color;

-(void)setPrice:(NSInteger)price;
-(NSInteger)price;

-(instancetype)initWithName:(NSString *)name
                      color:(NSString *)color
                      price:(NSInteger)price;


+(instancetype)fruitWithName:(NSString *)name
                       color:(NSString *)color
                       price:(NSInteger)price;







@end
