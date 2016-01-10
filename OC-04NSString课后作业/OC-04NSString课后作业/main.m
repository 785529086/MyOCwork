//
//  main.m
//  OC-04NSString课后作业
//
//  Created by dllo on 12/3/15.
//  Copyright © 2015 doll. All rights reserved.
//
/*  题目要求：
 1、定义Student结构体，包含姓名，性别，年龄，分数，学号；定义该结构体的变量，并存储为NSValue类型的对象。
 
 2、定义NSRange类型的变量，存储为NSValue类型的对象。
 
 3、将上述NSValue类型的对象，转回为相应的数据类型。*/
/*题目要求：
 1、将“文艺青年”改为“213青年”。
 2、将整数123， 转换为字符串“123”。
 3、将“i love you”中的单词首字母大写“I Love You”。
 4、判断一个字符串是否以http开头，以png结尾，如果是，输出是一个有效链接，如果不是，输出链接错误。*/
/*题目要求：
 1、将整数123，存储为NSNumber类型的对象。
 2、将3.14159，存储为NSNumber类型的对象。
 3、将'c'，存储为NSNumber类型的对象。
 4、将YES，存储为NSNumber类型的对象。
 5、将上述OC的NSNumber类型的对象转回为基本数据类型。*/

#import <Foundation/Foundation.h>
typedef  struct student{
    char name[20] ;
    char gender;
    int age;
    int score;
    int number;
} Student;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student stu;
        
        
     
    }
    return 0;
}
