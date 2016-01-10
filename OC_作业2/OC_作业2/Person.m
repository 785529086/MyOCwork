//
//  Person.m
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setName:(NSString *)name {
    _name = name;
}
- (NSString *)name {
    return _name;
}

- (void)setAge:(NSInteger)age {
    _age = age;
}
- (NSInteger)age {
    return _age;
}

- (void)setGender:(NSString *)gender {
    _gender = gender;
}
- (NSString *)gender {
    return _gender;
}


-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                     gender:(NSString *)gender;
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _gender = gender;
    }
    return self;
}


+(instancetype)personWithName:(NSString *)name
                          age:(NSInteger) age
                       gender:(NSString *)gender
{
    Person * person =[[Person alloc] initWithName:@"WangLe" age:21 gender:@"female"];
    return person;


}




@end
