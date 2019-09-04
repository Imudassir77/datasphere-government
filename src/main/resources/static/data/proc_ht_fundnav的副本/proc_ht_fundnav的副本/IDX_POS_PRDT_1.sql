-- Create table
create table POS_PRDT
(
  id                  NUMERIC(18) not null,
  manager_id          NUMERIC(18) not null,
  prdt_code           VARCHAR(20) not null,
  prdt_name           VARCHAR(100) not null,
  bus_type            NUMERIC(1),
  create_date         DATE,
  bulletin_pub_flag   NUMERIC(1),
  nav_cycle           NUMERIC(1),
  have_child_flag     NUMERIC(1),
  prdt_convert_code   VARCHAR(20),
  regular_report_flag NUMERIC(1),
  nav_flag            NUMERIC(1),
  duration_period     VARCHAR(50),
  trustee_name        VARCHAR(200),
  share_regist_org    VARCHAR(200)
);
-- Add comments to the table 
comment on table POS_PRDT
  is '��Ʒ������Ϣ��';
-- Add comments to the columns 
comment on column POS_PRDT.manager_id
  is '����������';
comment on column POS_PRDT.prdt_code
  is '��Ʒ����';
comment on column POS_PRDT.prdt_name
  is '��Ʒ����';
comment on column POS_PRDT.bus_type
  is '1-��� 2-�й� 3-���+�й�';
comment on column POS_PRDT.create_date
  is '��������';
comment on column POS_PRDT.bulletin_pub_flag
  is '�Ƿ���ɹ����˷����� 1���� 0���� Ĭ�Ϸ��ṩ��ť�޸ġ�����񣬹����˿����������棬������չʾ��Ͷ����';
comment on column POS_PRDT.nav_cycle
  is '��Ʒ��ֵ����1���� 2���� 3����';
comment on column POS_PRDT.have_child_flag
  is '1��ĸ�Ӳ�Ʒ  0����ĸ�Ӳ�Ʒ';
comment on column POS_PRDT.prdt_convert_code
  is '��Ʒת����Ӧ��ϵ��';
comment on column POS_PRDT.regular_report_flag
  is '1���� 0����';
comment on column POS_PRDT.nav_flag
  is '1���� 0����';
comment on column POS_PRDT.duration_period
  is '������';
comment on column POS_PRDT.trustee_name
  is '�й�������';
comment on column POS_PRDT.share_regist_org
  is '�ݶ�Ǽǻ���';
-- Create/Recreate indexes 
create index IDX_POS_PRDT_1 on POS_PRDT (MANAGER_ID, PRDT_CODE);
-- Create/Recreate primary, unique and foreign key constraints 
alter table POS_PRDT
  add constraint PK_POS_PRDT primary key (ID);
