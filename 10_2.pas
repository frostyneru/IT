const
     n=10;
type info_student = record    
     discipline:string[1]; 
     date_year:word;  
     date_month:byte; 
     date_day:byte;   
     faculty:string[1];    
     course:byte; 
     group:string;
     number:byte;
     rating:byte;
end;  
var
     student : info_student;  
     i:byte;
begin
     for i:=1 to n do
          begin
               readln(student.discipline);
               readln(student.date_year);
               readln(student.date_month);
               readln(student.date_day);
               readln(student.faculty);
               readln(student.course);
               readln(student.group);
               readln(student.number);
               readln(student.rating);
               if (student.discipline='p') 
               and (student.date_year=1995) 
               and ((student.date_month=12) or (student.date_month=1) or (student.date_month=2))
               and (student.faculty='e')
               and ((student.course=1) or (student.course=2))
               and (student.rating=2) then
                    writeln('Группа ',student.group,'; Номер в журнале ',student.number);
               //writeln(student.date_year,' ',student.date_month,' ',student.faculty,' ',student.course,' ',student.rating);
          end;
end.
