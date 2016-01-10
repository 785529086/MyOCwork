//
//  Teacher.m
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
-(void)informationOfCourse:(Teacher * )teacher
{
NSLog(@"name:%@, age:%ld, gender%@, course:%@",teacher->_name,teacher->_age,teacher->_gender,teacher->_course );
}
-(void)printfInformation
{
    NSLog(@"name:%@, age:%ld, gender%@, course%@",_name, _age,_gender, _course);
}
@end
