//
//  Student.h
//  OC作业_1
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString* _name;
    NSString*_gender;
    NSInteger _age;
    NSInteger _number;
}
-(void)JiangKe;
-(void)DoHomework;
-(void)AskQuestion;
@end
