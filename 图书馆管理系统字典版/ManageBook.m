//
//  ManageBook.m
//  OC05_课后作业
//
//  Created by dllo on 15/12/6.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "ManageBook.h"

@implementation ManageBook
- (id)init {
    self = [super init];
    _dic = [NSMutableDictionary dictionaryWithCapacity:1];
    if (self) {
        for (char i = 0; i < 26; i++) {
            NSString *key = [NSString stringWithFormat:@"%c",'A'+ i];
            [_dic setValue:[[NSMutableArray alloc] initWithCapacity:1] forKey:key];
        }
    }
    return self;
}


- (BOOL)addBook:(Book *)book {
    BOOL isAdd = NO;
    if ([[book name]length] == 0 || [book price] == 0 ) {
        NSLog(@"添加失败");
    }else {
        for (int i = 0; i < _dic.count; i++) {
            NSString *key = [[_dic allKeys] objectAtIndex:i];
            if ([[book group] isEqualToString:key]) {
                [[_dic objectForKey:key] addObject:book];
                isAdd = YES;
         
            }
        }
    }
    return isAdd;
}

- (BOOL)deleteBook:(NSString *)name {
    BOOL isDelete = NO;
    for ( int i = 0; i < _dic.count; i++ ) {
        NSString *key = [[_dic allKeys] objectAtIndex:i];
    for (int j = 0; j < [[_dic objectForKey:key]count]; j++) {
        
        if ([[[[_dic objectForKey:key] objectAtIndex:j] name]isEqualToString:name]) {
            [[_dic objectForKey:key] removeObjectAtIndex:j];
            isDelete = YES;
        }
    }
    }
        return isDelete;


}



- (BOOL)deleteGroup:(NSString *)group; {
    BOOL isDelete = NO;
    for (int i = 0; i < _dic.count; i++) {
        NSString *key = [[_dic allKeys] objectAtIndex:i];
        for (int j = 0; j < [[_dic objectForKey:key]count]; j++) {
            if ([[[[_dic objectForKey:key]objectAtIndex:j]group ]isEqualToString:group]) {
            [[_dic objectForKey:key]removeObjectAtIndex:j];
            j--;
    /*因为数组对象是可变的,当删除一本书后,j往上自增一次,就会少删一本书,删不掉全组的数,保证j在0的位置*/
//        if (group == key) {
//            [_dic removeObserver:[_dic objectForKey:key] forKeyPath:key];
//        }
        
                isDelete = YES;
        }
        }
    }
    return isDelete;
}

- (void)changePriceOfBook:(NSString *)name :(NSInteger)price {
         for (int i = 0; i < _dic.count; i ++) {
        NSString *key = [[_dic allKeys] objectAtIndex:i];/*遍历数组对象*/
             
        for (int j = 0; j < [[_dic objectForKey:key] count]; j++) {/*遍历数组中的对象*/
            
            if ([[[[_dic objectForKey:key] objectAtIndex:j]name]isEqualToString:name]) {
                
                
                [[[_dic objectForKey:key] objectAtIndex:j] setPrice:price];
                
        
                Book *book = [[_dic objectForKey:key] objectAtIndex:j];
                book.price = price;
                
           //     [[[_dic objectForKey:key] objectAtIndex:j].price] = price;
              
            }
        }
    }
    
                 }














- (void)showAll {
    NSLog(@"%@",_dic);
}






@end
