<changeSet author="CHANGEME" id="CHANGEME">
<createTable tableName="enc_pelicula">
  <column name="id" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
  <column name="nombre_categoria" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="enc_pelicula" constraintName="enc_pelicula_pk" columnNames="id"/>

<createTable tableName="det_pelicula">
  <column name="id" type="INTEGER">
    <constraints nullable="false"/>
  </column>
  <column name="enc_pelicula_id" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
  <column name="nombre" type="VARCHAR(50)">
    <constraints nullable="false"/>
  </column>
  <column name="imagen" type="VARBINARY(0)">
    <constraints nullable="false"/>
  </column>
  <column name="descripcion" type="VARCHAR(100)">
    <constraints nullable="false"/>
  </column>
  <column name="trailer" type="VARBINARY(0)">
    <constraints nullable="false"/>
  </column>
  <column name="categoria" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
</createTable>

<addForeignKeyConstraint baseTableName="det_pelicula" constraintName="enc_pelicula_det_pelicula_fk" baseColumnNames="enc_pelicula_id" referencedTableName="enc_pelicula" referencedColumnNames="id"/>
</changeSet>
