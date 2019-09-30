import 'dart:convert'; 

class ExampleModel {

  // Ctor
  const ExampleModel();

  // From JSON
 ExampleModel.fromJSON(_json) {
    dynamic data = json.decode(_json);
  }

  // From Map
 ExampleModel.fromMap(Map<dynamic, dynamic> data ) {

  }

  // To Map
  Map<String, dynamic> toMap() {
    return {
    };
  }

}