//
//  CarPage.m
//  AbstractFactory-iOS
//
//  Created by niezhiqiang on 2022/1/25.
//

#import "CarPage.h"

@interface CarPage ()

@end

@implementation CarPage

- (instancetype)init {
    if (self = [super init]) {
        self.tabBarItem.title = @"打车";
        self.view.backgroundColor = UIColor.lightGrayColor;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"打车";
    label.font = [UIFont systemFontOfSize:30];
    label.textColor = UIColor.redColor;
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
