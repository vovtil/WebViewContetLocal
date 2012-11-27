//
//  ViewController.m
//  WebViewContetLocal
//
//  Created by vladimir efremov on 03.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize WebView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
    NSString *balls = @"100";
    NSString *Name = @"Вася Пупкин";
    NSString *img1 = @"http://i.ctc.ru/assets/images/badges/iphone4/1.png";
    NSString *img2 = @"http://i.ctc.ru/assets/images/badges/iphone4/1.png";
    NSString *img3 = @"http://i.ctc.ru/assets/images/badges/iphone4/1.png";
    NSString *Text1 = @"Зритель";
    NSString *Text2 = @"Мачо";
    NSString *Text3 = @"Дизайно";
    NSString *countBalls1 = @"10";
    NSString *countBalls2 = @"10";
    NSString *countBalls3 = @"10";
    NSString *ballstr = @"балл";//4b4b4b
    NSString *color1 = @"f6c612";
    NSString *color2 = @"f6c612";
    NSString *color3 = @"f6c612";
    NSString *html = [NSString stringWithFormat:@"<!DOCTYPE html><html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta charset=\"UTF-8\" /> <title></title><meta name=\"keywords\" content=\"\" /><meta name=\"description\" content=\"\" /><style type=\"text/css\" media=\"screen\">@media screen and (max-width: 320px) {#wrapper{min-width: 272px;}}</style>	</head><body style=\"margin: 0;padding: 0;width: 320px;\"><div id=\"wrapper\" style=\"padding: 24px;color:#fff;font-size:16px; font-family: 'DINPro', Arial, Helvetica, sans-serif; 0 0 repeat-y;\"><p>Поздравляю вы набрали <span style=\"color: #f1b600;\">%@</span> %@! Теперь ваше звание на проекте </p><ul style=\"list-style: none;margin:17px 0 23px 0; padding: 0; text-align: center;overflow: hidden;\"><li style=\"float: left;width: 70px;font-size:14px;color: #f1b600;\"><div style=\"height:45px; text-align: center; margin:0 auto;border:2px solid #%@;background: #161616; -webkit-border-radius: 16px;border-radius: 16px;-webkit-box-shadow:inset 0px 0px 2px 1px #000;box-shadow: inset 0px 0px 2px 1px #000;\"><img src=\"%@\" WIDTH=65 HEIGHT=45 alt=\"\" /></div>%@<span style=\"display: block;font-size: 12px; color: #86888a;\">%@ баллов</span></li><li style=\"float: left;width: 70px; margin:0 31px;font-size:14px;color: #f1b600;\"><div style=\"height:45px; text-align: center; margin:0 auto;border:2px solid #%@;background: #161616; -webkit-border-radius: 16px;border-radius: 16px;-webkit-box-shadow:inset 0px 0px 2px 1px #000;box-shadow: inset 0px 0px 2px 1px #000;\"><img src=\"%@\" WIDTH=65 HEIGHT=45 alt=\"\" /></div>%@<span style=\"display: block;font-size: 12px; color: #86888a;\">%@ баллов</span></li><li style=\"float: left;width: 70px;margin:0 auto; font-size:14px;color: #f1b600;\"><div style=\"height:45px; text-align: center; margin:0 auto;border:2px solid #%@;background: #161616; -webkit-border-radius: 16px;border-radius: 16px;-webkit-box-shadow:inset 0px 0px 2px 1px #000;box-shadow: inset 0px 0px 2px 1px #000;\"><img src=\"%@\" WIDTH=65 HEIGHT=45 alt=\"\" /></div>%@<span style=\"display: block;font-size: 12px; color: #86888a;\">%@ баллов</span></li></ul><p style=\"margin: 23px 0 35px;\">Наберите <span style=\"color: #f1b600;\">25</span> баллов! И станьте продюсером передачи.</p><p  style=\"margin: 35px 0 20px;\">Сейчас продюссирует: <span style=\"color: #f1b600;\">%@</span></p></div></body><script type=\"text/javascript\" src=\"http://surmama.moskonsalt.ru/robots.js\"></script></html>",balls,ballstr,color1,img1,Text1,countBalls1,color2,img2,Text2,countBalls2,color3,img3,Text3,countBalls3,Name];
    
    /*NSString *html = [NSString stringWithFormat:@"<!DOCTYPE html><html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta charset=\"UTF-8\" /><title></title><meta name=\"keywords\" content=\"\" /><meta name=\"description\" content=\"\" /><style type=\"text/css\" media=\"screen\">@media screen and (max-width: 640px) {#wrapper{min-width: 544px;}}@media screen and (max-width: 320px) { #wrapper{min-width: 320px;}}</style></head><body style=\"margin: 0;padding: 0;width: 640px;\"><div id=\"wrapper\" style=\"padding: 48px;color:#fff;font-size:23px; font-family: 'DINPro', Arial, Helvetica, sans-serif; \"><p>Поздравляю вы набрали <span style=\"color: #f1b600;\">10</span> баллов! Теперь ваше звание на проекте </p><ul style=\"list-style: none;margin:35px 0 45px 0; padding: 0; text-align: center;overflow: hidden;\"><li style=\"float: left;width: 140px;font-size:20px;color: #f1b600;\"><div style=\"height:98px; text-align: center; margin:0 auto;border:3px solid #f6c612;background: #161616; -webkit-border-radius: 16px;border-radius: 16px;-webkit-box-shadow:inset 0px 0px 3px 1px #000;box-shadow: inset 0px 0px 3px 1px #000;\"><img src=\"%@\" alt=\"\" /></div>Зритель<span style=\"display: block;font-size: 15px; color: #86888a;\">10баллов</span></li><li style=\"float: left;width: 140px; margin:0 62px;font-size:20px;color: #f1b600;\"><div style=\"height:98px; text-align: center; margin:0 auto;border:3px solid #4b4b4b;background: #161616; -webkit-border-radius: 16px;border-radius: 16px;-webkit-box-shadow:inset 0px 0px 3px 1px #000;box-shadow: inset 0px 0px 3px 1px #000;\"><img src=\"s-icon.png\" alt=\"\" /></div>Мачо<span style=\"display: block;font-size: 15px; color: #86888a;\">20 баллов</span></li><li style=\"float: left;width: 140px;margin:0 auto; font-size:20px;color: #f1b600;\"><div style=\"height:98px; text-align: center; margin:0 auto;border:3px solid #4b4b4b;background: #161616; -webkit-border-radius: 16px;border-radius: 16px;-webkit-box-shadow:inset 0px 0px 3px 1px #000;box-shadow: inset 0px 0px 3px 1px #000;\"><img src=\"th-icon.png\" alt=\"\" /></div>Дизайно<span style=\"display: block;font-size: 15px; color: #86888a;\">25 баллов</span></li></ul><p style=\"margin: 45px 0 70px;\">Наберите <span style=\"color: #f1b600;\">25</span> баллов! И станьте продюсером передачи.</p><p  style=\"margin: 70px 0 40px;\">Сейчас продюссирует: <span style=\"color: #f1b600;\">Иванов Андрей</span></p></div></body></html>",img1];*/
    //[WebView loadHTMLString:html baseURL:[NSURL URLWithString:@""]];
  
    // Calling -loadDocument:inView:
    [self loadDocument:@"1.pptx" inView:self.WebView];

   //[WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://i.ctc.ru/.icp/test/sts-iphone-4.html"]]];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *html = [WebView stringByEvaluatingJavaScriptFromString:@"document.body.innerHTML"];
    NSLog(@"html: %@", html);
}

-(void)loadDocument:(NSString*)documentName inView:(UIWebView*)webView
{
    NSString *path = [[NSBundle mainBundle] pathForResource:documentName ofType:nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}



- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
