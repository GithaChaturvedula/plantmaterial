namespace my.materials;

entity Materials
{
    key Matnr : Integer
        @Core.Description : 'Material ID';
    Description : String
        @Core.Description : 'Description';
    stock : Integer
        @Core.Description : 'Stock';
    plants : Association to one Plants;
}

entity Plants
{
    key PlantID : UUID
        @Core.Description : 'Plant';
    Name : String(40);
    materials : Composition of many Materials on materials.plants = $self;
}
