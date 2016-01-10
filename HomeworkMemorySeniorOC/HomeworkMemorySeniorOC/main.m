//
//  main.m
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/19.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OurClass.h"
#import "Teacher.h"
#import "Student.h"


/**
 *  做一个班级信息程序，包含4个自定义的类：OurClass、Teacher、Student、Person。
    OurClass代表班级，里面包含一个Teacher对象，和一个NSMutableArray（用于存放多个Student对象）班级能够更换老师，能够增添学生和移除学生。
    Person类作为Student、Teacher类的父类，定义公共属性和方法。Student包含一个成绩属性（NSMutableDictionary类型），能存储课程名称和成绩，Student类还能比较年龄大小。Teacher类有一个exam:方法（参数是课程名称，内部是每个学生设置考试成绩，成绩随机）。
 *
 */
int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
    
        //创建老师对象
        Teacher * teacher = [[Teacher alloc] init];
        //创建班级对象
        OurClass * ourClass = [[OurClass alloc] init];
        //指定老师所在的班级
        teacher.ourClass = ourClass;
       
        //指定该班级中的老师
        ourClass.teacher = teacher;
       
        
        //添加10个学生对象
        for (int i = 0 ; i < 10; i ++) {
            Student * stu = [[Student alloc] init];
            stu.name = [NSString stringWithFormat:@"stu%d",i];//赋值10个学生姓名
            stu.age = arc4random() % (25 - 19 + 1) + 19;//随机学生年龄
            stu.number = i;
            [ourClass addStudent:stu];
        }
        //为班级学生的OC课程设置成绩
        [teacher exam:@"OC"];
        
        //输出所有的学生考试成绩信息
        [ourClass listAllStudent];
        
    }
    
    return 0;
}
