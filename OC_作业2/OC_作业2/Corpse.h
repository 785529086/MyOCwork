//
//  Corpse.h
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
///*作业2: 僵尸作业。需求：
/*1、定义普通僵尸类：
实例变量：僵尸总血量、僵尸每次失血量。
方法：初始化方法，便利构造器， setter和getter。
2、定义路障僵尸类：
实例变量：僵尸总血量、僵尸每次失血量，道具，弱点。
方法：初始化方法，便利构造器，setter和getter。
3、在main.m中创建普通僵尸对象、路障僵尸对象。*/

#import <Foundation/Foundation.h>

@interface Corpse : NSObject
{
    NSInteger _zongxueliang;
    NSInteger _meicishixueliang;
}

- (void)setZongxueliang:(NSInteger)zongxueliang;
- (NSInteger)zongxueliang;

- (void)setMeicishixueliang:(NSInteger)meicishixueliang;
- (NSInteger)meicishixueliang;

- (instancetype)initWithZongxueliang:(NSInteger)zongxueliang
                    meicishixueliang:(NSInteger)meicishixueliang;

+ (instancetype)CorpseWithZongxueling:(NSInteger)zongxueliang
                     meicishixueliang:(NSInteger)meicishixueliang;




@end
