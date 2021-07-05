//
//  ViewController.h
//  MiniBrowser
//
//  Created by Developer on 2021/07/05.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;

// WKWebView의 경우 WebKit/WebKit.h를 import해야함.
@property (weak, nonatomic) IBOutlet WKWebView *mainWebView;


@end

