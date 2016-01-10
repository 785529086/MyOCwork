//
//  main.m
//  OC试题
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        int a = 10;
//        NSNumber *b = [[NSNumber alloc] initWithInt:a];
//        NSLog(@"%d", a+++b);
//        NSString *name = [[NSString alloc]initWithString:@"张三"];
//        NSLog(@"%ld",[name retainCount]);
        
    
        
        /*
        OC第九节：
        
        
        1.为一个类扩展功能用___BCD_____？
        A、Delegate  B、Extension  C、Protocol  D.Category
        
        2.为一个类添加私有方法用___B____？
        A、Delegate  B、Extension  C、Protocol  D.Category
        
        3.协议的关键字是___C_____？
        A、Delegate  B、Extension  C、Protocol  D.Category
        
        4.协议里的方法可选度有哪些（多选）__BD___种？
        A、@private  B、@optional     C、@protected    D、@required    E、@public
        
        5.简述OC是怎样为类扩展的，有哪些区别？（面试题）
        继承：子类添加的方法，原始类没有拥有。
        类目：新添加的方法是原始类的一部分。
        延展：只能添加私有方法，并且只能为有源码的类添加延展。
        协议：协议是一堆方法的声明，想要扩充该功能，需要类服从该协议，并且实现协议中的方法，而且只能扩充方法。
        
        6.非正式协议和正式协议有什么区别，请简答？（面试题）
        （提示，可以自己查一下资料）
        正式协议：显示的采用协议，采用协议的方法是在类的@interface声明中列出协议的名称，此时，实现协议的类应该遵守协议，承诺实现协议中的所有方法，否则编译器会发出警告。
        非正式协议：协议中的方法有两类属性，@require（默认）和@optional两种，@require属性的要求实现协议的类必须要实现这种方法，而@optional属性的方法则不要求，如果不确定协议是否被实现，可以使用respondsToSelector:@select()来判断
         
         
         
         OC第八节 — 内存管理高级
         
         1、OC中与alloc相反的方法是：A
         A、release
         B、retain
         C、dealloc
         D、free
         
         2、使用KVC为对象person的属性name赋值的方法: B
         A、[person setObject:@“张三” forKey:@“name”];  字典
         B、[person setValue:@“张三” forKey:@“name”];
         C、[person valueForKey:@“name”];   取值
         D、[person objectForKey:@“name”];   字典取值
         
         3、以下代码执行后，person对象的retain count是多少：B
         Person * person = [[Person alloc] init];
         [person retain];
         [person release];
         A、0
         B、1
         C、2
         D、3
         
         4、OC中与retain相反的方法是： A
         A、release
         B、alloc
         C、dealloc
         D、free
         
         5、下面哪些选项是属性的正确声明方式：C
         A、@property (nonatomic, retain) NSString myString;
         B、@property (nonatomic, assign) NSString *myString;
         C、@property (nonatomic, assign) int mynumber;
         D、@property (nonatomic, retain) int mynumber;
        
         6、NSString *name = [[NSString alloc]initWithString:@"张三"];
         NSLog(@"%d",[name retainCount]);
         上述代码打印结果是：A
         A、-1
         B、0
         C、1
         D、2
         
         7、OC中的委托最好声明成：B
         A、retain
         B、assign
         C、copy
         D、readonly
         
         8、下列说法中错误的是：C
         A、Objective-C不用"函数调用",而用互相传递讯息.
         B、Objective-C一个完整的类分为interface和implementation两块
         C、Objective-C对象使用new分配内存,用delete释放 release
         D、Objective-C协议分为非正式协议和正式协议
         
         9、以下说法不正确的是：A
         A、nonatomic：提供多线程保护，提高性能，在没有使用多线程的编程中可以选择使用。
         B、assign:属性默认值。说明设置器直接进行赋值，针对基础数据类型 （NSInteger，CGFloat）和C数据类型（int, float, double, char）等等。
         C、retain:此属性只用于obj-c的对象类型，对参数进行release旧值，再retain新值。
         D、copy:此属性只对实现NSCopying协议的对象有效(比如NSString)。拷贝工作由copy方法执行。
         
         
         
         
         10、使用KVO赋值时, 如果没有找到对应的key值, 调用下列哪个方法? C
         A.setValue:forKey
         B.valueForKey:
         C.setValue:forUndefinedKey:
         D.valueForUndefinedKey:
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         答案：
         1.A
         2.B
         3.B 
         4.A
         5.C
         6.A
         7.B
         8.C
         9.A
         10.C

         OC第七节：
         
         1.OC使用_引用计数____管理内存。
         2.OC中管理内存的方式有__MRC___、___ARC___。
         3.能造成引用计数+1的操作有_acllo____、__retain___、___copy__。
         4.能造成引用计数-1的操作有_release____、__autorelease____。
         5.autorelease要配合_自动释放池___使用，才能在_释放池销毁___时间造成引用计数-1。
         6.当引用计数变成0时, 会调用__delloc___方法。
         7.向空指针发送一个消息会引起Crash吗？
         8.对象如果想要实现copy, 需要遵守___NScopying__协议?
         9.使用便利构造器创建的对象需要管理内存吗？不需要
         10.内存管理的原则是什么？
         
         答案:
         1.引用计数
         2.MRC ARC
         3.alloc retain copy
         4.release autorelease
         5.自动释放池  释放池销毁
         6.dealloc
         7.不会
         8.NSCopying
         9.不需要
         10.凡是使用了alloc、retain或者copy让内存的引用计数增加了，就需要使用release或者autorelease让内存的引用计数减少。在一段代码内，增加和减少的次数要相等。
         
         
         
         OC第六节：
         
         
         1.for..in 遍历字典时, 遍历到的是_____A___？
         A、key  B、value  C、键值对  D.allKeys
         
         2.sortUsingSelector: 的参数类型是___A____？
         A、SEL  B、NSString  C、NSComparisonResult  D. id
         
         3.compare:方法可完成哪些数数据类型的排序____A____？
         A、NSString  B、int  C、float  D.以上均可
         
         4.对可变数组进行数组排序时使用的方法名是___________？
         
         5.对于一个存放person对象的数组, 如果要使用sortedArrayUsingDescriptors: 方法根据姓名进行升序排序, 那么请定义一个所需的NSSortDescriptor对象
         
        
         
         6.方法:sortedArrayUsingSelector:  与  sortUsingSelector: 区别是什么？
         
         7.遍历集合的方式有_____, _____, ______?
         
         8.使用sortUsingSelector: @selector(compare)对数组进行排序时, 排序的结果是__B_?
         降序   B.升序   C.以上都有可能
         
         9.两个对象比较的结果, 返回值类型是______?
         
         
         
         
         
         
         
         答案:
         
         1.A
         
         2.A
         
         3.A
         
         4.sortUsingSelector:
         
         5.NSSortDescriptor * sortWithName = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
         
         6.
         sortedArrayUsingSelector:  将原数组中的对象排序后, 放到新的数组中返回, 原数组中的对象位置不变.
         sortUsingSelector: 直接对原数组中的对象进行排序. 只适用于可变数组
         
         7.for循环,  for...in快速枚举,  NSEnumerator
         
         8.B
         
         9.NSComparisonResult
         
         
         OC第五节：
         
         1.以下代码
         NSArray *array = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", @"2", nil];
         NSMutableSet *set = [[NSMutableSet alloc] init];
         for(NSString *str in array)
         {
         [set addObject:str];
         }
         NSLog(@“%lu", [set count]);
         控制台打印的结果是___A____？
         A、4
         B、5
         C、6
         D、7
         
         2.现有如下集合，能准确删除“张三”的代码是___A____？
         NSMutableDictionary * peoples = [NSMutableDictionary dictionaryWithObjectsAndKeys:@“张三", @“左护法", @“李四", @“右使", @“王二", @"老大哥", nil];
         A、[peoples removeObjectForKey:@"左护法"];
         B、[peoples removeObject:@"张三"];
         C、[peoples removeObjectAtIndex:0];
         D、[peoples removeAllObjects];
         
         3.NSArray *array = [NSArray arrayWithObjects:@"one", @"two", @“three", nil];
         NSLog(@"%@", [array objectAtIndex:1]);
         NSLog(@"%@", [array objectAtIndex:3]);
         控制台中打印的最后一条信息会是_____D________？
         A、one   B、two    C、three    D、崩溃信息
         
         4.获取字典中元素的个数使用_______count______？
         
         5.删除数组中指定下标位置的对象的方法_____removeobjectindex________？
         
         6.NSMutableSet的父类是_____NSset_______？NSCountSet获取对应对象的计数器的方法____________？
         
         
         7.下面程序段的输出结果是什么： B
         NSMutableArray * arr1 = [[NSMutableArray alloc] initWithObjects:@"1", @"2", @"3", nil];
         [arr1 addObject:@"0"];
         [arr1 replaceObjectAtIndex:2 withObject:@"3"];
         NSLog(@"%@",arr1);
         A、0,1,2,3
         B、1,2,3,0
         C、1,3,3,0
         D、0,3,2,3
         
         
         8.下面程序段的输出结果是什么：A
         NSMutableDictionary * dic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"1",@"2",@"2",@"3",@"3",@"4", nil];
         [dic removeObjectForKey:@"3"];
         NSLog(@"%@",dic);
         A、1=2 3=4
         B、1=2 2=3
         C、2=1 4=3
         D、2=1 3=2
         
         9.NSMutableDictionary * dic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"1",@"2",@"2",@"3",@"3",@"4", nil];      B
         NSArray *arr = [[NSArray alloc] initWithArray:[dic allKeys]];
         NSString *str = [[NSString alloc] initWithFormat:@“%@%@%@”, [arr objectAtIndex:0], [arr objectAtIndex:1], [arr objectAtIndex:2]];
         NSLog(@"%@",str);
         结果是：
         A、123
         B、234
         C、2
         D、3
         
         10.将NSString转换成NSArray, 使用的方法___B_?
         A.componentsJoinedByString:
         B.componentsSeparatedByString:
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         答案:
         
         1.A
         
         2.A
         
         3.D
         
         4.count
         
         5.removeObjectAtIndex：
         
         6.NSSet  countForObject:
         
         7.B
         
         8.C
         
         9.B
         
         10.B
         
         OC第四节：
         
         
         1.下面哪项不是字符串的初始化方法____A____？
         A、int  B、initWithFormat:  C、initWithUTF8String:  D.stringWithFormat:
         
         2.求字符串长度的方法是____A___？
         A、length  B、long  C、lang  D.width
         
         3.下列哪项不是获取字符串子串的方法___A_____？
         A、subViews  B、substringToIndex:  C、substringFromIndex:  D、substringWithRange:
         
         4.字符串比较的方法是___A___?
         A、compare:  B、uppercaseString  C、lowercaseString  D、capitalizedString
         
         5..下列代码正确的输出结果是：( B)
         NSString * urlStr = @"www.lanou3g.com";
         NSRange range = NSMakeRange(4,7);
         NSString *prefix = [urlStr substringWithRange:range];
         NSLog(@"%@",prefix);
         
         A、lan
         B、lanou3g
         C、www.lan
         D、ou3g
         
         6.下面程序段的输出结果是什么：(D)
         int a = 10;
         NSNumber *b = [[NSNumber alloc] initWithInt:a];
         NSLog(@"%d", a+++b);
         A、21
         B、20
         C、30
         D、编译错误
         
         
         D
         7.NSString * str =[[NSString alloc]initWithFormat:@"%@",@"iLanou123ios"];
         NSString * str1=[str substringToIndex:3];
         NSString * str2=[str substringWithRange:NSMakeRange(6, 3)];
         NSString * newStr=[str1 stringByAppendingString:str2];
         NSLog(@"newStr=%@",newStr);
         则newStr的值为：(D)
         
         A、iLanou
         B、iL123
         C、iLaios
         D、iLa123
         
         8.基本数据类型可转化为OC中的__________对象类型.
         
         9.结构体类型可转化为OC中________对象类型.
         
         10.可变字符串与不可变字符串的区别？
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         答案:
         
         1.D
         
         2.A
         
         3.A
         
         4.A
         
         5.B
         
         6.D
         
         7.D
         
         8.NSNumber
         
         9.NSValue
         
         10可变字符串：在不可变字符串的基础上添加了对原有字符串增，删，改的操作，而不可变字符串操作的副本， 方法都有一个返回值。
         
         
         OC 第三节: 属性
         
         1.下面属于非原子特性的是(D  )
         A.retain  B.atomic  C.assign    D.nonatomic
         
         2. NSInteger  age ;要声明成属性，用什么语义特性来修饰( D )
         A.copy  B.retain C.readonly D.assign
         
         3.用readonly来修饰的属性,setter和getter方法都会生成.(cuo )
         4.属性的点语法点的是方法名. (X)
         5.属性的作用是生成setter和getter方法. (  )
         6.属性生成的实例变量子类可以访问.  (  )
         
         7.@property负责setter、getter方法的( ), @synthesize负责setter、getter方法的(    );
         
         8.self.name = @“Lily”;   self.name 相当于在执行的(  ) (提示: setter   or   getter)
         
         9.NSLog(@“%@” , self.name);
         self.name 相当于在执行的(  ) (提示: setter   or   getter)
         
         10.属性和实例变量的关系?
         
         
         
         
         
         
         
         
         
         1：D
         2:  D
         3: 错
         4: 错
         5: 对
         6: 错
         7: 声明  实现
         8：setter  赋值方法
         9：getter  取值方法
         10: 属性的作用是生成setter和getter方法的实现,如果内部所操作的实例变量没有定义, 会自动生成_属性名的实例变量, 但是实例变量的可见度是私有的.子类不能访问.
         
         
         
         OC第二节：
         
         
         1.自定义一个Person类，下面哪个选项是规范的便利构造器声明方式  D
         A、-(id)personWithName:(NSString *)theName;
         B、-(id)personwithName:(NSString *)theName;
         C、+(id)personwithName:(NSString *)theName;
         D、+(id)personWithName:(NSString *)theName;
         
         2.在实例方法中, self指的是__A_?
         A  调用当前方法的对象      B  指当前的类名
         
         3.在类方法中, self指的是_B__?
         A  调用当前方法的对象      B  指当前的类名
         
         4.[super init]中的super是什么含义?  C
         A. 超级	B.父类	C.用于调用父类方法
         
         5.子类可以继承父类的__ABCD__?(多选)
         A.实例变量 	B.方法	C.特征	D.行为
         
         6.Objective-C继承的特点__AB__?(多选)
         A.单根继承	B.单向继承	C.单独继承	D.单层继承
         
         7.初始化方法的特点____?(多选)
         A.初始化方法是”+”方法
         B.初始化方法是”-”方法
         C.返回值是void
         D.返回值是id或instancetype
         E.方法名以init开头
         F.方法名以类名开头
         
         
         
         答案:
         
         1.D
         
         2.A
         
         3.B
         
         4.C
         
         5.ABCD
         
         6.AB
         
         7.BDE
         
         OC第一节：
         
         
         1.面向对象语言的特性不包括(D)
         A、封装  B、继承  C、多态  D 、构造
         
         2.关于类和对象的概念,下列属于对象的是(C)
         A、奥迪A4L  B、保龄球  C、蓝鸥CEO辉哥  D.西红柿
         
         3.OC中包含一个自定义的头文件应该使用(C)
         A、#include “”  B、#include <>  C、#import “”  D.#import <>
         
         4.对于OC中的方括号 “[]”的作用，下列说法错误的是（D）
         A、用于通知某个对象该做什么
         B、方括号内第一项是对象,其余部分是你需要对象执行的操作
         C、在Objective-C中通知对象执行某种操作,称为发送消息.(也叫调用方法)
         D、方括号中可以为空
         
         5.类的定义包括_____接口______部分和____实现_______部分。
         
         6.+号方法使用________类____调用， -号方法使用_____对象_______调用。
         
         7.对象创建的过程包含_____开辟空间_______和____初始化________两部分。
         
         8.面向对象语言的特性_____封装_______、______继承_____、_____多态_______。
         
         9.一个文件中只能定义一个类。          				（X ）
         10.setter方法的作用是获取实例变量的值。          	         （X ）
         11.在类方法中可以使用实例变量。	                （X）
         12.简述面向过程和面向对象两种编程思想的区别。
         13.简述类的对象的区别。 
         
         
         答案:
         
         1、 D
         2、C
         3、C
         4、D
         5、 接口    实现
         6、 类       对象
         7、开辟空间  初始化
         8、 封装  继承 多态
         9、 错
         10、错
         11、错
         12、
         面向过程是以事件为中心，关心的是事件完成的整个详细的过程。
         面向对象是以事物为中心，关心的是参与该事件的每个事物具备什么功能。
         13、
         类是一类具有相同特征和行为的事物的抽象， 是一个抽象的概念，在生活中不具体。
         
         对象是类的实例， 是类的具体体现， 是具体的。 生活中的万物皆是对象。


        */
        
        
        

    }
    return 0;
}
