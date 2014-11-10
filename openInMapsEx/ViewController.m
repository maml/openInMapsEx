//
//  ViewController.m
//  openInMapsEx
//
//  Created by Matthew Loseke on 11/10/14.
//  Copyright (c) 2014 Matthew Loseke. All rights reserved.
//

#import "ViewController.h"

static NSString *const kBaseMapURL = @"http://maps.apple.com/maps?q=";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelectorOnMainThread:@selector(openSesame) withObject:nil waitUntilDone:NO];
}

- (void)openSesame
{
    NSString *headquarters = @"RocketMiles%20HQ";
    float latitude = 41.883409;
    float longitude = -87.642179;
    int zoom = 12;
    NSString *stringURL = [NSString stringWithFormat:@"%@%@@%1.6f,%1.6f&z=%d", kBaseMapURL, headquarters, latitude, longitude, zoom];
    NSURL *url = [NSURL URLWithString:stringURL];
    [[UIApplication sharedApplication] openURL:url];
}

@end
