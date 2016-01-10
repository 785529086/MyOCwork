//
//  AddressBook.m
//  联系人通讯录
//
//  Created by dllo on 15/12/5.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
/*重写init 方法,初始化字典*/
- (id)init{
    self = [super init];
    _dic = [NSMutableDictionary dictionaryWithCapacity:1];
    if (self) {
        for ( int i = 65 ; i < 91; i ++) {
            NSString *key = [NSString stringWithFormat:@"%c",i];
            [_dic setValue:[[NSMutableArray alloc] initWithCapacity:1] forKey:key];
        }
    }

    return self;
}


- (BOOL)addPerson:(ContactPerson *)person {
    BOOL isAdd = NO;
    if ([[person name]length] == 0 || [[person phonenumber]length] == 0) {
        NSLog(@"姓名或者电话号码为空!添加失败!");
    }else{
       // for (int i = 0; i < [_dic.count];i ++)
        for (int i = 0; i < _dic.count; i++){
/*objiectAtIndex 取出数组中对应下标的对象,_dic allkeys 表示一个含26个字母的一个数组对象 */
            NSString *key = [[_dic allKeys] objectAtIndex:i];
            if ([[person group] isEqualToString:key]) {
                [[_dic objectForKey:key] addObject:person];
                isAdd = YES;
            }
        }
    
    }
    return isAdd;
}
- (ContactPerson *)searchPersonByphoneNumber:(NSString *)phonenumber {
    BOOL isExist = NO;
    if ([phonenumber length] == 0) {
        NSLog(@"空号码");
        return nil;
    }else{
        for (int i = 0; i < _dic.count; i++) {
            NSString *key = [[_dic allKeys] objectAtIndex:i];
            /*  [ _dic objectAtIndex key] 表示首字母相同的对象*/
            for (int j = 0; j < [[_dic objectForKey:key]count]; j++) {
                /*[[[_dic objectForKey:key]objectAtIndex:j]phonenumber]表示 某个对象的电话号码*/
                if ([[[[_dic objectForKey:key]objectAtIndex:j]phonenumber]isEqualToString:phonenumber]) {
                    isExist = YES;
                    return [[_dic objectForKey:key]objectAtIndex:j];
                }
            }
        }
    
    }
    if (isExist == NO) {
        NSLog(@"电话号码不存在");
    }
    return nil;
}



- (NSArray *)searchPersonBysex:(NSString *) sex {
    /*在方法中开了一个可变数组 */
    NSMutableArray *personArray = [[NSMutableArray alloc] initWithCapacity:1];
    if ([sex length] == 0) {
        NSLog(@"性别为空");
    }else {
            for (int i = 0; i < _dic.count; i ++) {
                NSString *key = [[_dic allKeys] objectAtIndex:i];/*给关键词赋值*/
                                    /*根据关键词找对象*/
                for (int j = 0; j < [[_dic objectForKey:key]count]; j ++) {
                                /*根据关键词找到对象的性别   两个sex代表的内容也不一样
                                前者表示调用方法时输入的sex 后者表示初始化后输入的Person类中的sex*/
                    if ([[[[_dic objectForKey:key] objectAtIndex:j] sex]isEqualToString:sex]) {/*将满足条件的对象添加至personArray这个数组当中*/
                        [personArray addObject:[[_dic objectForKey:key]objectAtIndex:j]];
                    }
                }
            }
        }
    return [NSArray arrayWithArray:personArray];/*返回值放入了一个用构造器开辟的personArray中*/
}



- (BOOL)deleteByname:(NSString *)name {
    BOOL isDelete = NO;
    if ([name length] == 0) {
        NSLog(@"姓名为空");
    return isDelete;
    }else{
    //for (int i = 0; i < _dic.count; i++)
    for (NSInteger i = 0 ; i < _dic.count; i++)
    {
        NSString *key = [[_dic allKeys] objectAtIndex:i];
        for (int j = 0; j < [[_dic objectForKey:key]count]; j++) {
            if ([[[[_dic objectForKey:key] objectAtIndex:j] name] isEqualToString:name])
            {
                [[_dic objectForKey:key] removeObjectAtIndex:j];
                isDelete = YES;
            }
           }
    }
 
    return isDelete;
}

}
/* 感觉下面方法有问题,另作思考 */
- (BOOL)deleteByGroup:(NSString *)group {
    BOOL isDelete = NO;
    if ([group length] == 0) {
        NSLog(@"此组名没有联系人!");
    }else{
        /*遍历字典组名,并把组名给键值指针*/
    for ( int i = 0; i < _dic.count; i ++ ) {
        NSString *key = [[_dic allKeys] objectAtIndex:i];
        /*遍历组名中所有person对象的*/
        for (int j = 0; j < [[_dic objectForKey:key]count]; j++) {
            if ([[[[_dic objectForKey:key] objectAtIndex:j]group] isEqualToString:group]) {
                [[_dic objectForKey:key] removeObjectAtIndex:j];
                isDelete = YES;
            }
        }
    }
    }
    return isDelete;
}


- (void)showAll {
    NSLog(@"dic:%@",_dic);
}
@end
