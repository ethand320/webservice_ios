//
//  EBDViewController.m
//  final_project
//
//  Created by Ethan D on 11/13/13.
//  Copyright (c) 2013 Ethan D. All rights reserved.
//

#import "EBDViewController.h"

@interface EBDViewController ()

@end

@implementation EBDViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)buttonTapped:(UIButton *)sender {


    NSURLRequest *request = [NSURLRequest requestWithURL: [NSURL URLWithString: @"http://64.79.105.22/webservice/hello.json"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval: 30.0];

    NSURLConnection *connection =
    [[NSURLConnection alloc] initWithRequest :request delegate:self];
    
    if (connection){
        self.responseData = [NSMutableData data];
       // _output.text = [NSString stringFromData:self.responseData];
       // NSLog(@"%@", self.responseData);
  
    }
    
 
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    
    NSLog(@"data is %@", data);
    
   // NSString *myString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
        
    NSString *mystring = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    NSLog(@"actual string is %@", mystring);
    
}

@end
