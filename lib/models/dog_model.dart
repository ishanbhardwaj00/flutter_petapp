class Dog {
   String breed;
   String imageUrl;
   String description;
   int age;
   String from;

  Dog({
    this.breed,
    this.imageUrl,
    this.description,
    this.age,
    this.from
  });
}
List<Dog> dog =[
Dog(breed: "German Shepherd", imageUrl: "assets/images/germanshepherd (2).jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", age:7, from: "From: India"),
Dog(breed: "Pug", imageUrl: "assets/images/pug.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",age:5,from: "From: Pakistan"),
Dog(breed: "Husky", imageUrl: "assets/images/husky.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",age:1,from: "From: Bangladesh")
];
