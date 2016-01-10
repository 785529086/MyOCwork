//
//  main.m
//  联系人通讯录
//
//  Created by dllo on 15/12/5.
//  Copyright © 2015年 doll. All rights reserved.
//
/*需求实现:
 
 一、定义联系?类ContactPerson
 
 实例变量：姓名、性别、电话号码、住址、分组名称。
 
 方法：初始化?方法（姓名、电话号码）、显?示联系?信息
 
 二、定义AddressBook类, 封装以下功能, 类中定义一个实例变量可变数组，管理所有联系人, 通讯录具有以下功能:
 
 1,  可以添加新联系?对象，如果姓名或电话号码为空，打印添加失败。
 
 2、根据电话号码搜索联系?
 
 3、获取所有某性联系?
 
 4、根据姓名删除联系?
 
 5、展?示通讯录中所有联系
 
 6. 删除某分组的所有联系人
 
 ContactPerson类的声明:用于声明人的对象*/

#import <Foundation/Foundation.h>
#import "ContactPerson.h"
#import "AddressBook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactPerson *person1 = [[ContactPerson alloc] initWithName:@"zengbin" sex:@"male" phonenumber:@"13944686625" adress:@"hunan"];
        ContactPerson *person2 = [[ContactPerson alloc] initWithName:@"xiaoming" sex:@"male" phonenumber:@"15487154225" adress:@"jilin"];
        ContactPerson *person3 = [[ContactPerson alloc] initWithName:@"lee" sex:@"female" phonenumber:@"14587965468" adress:@"beijing"];
        ContactPerson *person4 = [[ContactPerson alloc] initWithName:@"zhangsan" sex:@"male" phonenumber:@"12594563854" adress:@"dalian"];
        ContactPerson *person5 = [[ContactPerson alloc] initWithName:@"wangming" sex:@"male" phonenumber:@"45685465864" adress:@"xiangxiang"];
        AddressBook *book = [[AddressBook alloc] init];
        /*添加联系人*/
        [book addPerson:person1];
        [book addPerson:person2];
        [book addPerson:person3];
        [book addPerson:person4];
        [book addPerson:person5];
//        [book showAll]; 通过电话号码查询
  
        ContactPerson *p = [book searchPersonByphoneNumber:@"14587965468"];
        NSLog(@"p:%@",p);
        
        ContactPerson *p1  = [book searchPersonByphoneNumber:@"12306154789"];
        NSLog(@"p1:%@",p1);
        
        //通过某性别区分联系人
        NSArray *array = [book searchPersonBysex:@"male"];
        NSLog(@"array:%@",array);
        
        //根据姓名删除某联系人
        [book showAll];
        NSLog(@"%@",[book deleteByname:@"zengbin"]?@"YES" : @"NO");
        [book showAll];
        
        NSLog(@"%@",[book deleteByname:@"lp"] ? @"YES" : @"NO");
        [book showAll];
        
        //删除分组所有联系人
        NSLog(@"%@",[book deleteByGroup:@"z"] ? @"YES" : @"NO");
        [book showAll];
    
        NSLog(@"%@",[book deleteByGroup:@"x"] ? @"YES" : @"NO");
        [book showAll];
        
        
        
        
    
    
    
    
    
    }
    return 0;
}
