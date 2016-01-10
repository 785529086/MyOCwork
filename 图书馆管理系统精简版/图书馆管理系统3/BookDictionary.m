//
//  BookDictionary.m
//  图书馆管理系统3
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "BookDictionary.h"

@implementation BookDictionary
- (instancetype)init {
    if ([super init]) {
        self.mDic = [NSMutableDictionary dictionary];
    }
    return self;
}




- (void)addBook:(Book *)book {
    NSString *key = [[book.name substringToIndex:1] uppercaseString];
    NSMutableArray *mArr = [self.mDic objectForKey:key];
    if (mArr == nil) {
        NSString *key = [[book.name substringToIndex:1] uppercaseString];
//        [mArr addObject:book];
//        NSMutableArray *mArr = [self.mDic objectForKey:key];
        NSMutableArray *mArr = [[ NSMutableArray alloc]init];
        [mArr addObject:book];
        [self.mDic setObject:mArr forKey:key];
       
    }else{
        [mArr addObject:book];
    }
 }


- (void)deleteBook:(NSString *)name {
    NSString *key = [[name substringToIndex:1] uppercaseString];
    NSMutableArray *arr = [NSMutableArray array];
    for (key in self.mDic) {
        NSMutableArray *mArr = [self.mDic objectForKey:key];
        for (Book *book in mArr) {
            if ([book.name isEqualToString:name]) {
                [arr addObject:book];
            }
           }
        [mArr removeObjectsInArray:arr];
        }
    }


- (void)searchOfName:(NSString *)name changePrice:(NSInteger)price {
     /*首先根据名字在字典中找到书,然后再对书进行操作*/
    NSString *key = [[name substringToIndex:1] uppercaseString];
    for (key in self.mDic) {
        NSMutableArray *mArr = [self.mDic objectForKey:key];
        for (Book *book in mArr) {
            if ([name isEqualToString:book.name]) {
                book.price = price;
            }
        }
    }
}


- (void)showAllBooks {
    for (NSString *key in self.mDic) {
        NSMutableArray *arr = [self.mDic objectForKey:key];
        for (Book *book in arr) {
            NSLog(@"name:%@,price:%ld",book.name,book.price);
        }
    }

}
@end
