//
//  ViewController.h
//  MiniBrowser
//
//  Created by Developer on 2021/07/05.
//

#import <UIKit/UIKit.h>
//#import <WebKit/WebKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
- (IBAction)bookmarkAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;


// WKWebView의 경우 WebKit/WebKit.h를 import해야함.
// ㅠㅠ 안되서 결국 WebView로함..
//@property (weak, nonatomic) IBOutlet WKWebView *mainWebView;


@end

