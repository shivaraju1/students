using {  com.shiva.studentp as db} from '../db/schema';
service studentservice {
    entity Student as projection on db.Student;
    

}

annotate studentservice.Student with @odata.draft.enabled;

annotate studentservice.Student with @(
    UI.LineItem : [
        {
            $Type:'UI.DataField',
            Value:sid
        },
        {
            $Type:'UI.DataField',
            Value:name
        },
    ],
    UI.FieldGroup #s :{
        $Type:'UI.FieldGroupType',
        Data:[
            {
            $Type:'UI.DataField',
            Value:sid,
        },
        {
            $Type:'UI.DataField',
            Value:name,
        },
        ]
    },
    UI.Facets:[
        {
            $Type :'UI.ReferenceFacet',
            ID:'sss',
            Label:'jgl',
            Target:'@UI.FieldGroup#s',
        }
    ]
);
