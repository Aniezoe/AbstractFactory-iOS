//
//  BikePage.m
//  AbstractFactory-iOS
//
//  Created by niezhiqiang on 2022/1/25.
//

#import "BikePage.h"

@interface BikePage ()

@end

@implementation BikePage

- (instancetype)init {
    if (self = [super init]) {
        self.tabBarItem.title = @"骑行";
        self.view.backgroundColor = UIColor.lightGrayColor;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"骑行";
    label.font = [UIFont systemFontOfSize:30];
    label.textColor = UIColor.greenColor;
    [self.view addSubview:label];
    [label sizeToFit];
    label.center = CGPointMake([UIScreen mainScreen].bounds.size.width * 0.5, 100);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
