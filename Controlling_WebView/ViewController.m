//
//  ViewController.m
//  Controlling_WebView
//
//  Created by Илья Юхновский on 31.05.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.sberbank.ru"]]];
    [self.webView addSubview:self.indicator];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0/2.0 target:self selector:@selector(loading) userInfo:nil repeats:YES];
}

-(void)loading{
    if(!self.webView.loading){
        [self.indicator stopAnimating];
    } else {
        [self.indicator startAnimating];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
