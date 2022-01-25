//
//  AbstractFactoryProtocol.h
//  AbstractFactory-iOS
//
//  Created by niezhiqiang on 2022/1/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractFactoryProtocol <NSObject>

@optional

+ (id)shareInstance;

@end

NS_ASSUME_NONNULL_END
