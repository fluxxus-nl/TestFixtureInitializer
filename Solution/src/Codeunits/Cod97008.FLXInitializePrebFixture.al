Codeunit 97008 "FLX Initialize Preb. Fixture"
{
    // (c) fluxxus.nl
    // this codeunit canbe called in build or release pipeline to set prebuilt fixture

    trigger OnRun()
    var
        FLXLibraryInitialize: Codeunit "FLX Initialize";
    begin
        FLXLibraryInitialize.InitializeBefore();
    end;
}