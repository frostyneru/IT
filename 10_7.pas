const
     n=2; //Количество телефонных разговоров
type phone_conversation = record
     phone_number:integer;
     date_year:word;
     date_month:byte;
     date_day:byte;
     time_hour:byte;
     time_minute:byte;
     code:word;
     another_number:integer;
     time:word;
     category:boolean;
     tariff:byte;
end;
var
     conversation:phone_conversation;
begin
     for var i:byte:=1 to n do
          begin
               readln(conversation.phone_number);
               readln(conversation.date_year);
               readln(conversation.date_month);
               readln(conversation.date_day);
               readln(conversation.time_hour);
               readln(conversation.time_minute);
               readln(conversation.code);
               readln(conversation.another_number);
               readln(conversation.time);
               readln(conversation.category);     //Если срочный, то true
               readln(conversation.tariff);
               if (conversation.phone_number=235678)
               and (conversation.date_day=8)
               and (conversation.date_month=3)
               and (conversation.date_year=1996)
               then 
                    writeln('Код города ',conversation.code,'; Номер телефона ',conversation.another_number);
          end;
end.
