//
//  main.m
//  OC05_课后作业
//
//  Created by dllo on 12/4/15.
//  Copyright © 2015 doll. All rights reserved.
//
/*实现图书管理系统：
 1、使用数组管理所有书籍。 (字典中放着很多个数组对象,且用书的首字母作为字典关键词)
 2、数组可以添加、删除。
 3、可以从数组根据书名查找书籍，并修改书籍的价格。
 4、展示所有书籍清单（书名）。*/

#import <Foundation/Foundation.h>
#import "Book.h"
#import "ManageBook.h"
int main(int argc, const char * argv[]) {
    
//    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithCapacity:26];
//    /* for循环26次,添加键值对 */
//    for (int i = 0; i < 26; i++) {
//        /*创建 key值*/
//        NSString *key = [NSString stringWithFormat:@"%c",'a'+ i];
//        /* 创建一个空的可变数组 */
//        NSMutableArray *mArr = [NSMutableArray array];
//        /* 向字典中添加新的键值对 */
//        [mDic setObject:mArr forKey:key];
//    }
//    Book *book = [[Book alloc] initWithBookOfName:@"liulangji" price:28];
//    Book *book1 = [[Book alloc] initWithBookOfName:@"antusheng" price:39];
//    Book *book2 = [[Book alloc] initWithBookOfName:@"shiji" price:100];
//    Book *book3 = [[Book alloc] initWithBookOfName:@"gantieshizenyanglianchengde" price:128];
//    Book *book4 = [[Book alloc] initWithBookOfName:@"zizhitongjian" price:99];
//    
//    NSString *key = book.group;
//    NSMutableArray *mArr = [mDic objectForKey:key];
//    [mArr addObject:book];
//  //  NSArray *mArr1 = [mDic objectForKey:book1.group];
//    [[mDic objectForKey:book1.group] addObject:book1];
//
//    [[mDic objectForKey:book2.group] addObject:book2];
//  
// //   [mDic removeObjectForKey:book.group];
////    for (NSString *key in mDic) {
////        NSArray *arr = [mDic objectForKey:key];
////    }
//    
//      NSLog(@"%@",mDic);
    
    Book *book = [[Book alloc] initWithBookOfName:@"liulangji" price:28];
    Book *book1 = [[Book alloc] initWithBookOfName:@"antusheng" price:39];
    Book *book2 = [[Book alloc] initWithBookOfName:@"shiji" price:100];
    Book *book3 = [[Book alloc] initWithBookOfName:@"daili" price:128];
    Book *book4 = [[Book alloc]initWithBookOfName:@"zizhitongjian" price:99];
    Book *book5 = [[Book alloc] initWithBookOfName:@"anlesi" price:34];
    Book *book6 = [[Book alloc] initWithBookOfName:@"anlesi2" price:34];
    Book *book7 = [[Book alloc] initWithBookOfName:@"anlesi3" price:34];
    ManageBook *Dic = [[ManageBook alloc] init];
    [Dic addBook:book];
    [Dic addBook:book1];
    [Dic addBook:book2];
    [Dic addBook:book3];
    [Dic addBook:book4];
    [Dic addBook:book5];
    [Dic addBook:book6];
    [Dic addBook:book7];
    [Dic showAll];
    
    NSLog(@"*******显示删除了某组***************");
    [Dic deleteGroup:@"A"];
    [Dic showAll];
    
    NSLog(@"*******显示删除了daili***************");
    [Dic deleteBook:@"daili"];
     [Dic showAll];
    
    
    
    
    
    NSLog(@"*******显示删除了shiji***************");
    [Dic deleteBook:@"shiji"];
      [Dic showAll];
//    NSLog(@"%d",[Dic deleteBook:@"anlesi"] ? YES : NO);
    
    
    
    
    
    return 0;
}
