//
//  onemansViewController.m
//  oneMansDream
//
//  Created by Jorge Macias on 11/8/13.
//  Copyright (c) 2013 Jorge Macias. All rights reserved.
//

#import "onemansViewController.h"

@interface onemansViewController ()

@end

@implementation onemansViewController
@synthesize moviePlayer;
- (IBAction)playLessonOne:(UIButton *)sender {
   NSURL *url = [[NSBundle mainBundle] URLForResource:@"miguel_playing_piano" withExtension:@"mp4"];

   // NSURL *url = [NSURL URLWithString:@"http://0196956.netsolhost.com/videos/codeschool_526.mp4"];
   // NSURL *url = [NSURL URLWithString:@"http://0196956.netsolhost.com/videos/miguel_playing_piano.mp4"];
    moviePlayer=[[MPMoviePlayerController alloc] initWithContentURL:url];
    [self.view addSubview:moviePlayer.view];
    moviePlayer.fullscreen=YES;
    [moviePlayer play];
    
    /*
     streaming HLS video
     http://0196956.netsolhost.com/videos/miguel_playing_piano.mp4
     http://0196956.netsolhost.com/videos/codeschool_526.mp4
     +URLWithString: produces an NSURL that represents the string as given. So the string might be @"http://www.google.com" and the URL represents http://www.google.com.
     
     +fileURLWithPath: takes a path, not a URL, and produces an NSURL that represents the path using a file:// URL. So if you give it /foo/bar/baz the URL would represent file:///foo/bar/baz.
     
     You can of course construct a file URL string manually and pass it to +URLWithString:, but +fileURLWithPath: is simpler to use when you already have a path, as you don't have to deal with escaping the string and coercing it to a URL format.
     */
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

@end
