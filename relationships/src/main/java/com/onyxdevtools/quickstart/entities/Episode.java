package com.onyxdevtools.quickstart.entities;

import com.onyx.persistence.IManagedEntity;
import com.onyx.persistence.ManagedEntity;
import com.onyx.persistence.annotations.*;

/**
 * Created by timothy.osborn on 11/4/14.
 */
@Entity
public class Episode extends ManagedEntity implements IManagedEntity
{
    @Attribute
    @Identifier
    public String episodeId;

    @Attribute
    public int episodeNumber;

    @Relationship(type = RelationshipType.MANY_TO_ONE,
            cascadePolicy = CascadePolicy.NONE,
            inverse = "episodes",
            inverseClass = Season.class)
    public Season season;

    @Relationship(type = RelationshipType.ONE_TO_ONE,
            inverse = "pilotEpisode",
            inverseClass = Series.class)
    public Series series;


}
