//
//  OurClass.h
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Teacher;
@class Student;

@interface OurClass : NSObject
@property (nonatomic,retain) Teacher *teacher;//teacher属性
@property (nonatomic,retain)NSMutableArray * students;//学生数组属性

//增添学生的方法
- (void)addStudent:(Student *)student;
//删除学生的方法
- (void)deleteStudent:(NSInteger )number;
//输出所有的学生信息
- (void)listAllStudent;

@end
