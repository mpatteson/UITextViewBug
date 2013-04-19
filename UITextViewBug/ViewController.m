//
//  ViewController.m
//  UITextViewBug
//
//  Created by Mike Patteson on 19/04/2013.
//  Copyright (c) 2013 Mike Patteson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)setupTextView {
    
    NSString *string = theTextView.text;
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.minimumLineHeight = 48.f;
    
    NSMutableAttributedString *aStr = [[NSMutableAttributedString alloc] initWithString:string];
    [aStr addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0,[string length])];
    
    theTextView.attributedText = aStr;
    
    [self showAttributesInLog];
    
}

-(void)showAttributesInLog {
    
    NSLog(@"Font Attributes: %@", theTextView.attributedText);
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setupTextView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
