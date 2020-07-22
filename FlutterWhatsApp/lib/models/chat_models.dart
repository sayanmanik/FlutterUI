class ChatModel{
  final String name;
  final String message;
  final String title;
  final String avatarUrl;

  ChatModel({this.name,this.message,this.title,this.avatarUrl});
}
  List<ChatModel> dummyData=[
    ChatModel(
      name: "Sayan",
      message: "ABC",
      title: "Title 1",
      avatarUrl: "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_1280.jpg",
    ),
    ChatModel(
      name: "Rohit",
      message: "BCD",
      title: "Title 2",
      avatarUrl: "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_1280.jpg",
    ),
    ChatModel(
      name: "Rohan",
      message: "CDE",
      title: "Title 3",
      avatarUrl: "https://cdn.pixabay.com/photo/2015/01/08/18/30/entrepreneur-593371_1280.jpg",
    ),
    ChatModel(
      name: "Sourav",
      message: "DEF",
      title: "Title 4",
      avatarUrl: "https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028_1280.jpg",
    ),
    ChatModel(
      name: "Surya",
      message: "EFG",
      title: "Title 5",
      avatarUrl: "https://cdn.pixabay.com/photo/2015/09/18/11/46/man-945482_1280.jpg",
    )
  ];

//   List get listData{
//     return dummyData;
//   }
// }
