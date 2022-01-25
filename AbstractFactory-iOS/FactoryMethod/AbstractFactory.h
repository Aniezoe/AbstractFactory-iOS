//
//  AbstractFactory.h
//  AbstractFactory-iOS
//
//  Created by niezhiqiang on 2022/1/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractFactory : NSObject

+ (instancetype)sharedFactory;

- (id)createProduct:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
