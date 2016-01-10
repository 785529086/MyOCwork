//
//  LOClass.h
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LOClass : NSObject
{
    @public
    NSString*_name;
    NSString*_classname;
    NSInteger _count;
    NSString * _classteachername;
    NSString * _date;
}
- (void)informationOfClass:(LOClass*)loclass;
- (void)information;
@end
