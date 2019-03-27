//
//  AFOViewController.m
//  AFOBridge
//
//  Created by xueguang xian on 2019/3/27.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOCars.h"
#import "AFOCarsBuilder.h"
#import "AFOSeats.h"
#import "AFOSeatsBuilder.h"
#import "AFOHeadlights.h"
#import "AFOHeadlightsBuilder.h"
#import "AFOColors.h"
#import "AFOColorsBuilder.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///--- car
    AFOCarsBuilder *cardsBuilder = [[AFOCarsBuilder alloc] init];
    AFOCars *cars = [[AFOCars alloc] init];
    AFOCars *pickup = [cardsBuilder createPickup];
    AFOCars *sportsCar = [cardsBuilder createSportsCar];
    AFOCars *suv = [cardsBuilder createSUV];
    ///--- seats
    AFOSeatsBuilder *seatsBuilder = [[AFOSeatsBuilder alloc] init];
    AFOSeats *seats = [[AFOSeats alloc] init];
    AFOSeats *genuineLeather = [seatsBuilder crateGenuineLeather];
    AFOSeats *artificialLeather = [seatsBuilder createArtificialLeather];
    AFOSeats *cloth = [seatsBuilder createCloth];
    ///--- headlights
    AFOHeadlightsBuilder *headlightsBuilder = [[AFOHeadlightsBuilder alloc] init];
    AFOHeadlights *headlights = [[AFOHeadlights alloc] init];
    AFOHeadlights *circular = [headlightsBuilder createCircular];
    AFOHeadlights *triangle = [headlightsBuilder createTriangle];
    AFOHeadlights *square = [headlightsBuilder createSquare];
    ///--- colors
    AFOColorsBuilder *colorsBuilder = [[AFOColorsBuilder alloc] init];
    AFOColors *colors = [[AFOColors alloc] init];
    AFOColors *white = [colorsBuilder createWhite];
    AFOColors *beige = [colorsBuilder createBeige];
    AFOColors *red = [colorsBuilder createRed];
    ///--- combination
    [cars createCarForSeats:seats headlights:headlights colors:colors];
    [cars description];
    
    [pickup createCarForSeats:genuineLeather headlights:circular colors:white];
    [pickup description];
    
    [sportsCar createCarForSeats:artificialLeather headlights:triangle colors:beige];
    [sportsCar description];
    
    [suv createCarForSeats:cloth headlights:square colors:red];
    [suv description];
    
    // Do any additional setup after loading the view.
}


@end
