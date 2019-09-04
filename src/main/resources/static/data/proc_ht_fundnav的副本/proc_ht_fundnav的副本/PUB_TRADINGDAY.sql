-- Create table
create table PUB_TRADINGDAY
(
  id             NUMERIC(18) not null,
  tradingday     DATE,
  exchangecode   NUMERIC(10) not null,
  nexttradingday DATE,
  lasttradingday DATE,
  ntradingdaytm  NUMERIC(2),
  ntradingdaytw  NUMERIC(1),
  ndaytw         NUMERIC(1),
  istradingday   CHAR(1),
  isweekend      CHAR(1),
  ismonthend     CHAR(1),
  isquarterend   CHAR(1),
  isyearend      CHAR(1),
  entrytime      DATE not null,
  updatetime     DATE not null,
  groundtime     DATE not null,
  updateid       NUMERIC(18) not null,
  resourceid     VARCHAR(20) not null,
  recordid       VARCHAR(50),
  normalday      DATE not null,
  lwtradingday   DATE,
  lmtradingday   DATE,
  lytradingday   DATE,
  b5tradingday   DATE,
  b10tradingday  DATE,
  b1mradingday   DATE,
  b3mtradingday  DATE,
  b6mtradingday  DATE
);
-- Add comments to the table 
comment on table PUB_TRADINGDAY
  is '�������ڱ�';
-- Add comments to the columns 
comment on column PUB_TRADINGDAY.id
  is 'ID';
comment on column PUB_TRADINGDAY.tradingday
  is '���һ��������';
comment on column PUB_TRADINGDAY.exchangecode
  is '֤ȯ�г�����';
comment on column PUB_TRADINGDAY.nexttradingday
  is '��һ������';
comment on column PUB_TRADINGDAY.lasttradingday
  is '��һ������';
comment on column PUB_TRADINGDAY.ntradingdaytm
  is '���µ�N��������';
comment on column PUB_TRADINGDAY.ntradingdaytw
  is '���ܵ�N��������';
comment on column PUB_TRADINGDAY.ndaytw
  is '���ܵ�N��';
comment on column PUB_TRADINGDAY.istradingday
  is '�Ƿ�����';
comment on column PUB_TRADINGDAY.isweekend
  is '�Ƿ������һ��������';
comment on column PUB_TRADINGDAY.ismonthend
  is '�Ƿ������һ��������';
comment on column PUB_TRADINGDAY.isquarterend
  is '�Ƿ񱾼����һ��������';
comment on column PUB_TRADINGDAY.isyearend
  is '�Ƿ������һ��������';
comment on column PUB_TRADINGDAY.entrytime
  is '��¼����ʱ��';
comment on column PUB_TRADINGDAY.updatetime
  is '��¼�޸�ʱ��';
comment on column PUB_TRADINGDAY.groundtime
  is '��¼���ʱ��';
comment on column PUB_TRADINGDAY.updateid
  is '�䶯��ʶ';
comment on column PUB_TRADINGDAY.resourceid
  is '��Դ��ʶ';
comment on column PUB_TRADINGDAY.recordid
  is '��Դ��¼';
comment on column PUB_TRADINGDAY.normalday
  is '����';
comment on column PUB_TRADINGDAY.lwtradingday
  is '�������һ��������';
comment on column PUB_TRADINGDAY.lmtradingday
  is '�������һ��������';
comment on column PUB_TRADINGDAY.lytradingday
  is '�������һ��������';
comment on column PUB_TRADINGDAY.b5tradingday
  is 'ǰ���������';
comment on column PUB_TRADINGDAY.b10tradingday
  is 'ǰʮ��������';
comment on column PUB_TRADINGDAY.b1mradingday
  is 'ǰһ���½�����';
comment on column PUB_TRADINGDAY.b3mtradingday
  is 'ǰ�����½�����';
comment on column PUB_TRADINGDAY.b6mtradingday
  is 'ǰ�����½�����';
-- Create/Recreate indexes 
create index IUM30287393 on PUB_TRADINGDAY (UPDATEID);
create index IX_PUB_TRADINGDAY on PUB_TRADINGDAY (TRADINGDAY, EXCHANGECODE);
-- Create/Recreate primary, unique and foreign key constraints 
alter table PUB_TRADINGDAY
  add constraint PK_PUB_TRADINGDAY primary key (ID);
