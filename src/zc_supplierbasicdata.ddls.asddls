@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Supplier Basic Data - Consumption View'
@Metadata.allowExtensions: true

define view entity ZC_SupplierBasicData
  as select from ZI_SupplierBasicData
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Supplier_VH', element: 'Supplier' } }]
  key Supplier,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      SupplierName,

      CityName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Country', element: 'Country' } }]
      Country,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_RegionVH', element: 'Region' },
                                            additionalBinding: [{ localElement: 'Country', element: 'Country' }] }]
      Region,

      TaxNumber1,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_SupplierAccountGroup', element: 'SupplierAccountGroup' } }]
      SupplierAccountGroup,

      PostingIsBlocked,

      case PostingIsBlocked
        when 'X' then 1
        else          3
      end as PostingIsBlockedCriticality,

      @Consumption.filter.selectionType: #RANGE
      CreationDate
}
