//
//  ViewController.h
//  Controlling_WebView
//
//  Created by Илья Юхновский on 31.05.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    NSTimer *timer;
    
}

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;


@end

