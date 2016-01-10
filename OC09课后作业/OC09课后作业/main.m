//
//  main.m
//  OC09课后作业
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//
/*  给NSMutableArray添加convert方法，实现数组倒序。 */

#import <Foundation/Foundation.h>
#import "NSMutableArray+covert.h"
int main(int argc, const char * argv[]) {

    NSMutableArray *arr = @[@"zhangsan",@"liming",@"wangwu",@"niuniu",@"zeng"].mutableCopy;

    
    
    [arr covert];
    for (NSString *str in arr) {
        NSLog(@"%@",str);
    }
    
    
    
    
    
    
    return 0;
}
