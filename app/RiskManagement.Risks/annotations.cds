using RiskManagementService as service from '../../srv/service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'prio',
            Value : prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'impact',
            Value : impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'criticality',
            Value : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : supplier_BusinessPartner,
            Label : 'supplier_BusinessPartner',
        },
    ]
);
annotate service.Risks with {
    supplier @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'A_BusinessPartner',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : supplier_BusinessPartner,
                ValueListProperty : 'BusinessPartner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Customer',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Supplier',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'AcademicTitle',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'AuthorizationGroup',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BusinessPartnerFullName',
            },
        ],
    }
};
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplier_BusinessPartner',
                Value : supplier_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerFullName,
                Label : 'BusinessPartnerFullName',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerIsBlocked,
                Label : 'BusinessPartnerIsBlocked',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : '{i18n>Mitiid}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Risks with {
    supplier @Common.ValueListWithFixedValues : false
};
annotate service.A_BusinessPartner with {
    BusinessPartnerIsBlocked @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_BusinessPartner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : BusinessPartnerIsBlocked,
                    ValueListProperty : 'BusinessPartnerIsBlocked',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};