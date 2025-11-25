import 'package:bloc/bloc.dart';
import 'package:car_rent_app/domain/usecases/get_cars.dart';
import 'package:car_rent_app/presentation.pages/bloc/car_Event.dart';
import 'package:car_rent_app/presentation.pages/bloc/car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState>{
  final GetCars getCars;
  
  CarBloc({required this.getCars}) : super(Carsloading()){
    on<LoadCars>((event, emit) async{
    emit(Carsloading());
     try {
       final cars = await getCars.call();
       emit(CarsLoaded(cars));
     } catch (e) {
       emit(CarsError(e.toString()));
     }
    });
  }
} 