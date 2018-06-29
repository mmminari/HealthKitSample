//
//  LocationManager.m
//  BackgroundTest
//
//  Created by 김민아 on 2018. 5. 29..
//  Copyright © 2018년 김민아. All rights reserved.
//

#import "LocationManager.h"
#import <CoreLocation/CoreLocation.h>

@interface LocationManager () <CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;


@end


@implementation LocationManager

+ (instancetype)sharedInstanceWithSelf
{
    static id sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        sharedInstance = [[self alloc]init];
        
        LocationManager *instance = sharedInstance;
        
        instance.locationManager = [CLLocationManager new];
        instance.locationManager.delegate = instance;
        instance.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        instance.locationManager.pausesLocationUpdatesAutomatically = NO;
    });
    
    
    return sharedInstance;
}

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        sharedInstance = [[self alloc]init];
        
        LocationManager *instance = sharedInstance;
        
        instance.locationManager = [CLLocationManager new];
        instance.locationManager.delegate = instance;
        instance.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        instance.locationManager.pausesLocationUpdatesAutomatically = NO;
    });
    
    
    return sharedInstance;
}


- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    NSLog(@"status : %zd", status);
    
}



@end
