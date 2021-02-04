Codeunit 97008 "FLX Initialize Preb. Fixture"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer
    // this codeunit can be called in build or release pipeline to set prebuilt fixture

    trigger OnRun()
    var
        FLXLibraryInitialize: Codeunit "FLX Initialize";
    begin
        FLXLibraryInitialize.Initialize();
    end;
}