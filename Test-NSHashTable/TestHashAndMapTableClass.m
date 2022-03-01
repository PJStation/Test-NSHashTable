//
//  TestHashAndMapTableClass.m
//  Test-NSHashTable
//
//  Created by 孙鹏举 on 2021/3/23.
//

#import "TestHashAndMapTableClass.h"


/*
 
 NSHashTable哈希表用来存储弱引用关系的时候使用，基本用不到
 
 enum {
     // 默认行为，强引用集合中的对象，等同于NSSet
     NSHashTableStrongMemory             = 0,
     // 在将对象添加到集合之前，会拷贝对象
     NSHashTableCopyIn                   = NSPointerFunctionsCopyIn,
     // 使用移位指针(shifted pointer)来做hash检测及确定两个对象是否相等；
     // 同时使用description方法来做描述字符串
     NSHashTableObjectPointerPersonality = NSPointerFunctionsObjectPointerPersonality,
     // 弱引用集合中的对象，且在对象被释放后，会被正确的移除。
     NSHashTableWeakMemory               = NSPointerFunctionsWeakMemory
 };
 typedef NSUInteger NSHashTableOptions;
 */
// 具体调用如下
@interface TestHashAndMapTableClass()

@end


@implementation TestHashAndMapTableClass {
    NSMutableDictionary  *_dic;
    NSMutableSet         *_set;
    NSHashTable          *_hashTable;
    
    NSMapTable<NSObject*,NSObject*> *mapTable;
    NSPointerArray *pointerArray;
    
}

- (instancetype)init {
    self = [super init];
    if (self) {
//        pointerArray = [[NSPointerArray alloc] initWithOptions:NSPointerFunctionsOpaqueMemory];
//        Node *node = (Node *)malloc(sizeof(Node));
//        NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
//        [mutableArray addObject:(__bridge id _Nonnull)(node)];
//        [pointerArray addPointer:node];
        
//        [_dic objectForKey:""];
        
        
//        mapTable = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsStrongMemory
//                                         valueOptions:NSPointerFunctionsStrongMemory];
//        NSObject *objKey = [NSObject new];
//        NSObject *objValue = [NSObject new];
//        [mapTable setObject:objValue forKey:objKey];
//        NSLog(@"%@",[mapTable objectForKey:objKey]);
        
        
//        NSNumber *nu;
//        NSString * s;
//        NSArray *AAL;
//        NSDictionary *dd;
    
        
        
        [self testWeakMemory];
        NSLog(@"_hashTable: %@", _hashTable);
//        NSLog(@"NSMutableSet 的强引用%@", _set);
//        NSLog(@"NSMutableDictionary 的强引用%@", _dic);

    }
    return self;
}
- (void)testWeakMemory {
    if (!_hashTable) {
//        _hashTable = [NSHashTable weakObjectsHashTable];
        _hashTable = [NSHashTable hashTableWithOptions:NSPointerFunctionsOpaqueMemory];
    }
    NSObject *obj = [[NSObject alloc] init];
    [_hashTable addObject:obj];
    NSLog(@"hash table [testWeakMemory] : %@", _hashTable);
    
//    if (!_set) {
//        _set = [[NSMutableSet alloc] init];
//    }
//    NSObject *obj2 = [[NSObject alloc] init];
//    [_set addObject:obj2];
//    NSLog(@"_set [testWeakMemory] : %@", _set);
//
//
//    if (!_dic) {
//        _dic = [NSMutableDictionary dictionary];
//    }
//    NSObject *obj3 = [[NSObject alloc] init];
//    _dic[@"obj"] = obj3;
//    NSLog(@"_dic [testWeakMemory] : %@", _dic);
}
@end
