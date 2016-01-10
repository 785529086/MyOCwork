//
//  Book.h
//  图书馆书籍管理系统2
//
//  Created by dllo on 15/12/6.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) CGFloat price;

- (id)initWithName:(NSString *)name price:(CGFloat)price;

@end
