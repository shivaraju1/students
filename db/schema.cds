namespace com.shiva.studentp;
using {  cuid,managed} from '@sap/cds/common';

entity Student:cuid,managed {
    @title:'Student id'
    sid:String(10);
    @title:'Student name'
    name:String(10);
   
}