/*
 * Copyright 2019, Huahuidata, Inc.
 * DataSphere is licensed under the Mulan PSL v1.
 * You can use this software according to the terms and conditions of the Mulan PSL v1.
 * You may obtain a copy of Mulan PSL v1 at:
 * http://license.coscl.org.cn/MulanPSL
 * THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR
 * PURPOSE.
 * See the Mulan PSL v1 for more details.
 */

package com.datasphere.government.datalineage.gsp.dataflow.model;

public class RecordSetRelation extends AbstractRelation
{

	private String aggregateFunction;

	public String getAggregateFunction( )
	{
		return aggregateFunction;
	}

	public void setAggregateFunction( String aggregateFunction )
	{
		this.aggregateFunction = aggregateFunction;
	}

	@Override
	public RelationType getRelationType( )
	{
		return RelationType.dataflow_recordset;
	}

}
