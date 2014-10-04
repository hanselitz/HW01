//
//  ViewController.m
//  HW01
//
//  Created by Hansel Itz on 01/10/14.
//  Copyright (c) 2014 Hansel Itz. All rights reserved.
//

#import "ViewController.h"



#define nCoolPink       colorWithRed:255/255.0 green:135/255.0 blue:233/255.0 alpha:1.0

#define nCoolRed         colorWithRed:255/255.0f green:99/255.0f blue:71/255.0f alpha:1.0

#define nCoolGreen       colorWithRed:99/255.0f green:214/255.0f blue:74/255.0f alpha:1.0

#define nCoolBrown       colorWithRed:141/255.0f green:60/255.0f blue:15/255.0f alpha:1.0

#define nCoolBlue    colorWithRed:89/255.0f green:113/255.0f blue:173/255.0f alpha:1.0

@interface Welcome ()
@end
@implementation Welcome
@synthesize imageView, slider, imgWelcome2;


-(IBAction)playMovie
{
    
    NSString *url = [[NSBundle mainBundle] pathForResource:@"vampiro" ofType:@"mov"];
    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:url]];
    //Play Partial SCRN
    player.view.frame = CGRectMake(64,100,200,150);
    [self.view addSubview:player.view];
    //Play Movie
    [player play];
}

- (IBAction)randomize:(id)sender {

    int randomimages = rand() % 5;
    switch (randomimages) {
        case 1:
            imgWelcome2.image = [UIImage imageNamed:@"h1.jpg"];
            break;
        case 2:
            imgWelcome2.image = [UIImage imageNamed:@"h2.jpg"];            break;
        case 3:
            imgWelcome2.image = [UIImage imageNamed:@"h3.jpg"];            break;
        case 4:
            imgWelcome2.image = [UIImage imageNamed:@"h4.jpg"];            break;
        case 5:
            imgWelcome2.image = [UIImage imageNamed:@"h5.jpg"];            break;
    }
    
}



- (IBAction)randomizeBack:(id)sender {
    int randomback = rand() % 5;
    switch (randomback) {
        case 1:
           self.view.backgroundColor = [UIColor  grayColor];            break;
        case 2:
            self.view.backgroundColor = [UIColor  orangeColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor  brownColor];                        break;
        case 4:
            self.view.backgroundColor = [UIColor  blackColor];
            break;
        case 5:
            self.view.backgroundColor = [UIColor  yellowColor];break;
    }
    
}

- (IBAction)randomizeColor:(id)sender {
    int randomcolor = rand() % 5;
    switch (randomcolor) {
        case 1:
            self.lblWelcome.textColor                   = [UIColor nCoolGreen];
            break;
        case 2:
            self.lblWelcome.textColor                   = [UIColor nCoolRed];
            break;
        case 3:
            self.lblWelcome.textColor                   = [UIColor nCoolBlue];
            break;
        case 4:
            self.lblWelcome.textColor                   = [UIColor nCoolPink];
            break;
        case 5:
            self.lblWelcome.textColor                   = [UIColor nCoolBrown];
        break;
    }

}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    [self setImageView:nil];
    [self setSlider:nil];
    [super viewDidUnload];

}



- (IBAction)btnChangeNamePressed:(UIButton *)sender {
    

    
}

- (IBAction)btnChangeNamePressed2:(UIButton *)sender {
    
    self.lblWelcome.textColor                   = [UIColor nCoolBrown];
}

- (IBAction)btnChangeBackground:(UIButton *)sender {
    
    self.view.backgroundColor = [UIColor  grayColor];


}

- (IBAction)btnChangeImage:(UIButton *)sender {
     self.imgWelcome.image = [UIImage imageNamed: @"h2.jpg"];
}


-(IBAction)imageSlider:(id)sender{

    imageView.alpha = slider.value;
}

- (IBAction)segmentedClicked:(UISegmentedControl *)sender {
    
    if(_control.selectedSegmentIndex ==0 ){
    
        self.imgWelcome3.image = [UIImage imageNamed: @"chivas.jpg"];
    }
    
    if(_control.selectedSegmentIndex ==1 ){
        
        self.imgWelcome3.image = [UIImage imageNamed: @"america.jpeg"];
    }

}



@end
