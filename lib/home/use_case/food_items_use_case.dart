import 'package:projects_study/home/model/food_items_model.dart';
import 'package:projects_study/home/repository/list_food_repository.dart';

abstract class FoodItemsListUseCase {
  Future<List<FoodItemsModel>> call();
}

class FoodItemsUseCase implements FoodItemsListUseCase {
  final ListFoodRepository _listFoodItemsRepository;

  FoodItemsUseCase(this._listFoodItemsRepository);

  @override
  Future<List<FoodItemsModel>> call() async {
    List<FoodItemsModel> listFoodItems = [];
    try {
      listFoodItems =  _listFoodItemsRepository as List<FoodItemsModel>;
    } catch (e) {
      print(e.toString());
    }
   return  listFoodItems;
  }
}
