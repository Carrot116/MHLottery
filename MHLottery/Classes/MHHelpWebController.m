//
//  MHHelpWebController.m
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHHelpWebController.h"

@interface MHHelpWebController() <UIWebViewDelegate>

@end

@implementation MHHelpWebController

- (void)loadView{
    self.view = [[UIWebView alloc]init];
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.title = self.item.title;
    
    UIWebView* webView = (UIWebView*)self.view;
    webView.delegate = self;
    
    NSURL* url = [[NSBundle mainBundle] URLForResource:self.item.html withExtension:nil];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    NSLog(@"%@ \n %@ \n %@", url, request, webView);
    
    
//    NSError* error;
//    NSString *filePath = [[NSBundle mainBundle]pathForResource:self.item.html ofType:nil];
//    NSString *htmlString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
//    NSLog(@"%@ %@",htmlString,error);
//    [webView loadHTMLString:htmlString baseURL:[NSURL URLWithString:filePath]];
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(onClickClose)];
}

- (void)onClickClose{
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));
    [self dismissViewControllerAnimated:YES completion:^{
        ;
    }];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"-----did finish load---");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"%@",error);
}
@end
