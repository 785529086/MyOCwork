//
//  Teacher.h
//  HomeworkMemorySeniorOC
//
//  Created by zouming MacBook  pro on 15/9/20.
//  Copyright (c) 2015年 邹明. All rights reserved.
//

#import "Person.h"
@class OurClass;

@interface Teacher : Person

@property (nonatomic, retain)OurClass *ourClass;
//为每个学生该课程随机成绩

- (void)exam:(NSString *)examName;

@end
