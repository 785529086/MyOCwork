//
//  LOClass.m
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "LOClass.h"

@implementation LOClass
- (void)informationOfClass:(LOClass*)loclass {
    NSLog(@"我来自%@%@,我们的开班日期为%@",loclass->_name, loclass->_classname, loclass->_date);
}

- (void)information  {
    NSLog(@"我来自%@%@,我们的开班日期为%@",_name,_classname, _date);
}
@end
