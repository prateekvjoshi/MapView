//
//  MVViewController.m
//  MapView
//
//  Created by Prateek Joshi on 7/21/13.
//  Copyright (c) 2013 Prateek Joshi. All rights reserved.
//

#import "MVViewController.h"
#import "MapAnnotation.h"

@interface MVViewController ()

@end

@implementation MVViewController

- (void)initiateStaticAnnotations
{
    CLLocationCoordinate2D location1;
    location1.latitude = 32.805745;
    location1.longitude = -96.811523;
    
    MapAnnotation *addAnnotation1 = [[MapAnnotation alloc] initWithCoordinate:location1];
    [addAnnotation1 setTitle:@"First annotation"];
    [addAnnotation1 setSubTitle:@"3708 Brown Street, Dallas, TX"];
    
    CLLocationCoordinate2D location2;
    location2.latitude = 14.349548;
    location2.longitude = -14.501953;
    
    MapAnnotation *addAnnotation2 = [[MapAnnotation alloc] initWithCoordinate:location2];
    [addAnnotation2 setTitle:@"Second annotation"];
    [addAnnotation2 setSubTitle:@"Tambacounda, Senegal"];
    
    CLLocationCoordinate2D location3;
    location3.latitude = 47.338823;
    location3.longitude = -120.541992;
    
    MapAnnotation *addAnnotation3 = [[MapAnnotation alloc] initWithCoordinate:location3];
    [addAnnotation3 setTitle:@"Third annotation"];
    [addAnnotation3 setSubTitle:@"Wenatchee National Forest, Peshastin, WA 98847, USA"];
    
    CLLocationCoordinate2D location4;
    location4.latitude = 40.380028;
    location4.longitude = -3.603516;
    
    MapAnnotation *addAnnotation4 = [[MapAnnotation alloc] initWithCoordinate:location4];
    [addAnnotation4 setTitle:@"Fourth annotation"];
    [addAnnotation4 setSubTitle:@"Calle Fuentespina, 1A, 28031 Madrid, Spain"];
    
    arr = [NSArray arrayWithObjects:addAnnotation1,addAnnotation2,addAnnotation3,addAnnotation4,nil];
    
    //[_mapView addAnnotations:arr];
    [self.mapView addAnnotations:arr];
}

- (MKAnnotationView *)mapView:(MKMapView *)map viewForAnnotation:(id <MKAnnotation>)annotation
{
    MKPinAnnotationView *annView=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"MyPin"];
    annView.animatesDrop=TRUE;
    annView.canShowCallout = YES;
    [annView setSelected:YES];
    annView.pinColor = MKPinAnnotationColorRed;
    annView.calloutOffset = CGPointMake(15, 15);
    return annView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initiateStaticAnnotations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


