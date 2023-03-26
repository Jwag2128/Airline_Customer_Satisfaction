CREATE TABLE main_demographics (
    Passenger_ID INT,
    Gender VARCHAR(10),
    Age INT,
    Customer_Type VARCHAR(40),
    Travel_Type VARCHAR(40),
    Travel_Class VARCHAR(40),
    Flight_Distance INT,
    Overall_Satisfaction VARCHAR(40)
);

SELECT * FROM Cust_Sat_Data;

INSERT INTO main_demographics (Passenger_ID, Gender, Age, Customer_Type, Travel_Type, Travel_Class, Flight_Distance, Overall_Satisfaction)
SELECT Passenger_ID, Gender, Age, Customer_Type, Travel_Type, Travel_Class, Flight_Distance, Overall_Satisfaction
FROM Cust_Sat_Data;

SELECT * FROM main_demographics;

CREATE TABLE flight_details (
    Flight_Distance INT,
    Dep_Arr_Time_Convenient INT,
    Departure_Delay_Minutes INT,
    Arrival_Delay_Minutes INT,
    Overall_Satisfaction VARCHAR(40)
);

CREATE TABLE inflight_details (
    Gender VARCHAR(10),
    Age INT,
    Travel_Class VARCHAR(40),
    Inflight_WiFi INT,
    Food_Drink INT,
    Seat_Comfort INT,
    Inflight_Entertainment INT,
    Onboard_Service INT,
    Leg_Room INT,
    Inflight_Service INT,
    Cleanliness INT,
    Overall_Satisfaction VARCHAR(40)
);

CREATE TABLE prior_post_flight (
    Gender VARCHAR(10),
    Age INT,
    Customer_Type VARCHAR(40),
    Travel_Type VARCHAR(40),
    Travel_Class VARCHAR(40),
    Online_Booking INT,
    Gate_Location INT,
    Online_Boarding INT,
    CheckIn_Service INT,
    Baggage_Handling INT,
    Overall_Satisfaction VARCHAR(40)
);

CREATE TABLE sat_scores (
    Passenger_ID INT,
    Gender VARCHAR(10),
    Age INT,
    Online_Booking INT,
    Online_Boarding INT,
    CheckIn_Service INT,
    Dep_Arr_Time_Convenient INT,
    Gate_Location INT,
    Baggage_Handling INT,
    Onboard_Service INT,
    Seat_Comfort INT,
    Leg_Room INT,
    Cleanliness INT,
    Food_Drink INT,
    Inflight_Entertainment INT,
    Inflight_WiFi INT,
    Inflight_Service INT,
    Avg_Sat_Score NUMERIC(5,2),
    Customer_Sat VARCHAR(40)
);

INSERT INTO flight_details (Flight_Distance, Dep_Arr_Time_Convenient, Departure_Delay_Minutes, Arrival_Delay_Minutes, Overall_Satisfaction)
SELECT Flight_Distance, Dep_Arr_Time_Convenient, Departure_Delay_Minutes, Arrival_Delay_Minutes, Overall_Satisfaction
FROM Cust_Sat_Data;

SELECT * FROM flight_details;

INSERT INTO inflight_details (Gender, Age, Travel_Class, Inflight_WiFi, Food_Drink, Seat_Comfort, Inflight_Entertainment, Onboard_Service, Leg_Room, Inflight_Service, Cleanliness, Overall_Satisfaction)
SELECT Gender, Age, Travel_Class, Inflight_WiFi, Food_Drink, Seat_Comfort, Inflight_Entertainment, Onboard_Service, Leg_Room, Inflight_Service, Cleanliness, Overall_Satisfaction
FROM Cust_Sat_Data;

SELECT * FROM inflight_details;

INSERT INTO prior_post_flight (Gender, Age, Customer_Type, Travel_Type, Travel_Class, Online_Booking, Gate_Location, Online_Boarding, CheckIn_Service, Baggage_Handling, Overall_Satisfaction)
SELECT Gender, Age, Customer_Type, Travel_Type, Travel_Class, Online_Booking, Gate_Location, Online_Boarding, CheckIn_Service, Baggage_Handling, Overall_Satisfaction
FROM Cust_Sat_Data;

SELECT * FROM prior_post_flight;

INSERT INTO sat_scores (
	Passenger_ID, Gender, Age,
    Online_Booking, Online_Boarding,
    CheckIn_Service, Dep_Arr_Time_Convenient,
    Gate_Location, Baggage_Handling, Onboard_Service,
    Seat_Comfort, Leg_Room, Cleanliness,
    Food_Drink, Inflight_Entertainment, Inflight_WiFi,
    Inflight_Service,
    Avg_Sat_Score, Customer_Sat
)
SELECT Passenger_ID, Gender, Age,
    Online_Booking, Online_Boarding,
    CheckIn_Service, Dep_Arr_Time_Convenient,
    Gate_Location, Baggage_Handling, Onboard_Service,
    Seat_Comfort, Leg_Room, Cleanliness,
    Food_Drink, Inflight_Entertainment, Inflight_WiFi,
    Inflight_Service,
    Avg_Sat_Score, Customer_Sat
FROM Cust_Sat_Data;

SELECT * FROM sat_scores;

SELECT * FROM sat_scores
WHERE Gender = 'Male' AND Age > 30;