dropdb full_v50k
createdb full_v50k
psql -d full_v50k -f create.sql
psql -d full_v50k -f query.sql
