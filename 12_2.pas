const
     n=5;
     z=2;
type worker_info = record
     Fn:string[100];     //ФИО;
     day : byte; //День недели
     k : array [1..7] of integer; 
     sum_k:integer;
     max_k:integer;
     max_day:byte;
end;
var
     worker:array[1..z] of worker_info;
     worker_read: worker_info;
     kr:boolean;
     l:byte;
     max_sum:integer;
     num:byte;
begin
     AssignFile(output,'text.txt');
     l:=1;
     for var i:byte:=1 to n do
          begin
               if (i=1) then
                    begin
                         readln(worker[1].Fn);
                         readln(worker[1].day);
                         readln(worker[1].k[worker[1].day]);
                         worker[1].sum_k:=worker[1].sum_k+worker[1].k[worker[1].day];
                         worker[1].max_k:=worker[1].k[worker[1].day];
                         worker[1].max_day:=worker[1].day;
                         //writeln(worker[1].Fn,' ',worker[1].day,' ',worker[1].k[worker[1].day]);
                    end
               else
                    begin
                         //writeln(4);
                         readln(worker_read.Fn);
                         for var j:=1 to z do
                              if (worker_read.Fn=worker[j].Fn) then
                                   begin
                                        kr:=true;
                                        readln(worker[j].day);
                                        readln(worker[j].k[worker[j].day]);
                                        worker[j].sum_k:=worker[j].sum_k+worker[j].k[worker[j].day];
                                        if worker[j].max_k<worker[j].k[worker[j].day] then
                                             begin
                                                  worker[j].max_k:=worker[j].k[worker[j].day];
                                                  worker[j].max_day:=worker[j].day;
                                             end;
                                   end;
                         if (kr=false) then
                              begin
                                   //writeln(true);
                                   l:=l+1;
                                   worker[l].Fn:=worker_read.Fn;
                                   readln(worker[l].day);
                                   readln(worker[l].k[worker[l].day]);
                                   worker[l].sum_k:=worker[l].sum_k+worker[l].k[worker[l].day];
                                   worker[l].max_k:=worker[l].k[worker[l].day];
                                   worker[l].max_day:=worker[l].day;
                              end;
                         kr:=false;
                    end;
          end;
     for i:byte:=1 to z do
          begin
               if (i=1) or (max_sum<worker[i].sum_k) then
                    begin
                         max_sum:=worker[i].sum_k;
                         num:=i;
                    end;
               write(worker[i].Fn,' ');
               for var j:byte:=1 to 7 do
                    write(worker[i].k[j],' ');
               write(worker[i].sum_k,' ');
               write(worker[i].max_day,' ');
               write(worker[i].max_k,' ');
               writeln();
          end;
     writeln('Best worker : ',worker[num].Fn,'; Total parts',worker[num].sum_k,'; The best day ',worker[num].max_day,',Total parts in the best day',worker[num].max_k);
     CloseFile(output);
end.
