//
//  TestHashAndMapTableClass.h
//  Test-NSHashTable
//
//  Created by 孙鹏举 on 2021/3/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef struct Node{
    struct Node *next;
    int val;
} Node;


@interface TestHashAndMapTableClass : NSObject

@end

NS_ASSUME_NONNULL_END
