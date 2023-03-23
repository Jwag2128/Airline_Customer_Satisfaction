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