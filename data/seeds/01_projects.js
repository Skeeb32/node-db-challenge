exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex("projects")
    .del()
    .then(function() {
      // Inserts seed entries
      return knex("projects").insert([
        { name: "School", description: "Attend Lambda School" },
        { name: "Working Out" },
        { name: "Play Soccer" }
      ]);
    });
};