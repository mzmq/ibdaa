import 'package:flutter/foundation.dart';
import 'package:ibdaa/models/my_worker.dart';

class MyWorkerProvider with ChangeNotifier {
 final List<MyWorker> _myworker = [
    MyWorker(id: 'MW1', name: 'كهربائي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2015/12/07/10/51/electrician-1080570_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'دهين', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2017/09/15/10/24/painter-2751666_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'مواسرجي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2013/12/13/21/13/plumber-228010_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'كهربائي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2015/12/07/10/51/electrician-1080570_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'دهين', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2017/09/15/10/24/painter-2751666_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'مواسرجي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2013/12/13/21/13/plumber-228010_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'كهربائي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2015/12/07/10/51/electrician-1080570_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'دهين', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2017/09/15/10/24/painter-2751666_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'مواسرجي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2013/12/13/21/13/plumber-228010_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'كهربائي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2015/12/07/10/51/electrician-1080570_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'دهين', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2017/09/15/10/24/painter-2751666_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'مواسرجي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2013/12/13/21/13/plumber-228010_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'كهربائي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2015/12/07/10/51/electrician-1080570_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'دهين', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2017/09/15/10/24/painter-2751666_960_720.jpg'),
    MyWorker(id: 'MW1', name: 'مواسرجي', description: 'description', phone: 'phone', job: 'job', imgUrl: 'https://cdn.pixabay.com/photo/2013/12/13/21/13/plumber-228010_960_720.jpg'),

  ];

  List<MyWorker> get myworker {
    return [..._myworker];
  }
}
