//
//  PantallaJuegoViewController.h
//  Prueba de Memoria
//
//  Created by Miguel  on 02/12/13.
//  Copyright (c) 2013 Miguel Trallero. All rights reserved.
//

#import <UIKit/UIKit.h>
 
@interface PantallaJuegoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *BlueButton;
@property (weak, nonatomic) IBOutlet UIButton *RedButton;
@property (weak, nonatomic) IBOutlet UIButton *GreenButton;
@property (weak, nonatomic) IBOutlet UIButton *OrangeButton;
@property (weak, nonatomic) IBOutlet UILabel *NivelLabel;
@property (weak, nonatomic) IBOutlet UIButton *StarButton;

- (IBAction)BlueSecuenciaButton:(id)sender;
- (IBAction)RedSecuenciaButton:(id)sender;
- (IBAction)GreenSecuenciaButton:(id)sender;
- (IBAction)OrangeSecuenciaButton:(id)sender;
- (IBAction)StarSecuenciaButton:(id)sender;

@end
