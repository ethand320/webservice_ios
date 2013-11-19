//
//  EBDViewController.h
//  final_project
//
//  Created by Ethan D on 11/13/13.
//  Copyright (c) 2013 Ethan D. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EBDViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *output;

@property (strong, nonatomic) NSMutableData *responseData;

- (IBAction)buttonTapped:(UIButton *)sender;

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
    

    
;

@end
