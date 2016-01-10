//
//  Luzhang.m
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Luzhang.h"

@implementation Luzhang
-(void)setDaoJu:(NSString *)daoju {
    _daoju = daoju;
}
-(NSString *)daoju {
    return _daoju;
}

-(void)setRuoDian:(NSString *)ruodian {
    _ruodian = ruodian;
}
-(NSString *)ruodian {
    return _ruodian;
}


-(instancetype)initWithZongxueliang:(NSInteger)zongxueliang
                   meicishixueliang:(NSInteger)meicishixueliang
                              daoju:(NSString *)daoju
                            ruodian:(NSString *)ruodian
{
    self = [super init];
    if (self) {
        _zongxueliang = zongxueliang;
        _meicishixueliang = meicishixueliang;
        _daoju = daoju;
        _ruodian = ruodian;
    }
    return self;
}

+ (instancetype)LuZhangCorpseWithZongXueLiang:(NSInteger)zongxueliang
                            meicishixueliang:(NSInteger)meicishixueliang
                                       daoju:(NSString *)daoju
                                     ruodian:(NSString *)ruodian
{
    Luzhang *luzhang = [[Luzhang alloc] initWithZongxueliang:1000 meicishixueliang:100 daoju:@"帽子" ruodian:@"西瓜"];
    
    return luzhang;

}











@end
