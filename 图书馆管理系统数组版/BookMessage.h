//
//  BookMessage.h
//  图书馆书籍管理系统2
//
//  Created by dllo on 15/12/6.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Book.h"

@interface BookMessage : Book
@property (nonatomic,retain) NSMutableArray *books;

/*添加书籍*/
- (void)addBook:(Book *)book;
/*删除书籍(根据书名)*/
- (void)deleteBook:(NSString *)name;
/*查找书籍根据书名*/
- (void)searchBookByName:(NSString *)name
             changePrice:(CGFloat)changePrice;
/*展示所有书籍清单(书名)*/
- (void)showAllBooksName;

@end