//
//  Person.m
//  OC-06课后作业
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age
                      gender:(NSString *)gender{
    if ([super init]) {
        self.name = name;
        self.age = age;
        self.gender = gender;
    }
    return self;
}


- (NSComparisonResult)ageUp:(Person *)anotherPerson {
    if (self.age > anotherPerson.age) {
        return NSOrderedDescending;
    }else if (self.age < anotherPerson.age){
        return NSOrderedAscending;
    }else{
        return NSOrderedSame;
}
}


/*按姓名进行降序排序*/
- (NSComparisonResult)nameDown:(Person *)anotherPerson {
    return  [self.name compare:anotherPerson.name] * -1;
}





@end
