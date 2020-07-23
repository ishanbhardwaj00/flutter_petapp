class Cat {
  String breed;
  String imageUrl;
  String description;
  int age;
  String from;

  Cat({
    this.breed,
    this.imageUrl,
    this.description,
    this.age,
    this.from
  });
}
List<Cat> cat =[
Cat(breed: "Bengal Cat", imageUrl: "assets/images/bengalcat.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",age:7, from: "From: India"),
Cat(breed: "Persian Cat", imageUrl: "assets/images/persiancat.png", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",age:7, from: "From: India"),
Cat(breed: "Siamese Cat", imageUrl: "assets/images/siamesecat.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",age:7, from: "From: India"),
];
