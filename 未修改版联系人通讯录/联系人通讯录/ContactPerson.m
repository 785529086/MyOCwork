//
//  ContactPerson.m
//  联系人通讯录
//
//  Created by dllo on 15/12/5.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "ContactPerson.h"

@implementation ContactPerson
- (id) initWithName:(NSString *)name
                sex:(NSString *)sex
        phonenumber:(NSString *)phonenumber
             adress:(NSString *)adress
{
    self = [super init];
    if (self) {
        _name = name;
        _sex = sex;
        _phonenumber = phonenumber;
        _adress = adress;
    }
    if ([name length] > 0) {
        _group = [[name substringToIndex:1] uppercaseString];
//        NSString *firstname = [name substringToIndex:1];
//        _group = [firstname uppercaseString];
    }
    return self;


}
- (NSString *)group {
    return _group;
}
- (NSString *)name {

    return _name;
}
- (NSString *)phonenumber {
    return _phonenumber;
}
- (NSString *)sex {
    return _sex;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@"  @"sex:%@" @"phonenumber:%@" @"adress:%@"  @"group:%@",_name,_sex,_phonenumber,_adress,_group];
}
@end
