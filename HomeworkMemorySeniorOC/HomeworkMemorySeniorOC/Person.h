//
//  Person.h
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 
 Person类作为Student和Teacher类的公共父类；
 
 */
@interface Person : NSObject
//公有属性
@property (nonatomic,retain)NSString *name;//姓名
@property (nonatomic,assign)NSInteger age;//年龄

@end
