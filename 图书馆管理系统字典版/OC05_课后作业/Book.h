//
//  Book.h
//  OC05_课后作业
//
//  Created by dllo on 12/5/15.
//  Copyright © 2015 doll. All rights reserved.
//
/*实现图书管理系统：
 1、使用数组管理所有书籍。
 2、数组可以添加、删除。
 3、可以从数组根据书名查找书籍，并修改书籍的价格。
 4、展示所有书籍清单（书名）。*/

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, readwrite, assign) NSInteger price;
@property (nonatomic, retain) NSString *group;

- (instancetype)initWithBookOfName:(NSString *)name
                             price:(NSInteger)price;

- (void)informationOfBook;
//- (NSString *)name;
//- (NSInteger)price;
//- (NSString *)group;


@end
