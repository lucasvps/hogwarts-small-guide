class CharacterModel {
  String name;
  String species;
  String gender;
  String house;
  String dateOfBirth;
  String yearOfBirth;
  String ancestry;
  String eyeColour;
  String hairColour;
  String patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  bool alive;
  String image;

  CharacterModel(
      {this.name,
      this.species,
      this.gender,
      this.house,
      this.dateOfBirth,
      this.yearOfBirth,
      this.ancestry,
      this.eyeColour,
      this.hairColour,
     
      this.patronus,
      this.hogwartsStudent,
      this.hogwartsStaff,
      this.actor,
      this.alive,
      this.image});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    species = json['species'];
    gender = json['gender'];
    house = json['house'];
    dateOfBirth = json['dateOfBirth'];
    yearOfBirth = json['yearOfBirth'].toString();
    ancestry = json['ancestry'];
    eyeColour = json['eyeColour'];
    hairColour = json['hairColour'];
    
    patronus = json['patronus'];
    hogwartsStudent = json['hogwartsStudent'];
    hogwartsStaff = json['hogwartsStaff'];
    actor = json['actor'];
    alive = json['alive'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['species'] = this.species;
    data['gender'] = this.gender;
    data['house'] = this.house;
    data['dateOfBirth'] = this.dateOfBirth;
    //data['yearOfBirth'] = this.yearOfBirth;
    data['ancestry'] = this.ancestry;
    data['eyeColour'] = this.eyeColour;
    data['hairColour'] = this.hairColour;
    data['patronus'] = this.patronus;
    data['hogwartsStudent'] = this.hogwartsStudent;
    data['hogwartsStaff'] = this.hogwartsStaff;
    data['actor'] = this.actor;
    data['alive'] = this.alive;
    data['image'] = this.image;
    return data;
  }
}
