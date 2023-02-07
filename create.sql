CREATE TABLE registration (
    TransactionDate DATE,
    Make VARCHAR,
    Model VARCHAR,
    MYear INTEGER,
    Color VARCHAR,
    Type VARCHAR,
    Use VARCHAR,
    FuelTypePrimary VARCHAR,
    GVWRClass VARCHAR,
    GVWRRange VARCHAR,
    FuelTypeSecondary VARCHAR,
    Electrification VARCHAR,
    PlateBackground VARCHAR,
    PlateConfiguration VARCHAR,
    OwnerType VARCHAR,
    County VARCHAR,
    State VARCHAR,
    PostalCode VARCHAR,
    TransactionType VARCHAR,
    TransactionChannel VARCHAR,
    PaymentType VARCHAR,
    CensusTract VARCHAR,
    TransactionCount VARCHAR
);

\COPY registration FROM '\Users\okayj\OneDrive\Documents\IT120\full_v50k\vrt_2022-12.csv' CSV HEADER;

/* select color, count(color) from registration where make = 'FERRARI' group by color order by count desc;
select color from registration where make = 'FERRARI' group by color;
select model, count(model) from registration where make = 'TESLA' GROUP BY model;
"C:\Users\okayj\OneDrive\Documents\IT120\full_v50k\vrt_2022-12.csv"

*/