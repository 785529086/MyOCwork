//
//  Qiulei.m
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Qiulei.h"

@implementation Qiulei
-(void)setName:(NSString *)name {
    _name = name;
}
-(NSString *)name {
    return _name;
}


-(void)setColor:(NSString *)color {
    _color = color;
}
-(NSString *)color {
    return _color;
}

-(instancetype)initWithName:(NSString *)name
                      color:(NSString *)color
                      count:(NSInteger)count
{
    self = [super init];
    if (self) {
        _name = name;
        _color = color;
        _count = count;
    }
    return self;
}
+(instancetype)QiuLeiWithName:(NSString *)name
                        color:(NSString *)color
                        count:(NSInteger)count
{    Qiulei * qiulei = [[Qiulei alloc] initWithName:@"足球" color:@"白色" count:10];
    return qiulei;
}



@end
