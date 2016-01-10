//
//  main.m
//  OC_作业2
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Corpse.h"
#import "Luzhang.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Corpse * corpse = [[Corpse alloc] init];
        [corpse setZongxueliang:1000];
        [corpse setMeicishixueliang:100];
        Luzhang * js = [[Luzhang alloc]initWithZongxueliang:10000 meicishixueliang:1000 daoju:@"maozi" ruodian:@"meinv"];
        NSLog(@"zongxueliang:%ld, meicishixueliang:%ld, daoju:%@, ruodian:%@",js.zongxueliang,js.meicishixueliang,js.daoju,js.ruodian);
     //   Luzhang * luzhang = [[Luzhang alloc]init];
       
  
        
        
        
    }
    return 0;
}
