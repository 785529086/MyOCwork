//
//  main.m
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//
/** 作业1  定义10个类:
 1、声明:实例变量、方法。实现:初始化方法、自定义方法、自我介绍方法。(方法实现时，以NSLog输出即可)
 2、在main.m中分别创建10个类的对象。
 3、给对象的实例变量进行赋值、取值操作，执行方法。
 
 */
/** 作业2  完成蓝欧班级开班仪式流程
 1.早上9.30开班仪式开始.(NSLog(@"开班仪式正式开始"))
 2.刘辉老师做自我介绍.
 3.三名学生做自我介绍
 需求:
 (1)定义一个班级类(LOClassF)
 实例变量:所属培训机构名称、班级名、班级人数、授课老师名字、开班日期.
 方法:初始化(设置学校名字:蓝欧)、集体活动、开班仪式。
 (2)定义一个老师类
 实例变量:名字、性别、年龄、正在教的课程。
 方法:初始化、讲课、布置、验收作业、解决问题、自我介绍。
 (3)定义一个学生类。
 实例变量:姓名、性别、年龄、学号。
 方法:初始化、学习、做作业、提出问题、回答问题、自我介绍。
 注:方法以NSLog输出为主
 
 */

#import <Foundation/Foundation.h>
#import "Fruit.h"
#import "LOClass.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fruit * orange = [[Fruit alloc] init];
        [orange Say];
        orange->_name = @"富士苹果";
        orange->_area = @"山东";
        orange->_color = @"红色";
        orange->_price = 10;
        orange->_count = 100;
        NSLog(@"name:%@, color:%@, area:%@, count:%ld, price:%ld",orange->_name,orange->_color,orange->_area,orange->_count, orange->_price);
        
        Fruit *apple = [[Fruit alloc] init];
        
        [apple informationOfFruit:orange];
        
        
        
        NSLog(@"开班仪式正式开始,下面的时间我们给刘辉老师:");
        LOClass* loclass = [[LOClass alloc] init];
        loclass->_name = @"蓝欧";
        loclass->_classname = @"研7";
        loclass->_date = @"2015年11月16日";
        [loclass informationOfClass:loclass];
        [loclass information];
        NSLog(@"下面由刘辉老师来做自我介绍:");
        NSLog(@"下面由三位同学来进行自我介绍:");
        
   
    }
    return 0;
}
