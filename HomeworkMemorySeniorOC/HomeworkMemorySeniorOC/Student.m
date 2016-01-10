//
//  Student.m
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import "Student.h"

@implementation Student
//重写初始化方法，在初始化对象的同时，创建成绩字典对象；
- (id)init
{
    self = [super init];
    if (self) {
        self.scoreList = [NSMutableDictionary dictionary];
    }
    return self;
}
//比较两个学生成绩的大小
- (BOOL)compareAgeToStudent:(Student *)stu
{
    return self.age > stu.age? YES : NO;
}
- (void)dealloc
{
    [_scoreList release];
    [super dealloc];
}
//重写description方法，输出学生学号和成绩信息
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@,%ld,%ld,%@",self.name,self.age,self.number,self.scoreList];
}

@end
