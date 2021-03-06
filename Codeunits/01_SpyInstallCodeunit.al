codeunit 50005 SpyInstallCodeUnit
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        VatRegFormat: Record "VAT Registration No. Format";
    begin
        InsertWebservice('SpyPaymentTerm', 4, 'page');
        InsertWebservice('SpyCustomer', 50093, 'page');
        InsertWebservice('SpySupplier', 26, 'page');
        InsertWebservice('SpyLedgerAccount', 16, 'page');
        InsertWebservice('SpyCustomerTemplate', 5157, 'page');
        InsertWebservice('SpyCreateJournalLine', 50006, 'codeunit');
        InsertWebservice('SpyCustomerTrans', 25, 'page');
        InsertWebservice('SpySupplierTrans', 29, 'page');
        InsertWebservice('SpyCalcCustomerBalance', 50008, 'codeunit');
        InsertWebService('SpyGeneralJournalLine', 39, 'page');
        InsertWebService('SpyJournalPage', 50084, 'page');
        InsertWebService('SpyCustLedgerPage', 50085, 'page');
        InsertWebService('SpyVendLedgerPage', 50086, 'page');
        InsertWebService('SpyCountryPage', 10, 'page');
        InsertWebservice('SpyExchangeRates', 483, 'page');
        InsertWebservice('SpyLedgerTrans', 20, 'page');
        InsertWebservice('SpyPostCode', 50089, 'page');
        InsertWebservice('SpyTemplateLine', 50090, 'page');
        InsertWebservice('SpyDefaultDimension', 50091, 'page');
        InsertWebservice('SpyVatPostingSetup', 472, 'page');
        InsertWebservice('SpyFieldsPage', 50092, 'page');
        InsertWebservice('SpyApplyCustomerTemplates', 50009, 'codeunit');

        // Slet eventuelle CVR format records
        if VatRegFormat.FindSet() then
            VatRegFormat.DeleteAll();
    end;

    procedure InsertWebservice(Name: text[100]; Id: Integer; ObjType: text);

    var
        webservice: record "Tenant Web Service";
    begin
        webservice.setfilter("Service Name", Name);
        if webservice.FindSet() then begin
            webservice.Delete();
        end;
        webservice.setfilter("Service Name", Name);
        if not webservice.findset() then begin
            webservice.init;
            WebService."Object ID" := Id;
            webservice.Published := true;
            EVALUATE(webservice."Object Type", ObjType);
            webservice."Service Name" := Name;
            webservice.Insert(true);
        end;
    end;
}