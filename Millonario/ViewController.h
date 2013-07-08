

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property int cuestionarioIndex;


// Objetos MODEL
@property (nonatomic, strong) NSMutableArray *preguntas;
@property (nonatomic, strong) NSMutableArray *respuestas;


@property (strong, nonatomic) IBOutlet UILabel *muestraPregunta;
@property (strong, nonatomic) IBOutlet UILabel *muestraRespuesta;


- (IBAction)NuevaPregunta:(id)sender;
- (IBAction)NuevaRespuesta:(id)sender;


@end
