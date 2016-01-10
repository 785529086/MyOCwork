//
//  AddressBook.h
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

#import "ContactPerson.h"

@interface AddressBook : ContactPerson
{
    NSMutableDictionary *_dic;
}

- (BOOL)addPerson:(ContactPerson *)person;
- (ContactPerson *)searchPersonByphoneNumber:(NSString *)phonenumber;
- (NSArray *)searchPersonBysex:(NSString *)sex;
- (BOOL)deleteByname:(NSString *)name;
- (BOOL)deleteByGroup:(NSString *)group;
- (void)showAll;
- (id)init;
@end
