//
//  NSMutableDictionary+SImpleMath.h
//
//  Created by Jack Wu on 2014-05-23.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (QuickValueModification)

- (void)incrementIntValueOfKey:(NSString *)key;
- (void)decrementIntValueOfKey:(NSString *)key;

- (void)modifyIntegerValueOfKey:(NSString*)key withBlock:(NSInteger (^)(NSInteger i))operation;
- (void)modifyFloatValueOfKey:(NSString*)key withBlock:(CGFloat (^)(CGFloat f))operation;

@end
