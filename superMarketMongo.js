db.createCollection("customers");
db.createCollection("orders");
db.createCollection("products");

db.customers.insertMany([
  {
    _id: 1,
    name: "Samuel",
    last_name: "Vera Miranda",
    country: "Colombia",
    city: "Dabeiba",
  },
  {
    _id: 2,
    name: "Camilo",
    last_name: "Correa",
    country: "Colombia",
    city: "Cañasgordas",
  },
  {
    _id: 3,
    name: "Lupe",
    last_name: "Perez",
    country: "Colombia",
    city: "Bello",
  },
  {
    _id: 4,
    name: "Sofía",
    last_name: "Marín",
    country: "Colombia",
    city: "Itaguí",
  },
]);

db.customers.find();

db.orders.insertMany([
  {
    _id: 1,
    date: "2023-03-06",
    customers: {
      _id: 1,
      name: "Samuel",
    },
    products: [
      {
        _id: 1,
        name: "Fabuloso",
        quantity: 2,
        price: 20,
      },
      {
        _id: 2,
        name: "Suavitel",
        quantity: 1,
        price: 15,
      },
    ],
  },
]);

db.orders.find();

db.products.insertMany([
  {
    _id: 1,
    name: "Fabuloso",
    price: 20,
    category: "Aseo",
  },
  {
    _id: 2,
    name: "Suavitel",
    price: 15,
    category: "Aseo",
  },
]);

db.products.find()