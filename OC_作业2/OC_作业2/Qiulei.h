//
//  Qiulei.h
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Qiulei : NSObject
{
    NSString *_name;
    NSString *_color;
    NSInteger _count;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setColor:(NSString *)color;
-(NSString *)color;

-(instancetype)initWithName:(NSString *)name
                      color:(NSString *)color
                      count:(NSInteger)count;
+(instancetype)QiuLeiWithName:(NSString *)name
                        color:(NSString *)color
                        count:(NSInteger)count;

@end
