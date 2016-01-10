//
//  Teacher.m
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"
#import "OurClass.h"
@implementation Teacher

//为每个学生该课程随机成绩
- (void)exam:(NSString *)examName {
    
    //遍历学生数组，得到每个学生对象，然后为每个学生随机成绩
    for (Student *stu in self.ourClass.students) {
        //随机成绩
        float score = arc4random() % 100;
        //给学生成绩赋值   @(score) 将基本数据类型整型转化为对象类型；
        [stu.scoreList setObject:@(score) forKey:examName];
    }
    
}

@end
