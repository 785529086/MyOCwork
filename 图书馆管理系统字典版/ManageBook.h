//
//  ManageBook.h
//  OC05_课后作业
//
//  Created by dllo on 15/12/6.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Book.h"

@interface ManageBook : Book
{
    NSDictionary *_dic;
}


- (BOOL)addBook:(Book *)book;/*可以添加书籍*/
- (BOOL)deleteBook:(NSString *)name;/*可以根据名字删除某书籍*/
- (BOOL)deleteGroup:(NSString *)group;/*可以根据首字母删除某组书籍*/
- (void)showAll;/*显示书库中还剩多少书籍*/
- (void)changePriceOfBook:(NSString *)name :(NSInteger)price;

@end
