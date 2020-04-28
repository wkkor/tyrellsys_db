1. Create a database
2. Import / Run the query in file <structure.sql> to build all tables involved
3. Import / Run the query in file <dummy_data.sql> to insert dummy data
4. Run query in file <create_foreign_key> to create foreign key 
5. Run query in file <optimize_index.sql> to optimize indexing
6. Ready to run test

- file <original_select_query.sql> is orignal query provided in Test #2
- file <optimize_select_query.sql> is query optimize base on <original_select_query.sql>
- file <drop_foreign_key> to remove foregin key created in <create_foreign_key>
- file <drop_optimize_index.sql> to remove index created in <optimize_index.sql>
- file <err-diagram.pdf> is the ERR diagram of the database