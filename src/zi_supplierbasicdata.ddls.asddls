@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Supplier Basic Data - Interface View'
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory:   #M,
  dataClass:      #MASTER
}

define view entity ZI_SupplierBasicData
  as select from I_Supplier
{
  key Supplier,
      SupplierName,
      CityName,
      Country,
      TaxNumber1,
      SupplierAccountGroup,
      PostingIsBlocked,
      CreationDate
}
