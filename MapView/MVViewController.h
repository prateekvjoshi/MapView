//
//  MVViewController.h
//  MapView
//
//  Created by Prateek Joshi on 7/21/13.
//  Copyright (c) 2013 Prateek Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MVViewController : UIViewController<MKMapViewDelegate>
{
    NSArray *arr;
}
@property (nonatomic, retain)IBOutlet MKMapView *mapView;
- (void)initiateStaticAnnotations;
@end