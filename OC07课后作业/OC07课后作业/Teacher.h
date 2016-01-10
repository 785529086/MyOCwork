//
//  Teacher.h
//  OC07课后作业
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "Person.h"

@interface Teacher : Person
@property (nonatomic, retain) NSString *className;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
                   className:(NSString *)className;
@end
