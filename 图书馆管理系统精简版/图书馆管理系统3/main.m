//
//  main.m
//  图书馆管理系统3
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//
/*实现图书管理系统：
 1、使用数组管理所有书籍。 (字典中放着很多个数组对象,且用书的首字母作为字典关键词)
 2、数组可以添加、删除。
 3、可以从数组根据书名查找书籍，并修改书籍的价格。
 4、展示所有书籍清单（书名）。*/

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookArray.h"
#import "BookDictionary.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#if 0
        /*  发现有书籍类  还需要要建一个数组类,专门用来装数组*/
        BookArray *array = [[BookArray alloc]init];
        
        Book *book1 = [[Book alloc] initWithName:@"shiji" price:45];
        Book *book2 = [[Book alloc] initWithName:@"shanghaitan" price:63];
        Book *book3 = [[Book alloc] initWithName:@"antusheng" price:52];
        Book *book4 = [[Book alloc] initWithName:@"meili" price:23];
        Book *book5 = [[Book alloc] initWithName:@"qingnian" price:53];
        
        [array addBook:book1];
        [array addBook:book2];
        [array addBook:book3];
        [array addBook:book4];
        [array addBook:book5];
        
        [array listAllBooks];
        
        [array acordingToName:@"shiji" changePrice:50];
        NSLog(@"price:%ld",book1.price);
        
//        for (Book *book in array) {
//            NSLog(@"name:%@,price:%ld",book.name,book.price);
//        }
        [array deleteBook:@"shiji"];
        [array listAllBooks];
#endif
        
        /*创建字典对象*/
        BookDictionary *bd = [[BookDictionary alloc] init];

    
        Book *book1 = [[Book alloc] initWithName:@"shiji" price:45];
        Book *book2 = [[Book alloc] initWithName:@"shanghaitan" price:63];
        Book *book3 = [[Book alloc] initWithName:@"antusheng" price:52];
        Book *book4 = [[Book alloc] initWithName:@"meili" price:23];
        Book *book5 = [[Book alloc] initWithName:@"qingnian" price:53];
        
        [bd addBook:book1];
        [bd addBook:book2];
        [bd addBook:book3];
        [bd addBook:book4];
        [bd addBook:book5];
        [bd showAllBooks];
        NSLog(@"\n");
        
        
        [bd deleteBook:@"qingnian"];
        [bd showAllBooks];
        
        NSLog(@"\n");
        [bd searchOfName:@"shiji" changePrice:100];
        [bd showAllBooks];
        

        
        

        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
