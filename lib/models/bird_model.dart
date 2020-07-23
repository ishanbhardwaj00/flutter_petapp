class Bird {
  String breed;
  String imageUrl;
  String description;
  int age;
  String from;


  Bird({
    this.breed,
    this.imageUrl,
    this.description,
    this.age,
    this.from
  });
}

List<Bird> bird= [
Bird(breed: "Sparrow", imageUrl: "assets/images/sparrow.png", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",age:1,from: "From: Bangladesh"),
Bird(breed: "Toucan", imageUrl: "assets/images/toucan.png", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",age:1,from: "From: Bangladesh")

];
