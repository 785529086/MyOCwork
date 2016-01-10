//
//  Book.h
//  图书馆管理系统3
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) NSInteger price;

- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price;


@end
