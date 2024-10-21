db = db.getSiblingDB("myNewDatabase"); // Use the specified database

// Create a collection and insert some documents
db.users.insertMany([
    { name: "John Doe", email: "john@example.com", age: 30 },
    { name: "Jane Doe", email: "jane@example.com", age: 25 }
]);
