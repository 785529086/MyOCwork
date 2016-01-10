//
//  Corpse.m
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Corpse.h"

@implementation Corpse
- (void)setZongxueliang:(NSInteger)zongxueliang {
    _zongxueliang = zongxueliang;
}
- (NSInteger)zongxueliang {
    return _zongxueliang;
}

- (void)setMeicishixueliang:(NSInteger)meicishixueliang {
    _meicishixueliang = meicishixueliang;
}
- (NSInteger)meicishixueliang {
    return _meicishixueliang;
}


- (instancetype)initWithZongxueliang:(NSInteger)zongxueliang
                    meicishixueliang:(NSInteger)meicishixueliang
{
    self = [super init];
    if (self) {
        _zongxueliang = zongxueliang;
        _meicishixueliang = meicishixueliang;
    }
    return self;
}


+ (instancetype)CorpseWithZongxueling:(NSInteger)zongxueliang
                     meicishixueliang:(NSInteger)meicishixueliang
{
    Corpse *corpse = [[Corpse alloc] initWithZongxueliang:1000 meicishixueliang:100];
    return corpse;
}




@end
