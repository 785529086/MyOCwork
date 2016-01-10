//
//  Teacher.h
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject
{
@public
    NSString *  _name;
    NSInteger _age;
    NSString* _gender;
    NSString* _course;
}
-(void)informationOfCourse:(Teacher * )teacher;
-(void)printfInformation;

@end
