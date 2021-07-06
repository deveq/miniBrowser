//
//  ViewController.m
//  MiniBrowser
//
//  Created by Developer on 2021/07/05.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainWebView, urlTextField, bookmarkSegmentedControl, activityIndicatorView;

//http://it-archives.com/ 랑
//https://github.com/ddd503?tab=repositories&q=&type=&language=objective-c&sort= 참조하기

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //앱이 로드되자마자 facebook으로 접속되도록 지정함

    NSString *urlString = @"https://facebook.com";
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
    
    // http 프로토콜을 허용하기 위해
    // info.plist에 App Transport Security Settings 추가 - Allow arbitrary loads추가 후 YES
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [activityIndicatorView startAnimating];
    NSString *urlString = urlTextField.text;
    if (![urlString hasPrefix:@"http"]) {
        urlString = [NSString stringWithFormat:@"https://%@",urlString];
        urlTextField.text = urlString;
    }
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [textField resignFirstResponder];
    
    return YES;
}

- (IBAction)bookmarkAction:(id)sender {
    NSString *bookmarkURL = [bookmarkSegmentedControl titleForSegmentAtIndex:[bookmarkSegmentedControl selectedSegmentIndex]];
    
    bookmarkURL = [NSString stringWithFormat:@"https://%@.com", bookmarkURL];

    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:bookmarkURL]]];
    urlTextField.text = bookmarkURL;
}

-(void)webViewDidStartLoad:(UIWebView *)webView {
    [activityIndicatorView startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    [activityIndicatorView stopAnimating];
}
//- (IBAction)backAction:(id)sender {
//    if ([mainWebView canGoBack]) {
//        [mainWebView goBack];
//    }
//    
//}
//- (IBAction)forwardAction:(id)sender {
//    if ([mainWebView canGoForward]) {
//        [mainWebView goForward];
//    }
//
//}
//- (IBAction)stopAction:(id)sender {
//    [mainWebView stopLoading];
//}
//- (IBAction)refreshAction:(id)sender {
//    [mainWebView reload];
//}


@end
