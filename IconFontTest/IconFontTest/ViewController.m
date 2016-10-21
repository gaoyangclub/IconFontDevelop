//
//  ViewController.m
//  IconFontTest
//
//  Created by admin on 16/10/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ViewController.h"
#import "StringCodeUtils.h"

@interface ViewController ()

@end

@implementation ViewController

// 打印所有的字体名
static void dumpAllFonts() {
    for (NSString *familyName in [UIFont familyNames]) {
        for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
            NSLog(@"%@", fontName);
        }
    }
}

- (void)viewDidLoad {
//    dumpAllFonts();
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSLog(@"哈哈哈 %@",[StringCodeUtils utf8ToUnicode:@"安卓"]);
    UILabel * label = [[UILabel alloc] initWithFrame:
                       CGRectMake(0, self.view.center.y, 300, 150)
                       ];
    UIFont *iconfont = [UIFont fontWithName:@"iconfont" size: 200];
    label.numberOfLines = 0;
    label.text = @"\U000F0034 \U0000e66d";
    label.font = iconfont;
    label.adjustsFontSizeToFitWidth = YES;
    label.textColor = [UIColor grayColor];
//    [label sizeToFit];
    label.backgroundColor = [UIColor darkGrayColor];
    [self.view addSubview: label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
