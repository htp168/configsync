CREATE OR REPLACE PACKAGE [#]<Package_Name> IS

       -- AUTHOR:  HTP168
       -- CREATED: 
       --DESCRIBE:

       PROCEDURE Process_Request(
                 Errbuf  OUT VARCHAR2,
                 Retcode OUT VARCHAR2, 
                 Pv_Params IN VARCHAR2, 
                 Pv_Msg IN VARCHAR2
                 );
                                                    
END <Package_Name>;
