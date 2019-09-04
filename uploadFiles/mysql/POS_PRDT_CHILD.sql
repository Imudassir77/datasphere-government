-- Create table
create table POS_PRDT_CHILD
(
  id               NUMERIC(18) not null,
  manager_id       NUMERIC(18) not null,
  parent_prdt_code VARCHAR(20) not null,
  prdt_code        VARCHAR(20) not null,
  prdt_name        VARCHAR(100) not null,
  bus_type         NUMERIC(1),
  create_date      DATE,
  memo             VARCHAR(200)
);
-- Add comments to the table 
comment on table POS_PRDT_CHILD
  is '�Ӳ�Ʒ��Ϣ��   ��ĸ�Ӳ�ƷҲ������ڴ˱���';
-- Add comments to the columns 
comment on column POS_PRDT_CHILD.manager_id
  is '����������';
comment on column POS_PRDT_CHILD.parent_prdt_code
  is 'ĸ��Ʒ����';
comment on column POS_PRDT_CHILD.prdt_code
  is '��Ʒ����';
comment on column POS_PRDT_CHILD.prdt_name
  is '��Ʒ����';
comment on column POS_PRDT_CHILD.bus_type
  is '1-��� 2-�й� 3-���+�й�';
comment on column POS_PRDT_CHILD.create_date
  is '��������';
comment on column POS_PRDT_CHILD.memo
  is '����';
-- Create/Recreate primary, unique and foreign key constraints 
alter table POS_PRDT_CHILD
  add constraint PK_POS_PRDT_CHILD primary key (ID);
