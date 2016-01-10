//
//  BookMessage.m
//  图书馆书籍管理系统2
//
//  Created by dllo on 15/12/6.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "BookMessage.h"

@implementation BookMessage


- (id)init {
    if (self = [ super init]) {
        _books = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

/*添加书籍*/
- (void)addBook:(Book *)book {

    [self.books addObject:book];


}
/*删除书籍(根据书名)*/
- (void)deleteBook:(NSString *)name {
    for (int i = 0; i < _books.count; i++) {
        if ([[[_books objectAtIndex:i] name] isEqualToString:name]) {
            [_books removeObjectAtIndex:i];
            i--;/*把数组里同名的书也一块删掉*/
        }
    }

}
/*查找书籍根据书名*/
- (void)searchBookByName:(NSString *)name
             changePrice:(CGFloat)price {
    BOOL flag = NO;
    for (Book *book in _books) {
        if ([book.name isEqualToString:name]) {
            book.price = price ;
            flag = YES;
            break;
        }
    }
    if (!flag) {
        NSLog(@"没有找到这本书!");
    }
}
/*展示所有书籍清单(书名)*/
- (void)showAllBooksName {
    for (Book *book in _books) {
        NSLog(@"%@",book.name);
    }
}
@end
