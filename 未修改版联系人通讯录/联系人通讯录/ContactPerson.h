//
//  ContactPerson.h
//  联系人通讯录
//
//  Created by dllo on 15/12/5.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactPerson : NSObject    /* 联系人的属性 */
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *sex;
@property (nonatomic, retain) NSString *phonenumber;
@property (nonatomic, retain) NSString *adress;
@property (nonatomic, retain) NSString *group;


/*自定义初始化  可以给实例变量赋初值 ,若是直接调用 init 也可以,但是直接清空,返回一个指向null的指针,不能给实例变量赋初值 */
- (id) initWithName:(NSString *)name
                sex:(NSString *)sex
        phonenumber:(NSString *)phonenumber
             adress:(NSString *)adress;

- (NSString *)group;
- (NSString *)name;
- (NSString *)phonenumber;
- (NSString *)sex;
- (NSString *)description;

@end
