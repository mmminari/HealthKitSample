//
//  ViewController.m
//  BackgroundTest
//
//  Created by 김민아 on 2018. 5. 24..
//  Copyright © 2018년 김민아. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()<CLLocationManagerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    CLLocationManager *manager = [[CLLocationManager alloc]init];

    
    manager.desiredAccuracy = kCLLocationAccuracyBestForNavigation;
    
    if([manager respondsToSelector:@selector(requestAlwaysAuthorization)])
    {
        [manager requestAlwaysAuthorization];
    }
    
    [manager startUpdatingLocation];
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation *location = [locations lastObject];
    
    
}



@end
