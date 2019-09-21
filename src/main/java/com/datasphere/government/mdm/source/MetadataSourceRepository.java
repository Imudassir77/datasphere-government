/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.datasphere.government.mdm.source;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.Set;

import com.datasphere.server.domain.mdm.Metadata;
import com.datasphere.server.domain.mdm.MetadataProjections;

/**
 * Created by aladin on 2019. 8. 30..
 */
@RepositoryRestResource(exported = false, itemResourceRel = "metasource", collectionResourceRel = "metasources",
    excerptProjection = MetadataProjections.DefaultProjection.class)
public interface MetadataSourceRepository extends JpaRepository<MetadataSource, String>,
    QuerydslPredicateExecutor<MetadataSource> {

  Set<MetadataSource> findMetadataSourcesByTypeAndSchema(Metadata.SourceType type, String schema);

  Set<MetadataSource> findMetadataSourcesByTypeAndSchemaAndSourceId(Metadata.SourceType type, String schema, String sourceId);
}
