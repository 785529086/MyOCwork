//
//  Fraction.m
//  OC03-课后作业
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
- (instancetype)initNumerator:(NSInteger)numerator
                  denominator:(NSInteger)denominator
{
    self = [super init];
    if (self) {
        self.numerator = numerator;
        self.denominator = denominator;
    }
    return self;

}

+ (instancetype)FractionWithNumerator:(NSInteger)numerator
                          denominator:(NSInteger)denominator
{
    Fraction *fra = [[Fraction alloc] initNumerator:2 denominator:5];
    return fra;

}
- (Fraction *)AddFraction:(Fraction *)fration {
    Fraction * newFraction = [[Fraction alloc] init];
    newFraction.numerator = self.numerator * fration.denominator + self.denominator * fration.numerator;
    newFraction.denominator = self.denominator * fration.denominator;
  
    NSInteger temp;
    NSInteger x = newFraction.numerator;
    NSInteger y = newFraction.denominator;
    while (x % y != 0) {
        temp = x % y;
        x = y;
        y = temp;
    }
    newFraction.numerator = newFraction.numerator / y;
    newFraction.denominator = newFraction.denominator / y;
      return newFraction;
}

- (Fraction *)DifferenceFraction:(Fraction *)fration {
    Fraction * newFraction = [[Fraction alloc] init];
    newFraction.numerator = self.numerator * fration.denominator - self.denominator * fration.numerator;
    newFraction.denominator = self.denominator * fration.denominator;
    NSInteger temp;
    NSInteger x = newFraction.numerator;
    NSInteger y = newFraction.denominator;
    while (x % y != 0 ) {
        temp = x % y;
        x = y;
        y = temp;
    }
    newFraction.numerator /= y;
    newFraction.denominator /= y;
    return newFraction;

}
- (Fraction *)takeFraction:(Fraction *)fraction {
    Fraction *newFraction = [[Fraction alloc] init];
    newFraction.numerator = self.numerator * fraction.numerator;
    newFraction.denominator = self.denominator * fraction.denominator;
    NSInteger temp;
    NSInteger x = newFraction.numerator;
    NSInteger y = newFraction.denominator;
    while (x % y != 0) {
        temp = x % y;
        x = y;
        y = temp;
    }
    newFraction.numerator /= y;
    newFraction.denominator /= y;
    return newFraction;
}
- (Fraction *)divideFraction:(Fraction *)fraction {
    Fraction *newFraction = [[Fraction alloc] init];
    newFraction.numerator = self.numerator * fraction.denominator;
    newFraction.denominator = self.denominator * fraction.numerator;
    NSInteger temp;
    NSInteger x = newFraction.numerator;
    NSInteger y = newFraction.denominator;
    while (x % y != 0 ) {
        temp = x % y;
        x = y;
        y = temp;
    }
    newFraction.numerator /= y;
    newFraction.denominator /= y;
    return newFraction;
}
- (void)reduce {
    NSInteger temp;
   NSInteger x = self.numerator;
    NSInteger y = self.denominator;
    while (x % y != 0) {
        temp = x % y;
        x = y;
        y = temp;
    }
    self.numerator /= y;
    self.denominator /= y;
}




//+ (instancetype)FractionWithNumerator:(NSInteger)numerator
//                          denominator:(NSInteger)denominator
//{
//    Fraction *fra = [[Fraction alloc] init];
//    fra.numerator = numerator;
//    fra.denominator = denominator;
//    return fra;
//}
@end
