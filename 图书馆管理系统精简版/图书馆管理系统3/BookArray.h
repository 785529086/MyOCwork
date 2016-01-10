//
//  BookArray.h
//  图书馆管理系统3
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BookArray : NSObject
@property (nonatomic, retain) NSMutableArray *mArr;

- (void)addBook:(Book *)book;


//- (void)showBook;
- (void)listAllBooks;

- (void)acordingToName:(NSString *)name changePrice:(NSInteger)price;

- (void)deleteBook:(NSString *)bookname;

@end
