import 'package:task_manager/model/draggable_list.dart';

List<DraggableList> allLists = [
  const DraggableList(
    header: 'Best Fruits',
    items: [
      DraggableListItem(
        title: 'Orange',
        urlImage:
            'https://images.unsplash.com/photo-1582979512210-99b6a53386f9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
      ),
      DraggableListItem(
          title: 'Strawberry ',
          urlImage:
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.timesnownews.com%2Fhealth%2Farticle%2Fstrawberry-benefits-for-weight-loss-know-the-uses-of-the-wonderful-fruit%2F707980&psig=AOvVaw33ABK74cEWZLdJc7cBzEHC&ust=1707492561121000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCKD7m8-HnIQDFQAAAAAdAAAAABAE'),
      DraggableListItem(
        title: 'Apple',
        urlImage:
            'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3367&q=80',
      ),
      DraggableListItem(
        title: 'Blueberries',
        urlImage:
            'https://images.unsplash.com/photo-1595231776515-ddffb1f4eb73?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
      ),
    ],
  ),
  const DraggableList(
    header: 'Good Fruits',
    items: [
      DraggableListItem(
        title: 'Lemon',
        urlImage:
            'https://images.unsplash.com/photo-1590502593747-42a996133562?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80',
      ),
      DraggableListItem(
        title: 'Melon',
        urlImage:
            'https://images.unsplash.com/photo-1571575173700-afb9492e6a50?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=976&q=80',
      ),
      DraggableListItem(
        title: 'Papaya',
        urlImage:
            'https://images.unsplash.com/photo-1617112848923-cc2234396a8d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80',
      ),
    ],
  ),
  const DraggableList(
    header: 'Disliked Fruits',
    items: [
      DraggableListItem(
        title: 'Banana',
        urlImage:
            'https://images.unsplash.com/photo-1543218024-57a70143c369?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=975&q=80',
      ),
      DraggableListItem(
        title: 'Strawberries',
        urlImage:
            'https://images.unsplash.com/photo-1464965911861-746a04b4bca6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
      ),
      DraggableListItem(
        title: 'Grapefruit',
        urlImage:
            'https://images.unsplash.com/photo-1577234286642-fc512a5f8f11?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80',
      ),
    ],
  ),
];
