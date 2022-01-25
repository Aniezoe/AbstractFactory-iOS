//
//  ViewController.m
//  AbstractFactory-iOS
//
//  Created by niezhiqiang on 2022/1/24.
//

#import "ViewController.h"
#import "AbstractFactory.h"
#import "SpecificProducts.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<BikeFactoryMethodProtocol> item0 = [[AbstractFactory sharedFactory] createProduct:@protocol(BikeFactoryMethodProtocol)];

    id<CarFactoryMethodProtocol> item1 = [[AbstractFactory sharedFactory] createProduct:@protocol(CarFactoryMethodProtocol)];

    id<MovieFactoryMethodProtocol> item2 = [[AbstractFactory sharedFactory] createProduct:@protocol(MovieFactoryMethodProtocol)];

    id<TakeoutFactoryMethodProtocol> item3 = [[AbstractFactory sharedFactory] createProduct:@protocol(TakeoutFactoryMethodProtocol)];
    
    self.viewControllers = @[item0, item1, item2, item3];
}

@end
