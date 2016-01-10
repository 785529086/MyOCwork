//
//  BookArray.m
//  图书馆管理系统3
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "BookArray.h"

@implementation BookArray
- (instancetype)init {
    if ([super init]) {
        self.mArr = [NSMutableArray array];
    }
    return self;
}


- (void)addBook:(Book *)book {
    [self.mArr addObject:book];
}

//- (void)showBook {
//    for (Book *book in self.mArr) {
//        NSLog(@"name:%@,price:%ld",book.name,book.price);
//    }
//}
- (void)listAllBooks {
    for (Book *book in self.mArr) {
        NSLog(@"name:%@,price:%ld",book.name,book.price);
    }
}


- (void)acordingToName:(NSString *)bookname changePrice:(NSInteger)price {
    for (Book *book  in self.mArr) {
        if ([book.name isEqualToString:bookname]) {
            book.price = price;
        }
    }
}

- (void)deleteBook:(NSString *)bookname {
    
    NSMutableArray *arr = [NSMutableArray array];
    for (Book *book in self.mArr) {
        if ([book.name isEqualToString:bookname]) {
            [arr addObject:book];
//            [self.mArr removeObject:book];
        }
    }
    [self.mArr removeObjectsInArray:arr];


}


@end
