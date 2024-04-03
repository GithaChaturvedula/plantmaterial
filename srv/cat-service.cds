using my.materials as my from '../db/data-model';

service CatalogService {
    entity Materials as projection on my.Materials;
    entity Plants as projection on my.Plants;
}