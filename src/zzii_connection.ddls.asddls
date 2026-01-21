@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight records'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo:{ typeName: 'connection',
typeNamePlural: 'connections'}
define view entity ZZII_CONNECTION
  as select from /dmo/connection
{
      @UI.facet: [{ id: 'Connection',
                purpose: #STANDARD,
                type: #IDENTIFICATION_REFERENCE,
                position: 10,
                label: 'Connection Detail' },
               { id: 'Flight',
                purpose: #STANDARD,
                type: #LINEITEM_REFERENCE,
                position: 20,
                label: 'Flights'}]
      @UI.lineItem: [{ position: 10 , label: 'Airline'}]
      @UI.identification: [{ position: 10 }]
  key carrier_id      as CarrierId,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
  key connection_id   as ConnectionId,
      @UI.lineItem: [{ position: 30, label: 'Departure Airport ID'}]
      @UI.identification: [{ position: 30, label: 'Departure Airport ID' }]
      airport_from_id as AirportFromId,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      airport_to_id   as AirportToId,
      @UI.lineItem: [{ position: 50, label: 'Departure Time' }]
      @UI.identification: [{ position: 50 }]
      departure_time  as DepartureTime,
      @UI.lineItem: [{ position: 60, label: 'Arrival Time'}]
      @UI.identification: [{ position: 60 }]
      arrival_time    as ArrivalTime,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      @UI.identification: [{ position: 70 }]
      distance        as Distance,
      distance_unit   as DistanceUnit
}
