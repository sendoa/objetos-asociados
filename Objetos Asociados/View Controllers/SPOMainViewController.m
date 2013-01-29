//
//  SPOMainViewController.m
//  Objetos Asociados
//
//  Created by Sendoa Portuondo on 29/01/13.
//  Copyright (c) 2013 Qbikode Solutions, S.L. All rights reserved.
//

#import "SPOMainViewController.h"
#import "UIAlertView+Blocky.h"

@interface SPOMainViewController ()

@end

@implementation SPOMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action methods
- (IBAction)botonPulsado:(id)sender {
	UIAlertView *alerta = [UIAlertView alertViewWithTitle:@"Alerta" message:@"Pulsa un botón y mira la consola" dismissBlock:^(NSInteger buttonIndex) {
		NSLog(@"Indice del botón pulsado: %i", buttonIndex);
	}];
	
	[alerta addButtonWithTitle:@"Cero"];
	[alerta addButtonWithTitle:@"Uno"];
	[alerta show];
}
@end
