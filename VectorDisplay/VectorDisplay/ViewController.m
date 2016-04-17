//
//  ViewController.m
//  VectorDisplay
//
//  Created by Mohammed Elsammak on 4/17/16.
//  Copyright © 2016 Elsammak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *vectorImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString* vectorImageUrl = @"https://upload.wikimedia.org/wikipedia/commons/f/f3/Logo-VfL-Wolfsburg.svg";
    
    
    NSURL *url = [NSURL URLWithString:vectorImageUrl];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0),
                   ^ {
                       // This code runs asynchronously!
                       [self.vectorImageView loadRequest:requestObj];
                   });
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
