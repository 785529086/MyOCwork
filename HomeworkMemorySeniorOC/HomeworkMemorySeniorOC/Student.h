//
//  Student.h
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property (nonatomic, retain)NSMutableDictionary *scoreList;//成绩属性
@property (nonatomic, assign)NSInteger number;
//比较学生年龄的大小
- (BOOL)compareAgeToStudent:(Student *)stu;

@end
