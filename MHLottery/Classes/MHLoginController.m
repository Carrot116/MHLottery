//
//  MHLoginController.m
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHLoginController.h"
#import "UIImage+MHExtension.h"
#import "MHButton.h"
#import "MHSettingController.h"

@interface MHLoginController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIImageView *loginImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;

- (IBAction)onClickLogin:(id)sender;
- (IBAction)onClickForgetPwd:(id)sender;
- (IBAction)onClickRegister:(id)sender;
- (IBAction)onSetting:(id)sender;
@end

@implementation MHLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect rcBounds = self.loginImageView.bounds;
    CGSize sizeImage = self.loginImageView.image.size;
    self.imageHeightConstraint.constant = sizeImage.height / sizeImage.width * rcBounds.size.width;
    [self.loginBtn setBackgroundImage:[UIImage resizeableWithName:@"RedButton"] forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:[UIImage resizeableWithName:@"RedButtonPressed"] forState:UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onClickLogin:(id)sender {
    NSLog(@"---- onClickLogin");
}

- (IBAction)onClickForgetPwd:(id)sender {
    NSLog(@"---- onClickForgetPwd");

}

- (IBAction)onClickRegister:(id)sender {
    NSLog(@"---- onClickRegister");

}

- (IBAction)onSetting:(id)sender {
    MHSettingController* settingController = [[MHSettingController alloc]init];
    [self.navigationController pushViewController:settingController animated:YES];
}
@end
