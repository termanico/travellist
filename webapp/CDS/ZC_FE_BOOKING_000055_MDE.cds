    @Metadata.layer : #CORE
annotate view ZC_FE_BOOKING_000055 with {
    @UI.lineItem    : [{position : 10}]
    BookingID;

    @UI.lineItem    : [{position : 20}]
    BookingDate;

    @UI.lineItem    : [{position : 30}]
    CustomerID;

    @UI.lineItem    : [{position : 40}]
    CarrierID;

    @UI.lineItem    : [{position : 50}]
    ConnectionID;

    @UI.lineItem    : [{position : 60}]
    FlightDate;

    @UI.lineItem    : [{position : 70}]
    FlightPrice;

    @UI.lineItem    : [{
        position : 05,
        label    : ' ',
        value    : '_Carrier.AirlinePicURL'
    }]
    _Carrier;

}
