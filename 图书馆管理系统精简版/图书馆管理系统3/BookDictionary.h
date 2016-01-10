//
//  BookDictionary.h
//  图书馆管理系统3
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
@interface BookDictionary : NSObject
@property (nonatomic, retain) NSMutableDictionary *mDic;



- (void)addBook:(Book *)book;

- (void)showAllBooks;

- (void)deleteBook:(NSString *)name;

- (void)searchOfName:(NSString *)name changePrice:(NSInteger)price;
@end
