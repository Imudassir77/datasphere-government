-- Create table
create table RUN_RESULT
(
  id          NUMERIC not null,
  pkg_name    VARCHAR(100),
  remark      VARCHAR(100),
  excdate     DATE,
  begin_time  DATE,
  end_time    DATE,
  rowcn       NUMERIC,
  err_message TEXT,
  flag        CHAR(1),
  updateid    TIMESTAMP(6)
);
-- Add comments to the table 
comment on table RUN_RESULT
  is '����ִ�������־��';
-- Add comments to the columns 
comment on column RUN_RESULT.id
  is 'id';
comment on column RUN_RESULT.pkg_name
  is '包名';
comment on column RUN_RESULT.excdate
  is '执行时间';
comment on column RUN_RESULT.end_time
  is '结束时间';
comment on column RUN_RESULT.err_message
  is '错误信息';
comment on column RUN_RESULT.flag
  is '标识';
comment on column RUN_RESULT.updateid
  is '�䶯��ʶ';
-- Create/Recreate indexes 
create index IUM33593732 on RUN_RESULT (UPDATEID);
-- Create/Recreate primary, unique and foreign key constraints 
alter table RUN_RESULT
  add constraint PK_RUN_RESULT_ID primary key (ID);
