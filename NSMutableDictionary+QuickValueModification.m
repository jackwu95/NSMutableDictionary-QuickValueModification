//
//  NSMutableDictionary+SImpleMath.m
//
//  Created by Jack Wu on 2014-05-23.
//

#import "NSMutableDictionary+QuickValueModification.h"

@implementation NSMutableDictionary (QuickValueModification)

- (void)incrementIntValueOfKey:(NSString *)key {
    [self modifyIntegerValueOfKey:key withBlock:^NSInteger(NSInteger i){
        return ++i;
    }];
}

- (void)decrementIntValueOfKey:(NSString *)key {
    [self modifyIntegerValueOfKey:key withBlock:^NSInteger(NSInteger i){
        return --i;
    }];
}
                                
- (void)modifyIntegerValueOfKey:(NSString*)key withBlock:(NSInteger (^)(NSInteger i))operation {
    if (!self[key]) {
        self[key] = @(0);
    }
    else if (![self[key] isKindOfClass:[NSNumber class]]) {
        NSLog(@"Value to modify is incorrect type");
        return;
    }
    
    
    self[key] = @(operation([self[key] integerValue]));
}

- (void)modifyFloatValueOfKey:(NSString*)key withBlock:(CGFloat (^)(CGFloat f))operation {
    if (!self[key]) {
        self[key] = @(0.0f);
    }
    if (![self[key] isKindOfClass:[NSNumber class]]) {
        NSLog(@"Value to modify is incorrect type");
        return;
    }
    
    self[key] = @(operation([self[key] floatValue]));
}

@end
