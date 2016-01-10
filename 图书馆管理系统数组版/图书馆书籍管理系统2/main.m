//
//  main.m
//  图书馆书籍管理系统2
//
//  Created by dllo on 15/12/6.
//  Copyright © 2015年 doll. All rights reserved.
//
/*图书管理
 
 1、使用可变数组管理所有书籍(定义Book类,包含书名和价格)。
 
 ​2、数组可以添加、删除书籍。
 
 3、可以从数组根据书名查找书籍,并修改书籍的价格
 
 4、展示所有书籍清单(书名)。*/
#import <Foundation/Foundation.h>
#import "BookMessage.h"
#import "Book.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *book1 = [[Book alloc] initWithName:@"C语言" price:25.2];
        Book *book2 = [[Book alloc] initWithName:@"C++"price:26.2];
        Book *book3 = [[Book alloc] initWithName:@"ios"price:30.2];
        Book *book4 = [[Book alloc] initWithName:@"oc"price:40];
        Book *book5 = [[Book alloc] initWithName:@"swiftly"price:15];
        
        BookMessage *books = [[BookMessage alloc] init];
        
        [books addBook:book1];
        [books addBook:book2];
        [books addBook:book3];
        [books addBook:book4];
        [books addBook:book5];
        
        NSLog(@"--------------------");
        [books showAllBooksName];
        NSLog(@"--------------------");
        
        [books deleteBook:@"ios"];
        NSLog(@"--------------------");
        [books showAllBooksName];
        NSLog(@"--------------------");
        
        NSLog(@"%.2f",book1.price);
        [books searchBookByName:@"C语言"changePrice:15];
        NSLog(@"%.2f",book1.price);

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
