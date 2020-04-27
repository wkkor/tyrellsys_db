1. Create a database
2. Import / Run the query in file <structure.sql> to build all tables involved
3. Import / Run the query in file <dummy_data.sql> to insert dummy data
4. Run query in file <optimize_index.sql> to optimize indexing
5. Ready to run test

- file <original_select_query.sql> is orignal query provided in question
- file <optimize_select_query.sql> is query optimize base on <original_select_query.sql>
- file <drop_optimize_index.sql> to reverse index create in <optimize_index.sql>