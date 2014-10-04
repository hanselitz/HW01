//
//  ViewController.h
//  HW01
//
//  Created by Hansel Itz on 01/10/14.
//  Copyright (c) 2014 Hansel Itz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>


@interface Welcome : UIViewController {
    
    MPMoviePlayerController *videoPlayer;
    NSURL *videoURL;
    
    
}


@property (strong, nonatomic) IBOutlet UISegmentedControl *control;
@property (strong, nonatomic) IBOutlet UIImageView *imgWelcome3;


@property (strong, nonatomic) IBOutlet UILabel     *lblWelcome;
//Images


@property (strong, nonatomic) IBOutlet UIImageView *imgWelcome;

@property (weak, nonatomic) IBOutlet UIImageView *imgWelcome2;


//Buttons
@property (strong, nonatomic) IBOutlet UIButton *btnChange;

@property (strong, nonatomic) IBOutlet UITextField *txtName;



//Actions


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UISlider *slider;


- (IBAction)btnChangeNamePressed:(UIButton *)sender;

- (IBAction)btnChangeNamePressed2:(UIButton *)sender;

- (IBAction)btnChangeBackground:(UIButton *)sender;

- (IBAction)btnChangeImage:(UIButton *)sender;


- (IBAction)imageSlider:(id)sender;

- (IBAction)segmentedClicked:(UISegmentedControl *)sender;

- (IBAction)playMovie;

- (IBAction)randomize:(id)sender;

- (IBAction)randomizeBack:(id)sender;

- (IBAction)randomizeColor:(id)sender;

@end
