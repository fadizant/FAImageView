//
//  FAViewController.m
//  FAImageView
//
//  Created by fadizant on 09/13/2016.
//  Copyright (c) 2016 fadizant. All rights reserved.
//

#import "FAViewController.h"

@interface FAViewController ()

@end

@implementation FAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [_TestImageView setImageWithURL:@"https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201609052031" ThumbImage:[UIImage imageNamed:@"default-thumb"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
