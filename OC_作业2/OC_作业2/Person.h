//
//  Person.h
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

/*作业1: 为OC第一天写的10个类，添加setter、getter、初始化方法、便利构造器。*/
/*作业2: 僵尸作业。需求：
 1、定义普通僵尸类：
 实例变量：僵尸总血量、僵尸每次失血量。
 方法：初始化方法，便利构造器， setter和getter。
 2、定义路障僵尸类：
 实例变量：僵尸总血量、僵尸每次失血量，道具，弱点。
 方法：初始化方法，便利构造器，setter和getter。
 3、在main.m中创建普通僵尸对象、路障僵尸对象。*/

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
    NSString *_gender;
}
- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setAge:(NSInteger)age;
- (NSInteger)age;

- (void)setGender:(NSString *)gender;
- (NSString *)gender;


-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                     gender:(NSString *)gender;


+(instancetype)personWithName:(NSString *)name
                          age:(NSInteger) age
                       gender:(NSString *)gender;



@end
