//
//  OurClass.m
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import "OurClass.h"
#import "Teacher.h"
#import "Student.h"
@implementation OurClass
//重写初始化方法
- (id)init
{
    self = [super init];
    if (self) {
        //创建学生对象数组
        self.students = [NSMutableArray array];
    }
    return self;
}

- (void)dealloc
{
    [_teacher release];
    [_students release];
    [super dealloc];
}
//更换老师方法的实现
- (void)changeTeacher:(Teacher *)teacher
{
    self.teacher = teacher;
}
//增加学生方法的实现
- (void)addStudent:(Student *)student
{
    //遍历学生，如果此时该学生已经存在，则不添加，直接返回即可
    for (Student *stu in self.students) {
        //通过学生的学号判断是否是同一个学生
        if (stu.number == student.number) {
            return;
        }
    }
    //如果学号不相等，说明不存在此学生，将其添加到数组当中；
    [self.students addObject:student];
}
//删除学生
- (void)deleteStudent:(NSInteger )number
{
    //遍历学生数组，找到该学号对应的学生，从数组中删除即可；
    for (Student * stu in self.students) {
        if (stu.number == number) {
            [self.students removeObject:stu];
        }
    }
}

//输出所有学生的信息
- (void)listAllStudent
{
    for (Student *stu in self.students) {
        
        NSLog(@"%@",stu);
    }
   
}

@end
