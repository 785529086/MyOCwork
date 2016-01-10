//
//  Student.m
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)JiangKe
{
    NSLog(@"接下来%@给大家讲一节课",_name);
}
-(void)DoHomework
{
    NSLog(@"%@同学说今天的作业有数学,语文,英语等",_name);
}
-(void)AskQuestion {
    NSLog(@"%@同学,学号为%ld,年龄为%ld",_name, _number, _age);
}

@end
