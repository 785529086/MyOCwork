//
//  main.m
//  OC03-课后作业
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.

/*
 定义一个完整的Phone类，包含属性（添加特性）、初始化方法、便利构造器，以及功能方法。
 
 创建一个Fraction类(分数)实现分数的加减乘除,⽐较⼤小、约分等方法。
提示：1.声明属性 numerator(分子)、denominator(分母)。
2.声明自定义初始化方法、遍历构造器，用于给分子分母赋值。
3.声明功能方法。*/

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fra1 = [[Fraction alloc] initNumerator:3 denominator:5];
   /*   先开辟空间,再引用了初始化方法,方法名为:initNumerator: denominator:  */
        NSLog(@"numerator:%ld,denominator:%ld",fra1.numerator,fra1.denominator);
        Fraction *fra2 = [[Fraction alloc] initNumerator:2 denominator:4];
        Fraction *sumFraction = [[Fraction alloc] init];
        sumFraction = [fra1 AddFraction:fra2];
        NSLog(@"%ld / %ld",sumFraction.numerator,sumFraction.denominator);
        
        Fraction *subFraction = [[Fraction alloc] init];
        subFraction = [fra1 DifferenceFraction:fra2];
        NSLog(@"%ld / %ld",subFraction.numerator,subFraction.denominator);
        
        Fraction *takeWithFraction = [[Fraction alloc] init];
        takeWithFraction = [fra1 takeFraction:fra2];
        NSLog(@"%ld / %ld",takeWithFraction.numerator,takeWithFraction.denominator);
        
        Fraction *devideWithFraction = [[Fraction alloc] init];
        devideWithFraction = [fra1 divideFraction:fra2];
        NSLog(@"%ld /%ld",devideWithFraction.numerator, devideWithFraction.denominator);
        
        [fra2 reduce];
        NSLog(@"numerator:%ld, denominator:%ld",fra2.numerator,fra2.denominator);
        
        
        
        
    }
    return 0;
}
