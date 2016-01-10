//
//  Fraction.h
//  OC03-课后作业
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//
/*
创建一个Fraction类(分数)实现分数的加减乘除,⽐较⼤小、约分等方法。
提示：1.声明属性 numerator(分子)、denominator(分母)。
2.声明自定义初始化方法、遍历构造器，用于给分子分母赋值。
3.声明功能方法。*/
#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property (nonatomic, assign)NSInteger numerator;
@property (nonatomic, assign)NSInteger denominator;
- (instancetype)initNumerator:(NSInteger)numerator
                  denominator:(NSInteger)denominator;
/*上面一大长串为方法,返回值:instancetype 方法名: initNumerator:denominator:  参数类型为(NSIteger)参数名为numerator   */
+ (instancetype)FractionWithNumerator:(NSInteger)numerator
                          denominator:(NSInteger)denominator;

- (Fraction *)AddFraction:(Fraction *)fration;
- (Fraction *)DifferenceFraction:(Fraction *)fration;
- (Fraction *)takeFraction:(Fraction *)fraction;
- (Fraction *)divideFraction:(Fraction *)fraction;
- (void)reduce;
/** 比较两个分数的大小 */
- (NSComparisonResult)compareWithFraction:(Fraction *)frac;

@end
