    @Metadata.layer     : #CORE

    @UI                 : {
    headerInfo          : {
        typeName       : 'Travel',
        typeNamePlural : 'Travels',
        title          : {
            type  : #STANDARD,
            value : 'Description'
        },
        description    : {value : 'TravelID'}
    },
    presentationVariant : [{
        sortOrder      : [{
            by        : 'LocalLastChangedAt',
            direction : #DESC
        }],
        visualizations : [{type : #AS_LINEITEM}]
    }]
}

annotate view ZC_FE_TRAVEL_000055 with {
    @UI.facet           : [
        {
            id              : 'TravelHeaderPrice',
            purpose         : #HEADER,
            type            : #DATAPOINT_REFERENCE,
            position        : 10,
            targetQualifier : 'PriceData'
        },
        {
            id              : 'TravelHeaderOverallStatus',
            purpose         : #HEADER,
            type            : #DATAPOINT_REFERENCE,
            position        : 20,
            targetQualifier : 'StatusData'
        },
        {
            label    : 'General Information',
            id       : 'GeneralInfo',
            type     : #COLLECTION,
            position : 10
        },
        {
            label    : 'General',
            id       : 'Travel',
            purpose  : #STANDARD,
            type     : #IDENTIFICATION_REFERENCE,
            parentId : 'GeneralInfo',
            position : 10
        },
        {
            label           : 'Dates',
            id              : 'Dates',
            purpose         : #STANDARD,
            type            : #FIELDGROUP_REFERENCE,
            parentId        : 'GeneralInfo',
            position        : 30,
            targetQualifier : 'DatesGroup'
        },
        {
            label           : 'Prices',
            id              : 'Prices',
            purpose         : #STANDARD,
            type            : #FIELDGROUP_REFERENCE,
            parentId        : 'GeneralInfo',
            position        : 20,
            targetQualifier : 'PricesGroup'
        },
        {
            id            : 'Booking',
            purpose       : #STANDARD,
            type          : #LINEITEM_REFERENCE,
            label         : 'Bookings',
            position      : 20,
            targetElement : '_Booking'
        }
    ]
    @UI.lineItem        : [{position : 10}]
    @UI.lineItem        : [{importance : #HIGH}]
    @UI.textArrangement : #TEXT_ONLY
    TravelID;
    @UI.identification  : [{position : 10}]
    Description;
    @UI.lineItem        : [{position : 20}]
    @UI.lineItem        : [{importance : #HIGH}]
    @UI.selectionField  : [{position : 10}]
    @UI.identification  : [{position : 30}]
    AgencyID;
    @UI.lineItem        : [{position : 30}]
    @UI.selectionField  : [{position : 20}]
    @UI.identification  : [{position : 20}]
    CustomerID;
    @UI.lineItem        : [{position : 40}]
    @UI.fieldGroup      : [{
        qualifier : 'DatesGroup',
        position  : 10
    }]
    BeginDate;
    @UI.lineItem        : [{position : 50}]
    @UI.fieldGroup      : [{
        qualifier : 'DatesGroup',
        position  : 20
    }]
    EndDate;
    @UI.lineItem        : [{position : 60}]
    @UI.fieldGroup      : [{
        qualifier : 'PricesGroup',
        position  : 10
    }]
    BookingFee;
    @UI.lineItem        : [{position : 70}]
    @UI.dataPoint       : {
        qualifier : 'PriceData',
        title     : 'Total Price'
    }
    @UI.fieldGroup      : [{
        qualifier : 'PricesGroup',
        position  : 20
    }]
    TotalPrice;
    @UI.lineItem        : [{
        position    : 80,
        criticality : 'OverallStatusCriticality'
    }]
    @UI.lineItem        : [{importance : #HIGH}]
    @UI.selectionField  : [{position : 30}]
    @UI.textArrangement : #TEXT_ONLY
    @UI.dataPoint       : {
        qualifier   : 'StatusData',
        title       : 'Status',
        criticality : 'OverallStatusCriticality'
    }
    OverallStatus;
    @UI.lineItem        : [{position : 90}]
    LocalLastChangedAt;
}
