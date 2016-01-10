//
//  main.m
//  OC-06课后作业
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll. All rights reserved.
//
/*要求 ：
 1、创建1个包含5个字符串元素的数组；
 2、用for循环倒序输出所有元素；
 3、用for...in完成所有字符串元素的拼接(生成一个
 新的字符串)，并输出拼接好的字符串。*/
/*要求：
 1、创建1个包含5个person对象的数组(姓名用英文)；
 2、用for循环找到年龄最大的Person对象；
 3、用for...in遍历数组，把大于某个年龄的Person对象的姓名后面拼接上字符串“-brother”。*/
/*要求 ：
 1、使用第二题目中生成的数组；
 2、使用sortUsingSelector: 分别按年龄，姓名，性别进行排序，输出排序结果；
 3、使用NSSortDescriptor，按姓名进行排序。*/

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#if 0
        NSArray *arr = @[@"zhangsan",@"lisi",@"xiaoming",@"lily",@"xiaozhi",@"niuniu"];
        for (NSInteger i = arr.count - 1; i >= 0 ; i--) {
            NSLog(@"%@",arr[i]);
        }
        
        
        
        NSString *newStr = [NSString string];
        for (NSString *str in arr) {
           newStr = [newStr stringByAppendingString:str];
        }
         NSLog(@"%@",newStr);
#endif
#if 1
        Person *per1 = [[Person alloc] initWithName:@"zhangsan" age:20 gender:@"male"];
        Person *per2 = [[Person alloc] initWithName:@"lisi" age:21 gender:@"female"];
        Person *per3 = [[Person alloc] initWithName:@"wang" age:18 gender:@"male"];
        Person *per4 = [[Person alloc] initWithName:@"zeng" age:22 gender:@"female"];
        Person *per5 = [[Person alloc] initWithName:@"song" age:25 gender:@"male"];
        
        /*用for 循环找出年龄最大的那个对象*/
        NSArray *arr = @[per1,per2,per3,per4,per5];
          Person *Per1 = NULL;
        for (int i = 0; i < arr.count ; i++) {
            Person *Per =  [arr objectAtIndex:i];
            if (Per.age > Per1.age) {
                Per1 = Per;
            }
        }
        NSLog(@"%ld",Per1.age);
        NSLog(@"%@",Per1);
        
        
        
        for (Person *per in arr) {
            if (per.age > 20 ) {
                per.name = [per.name stringByAppendingString:@"brother"];   NSLog(@"%@",per.name);
            }
        }
     
        /*按年龄进行升序排序*/
        NSArray *newArr = [arr sortedArrayUsingSelector:@selector(ageUp:)];
        for (Person *per in newArr) {
            NSLog(@"%ld",per.age);
        }
        
        /*按姓名进行降序排序*/
        NSArray *newArr1 = [arr sortedArrayUsingSelector:@selector(nameDown:)];
        for (Person *per in newArr1) {
            NSLog(@"%@",per.name);
        }
        
        
        NSSortDescriptor *name = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
        NSArray *newArr2 = [arr sortedArrayUsingDescriptors:@[name]];
        for (Person *per in newArr2) {
            NSLog(@"%@",per.name);
        }
#endif
        
        
        
        
        
        
        
        
        
        
        
        

    }
    return 0;
}
