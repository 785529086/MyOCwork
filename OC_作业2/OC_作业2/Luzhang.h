//
//  Luzhang.h
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Corpse.h"

@interface Luzhang : Corpse
{
    NSString *_daoju;
    NSString *_ruodian;
}

-(void)setDaoJu:(NSString *)daoju;
-(NSString *)daoju;


-(void)setRuoDian:(NSString *)ruodian;
-(NSString *)ruodian;



-(instancetype)initWithZongxueliang:(NSInteger)zongxueliang
                   meicishixueliang:(NSInteger)meicishixueliang
                              daoju:(NSString *)daoju
                            ruodian:(NSString *)ruodian;


+(instancetype)LuZhangCorpseWithZongXueLiang:(NSInteger)zongxueliang
                            meicishixueliang:(NSInteger)meicishixueliang
                                       daoju:(NSString *)daoju
                                     ruodian:(NSString *)ruodian;
@end
