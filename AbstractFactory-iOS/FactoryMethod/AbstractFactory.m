//
//  AbstractFactory.m
//  AbstractFactory-iOS
//
//  Created by niezhiqiang on 2022/1/25.
//

#import "AbstractFactory.h"
#import "AbstractFactoryProtocol.h"

static NSString *kProtocol = @"FactoryMethodProtocol";
static NSString *kViewController = @"Page";

@implementation AbstractFactory

+ (instancetype)sharedFactory {
    static id sharedFactory = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedFactory = [[self alloc] init];
    });
    return sharedFactory;
}

- (id)createProduct:(Protocol *)protocol {
    NSString *protocolName = NSStringFromProtocol(protocol);
    NSString *className = [protocolName stringByReplacingOccurrencesOfString:kProtocol withString:kViewController];
    Class implClass = NSClassFromString(className);
    if (!implClass) {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"%@ protocol does not have match class", protocolName] userInfo:nil];
    }
    if ([[implClass class] respondsToSelector:@selector(shareInstance)]) {
        return [[implClass class] shareInstance];
    }
    return [[implClass alloc] init];
}

@end
