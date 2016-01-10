//
//  Person.h
//  OC-06课后作业
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, retain) NSString *gender;
- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age
                      gender:(NSString *)gender;


- (NSComparisonResult)ageUp:(Person *)anotherPerson;
 /*按姓名进行降序排序*/
- (NSComparisonResult)nameDown:(Person *)anotherPerson;




@end