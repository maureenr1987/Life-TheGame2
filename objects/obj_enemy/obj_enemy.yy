{
    "id": "096c81af-a960-4782-b9f7-a33b636611ba",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_enemy",
    "eventList": [
        {
            "id": "9b45f6e7-db7f-484e-b211-aa0dfe4fbdfe",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 10,
            "eventtype": 7,
            "m_owner": "096c81af-a960-4782-b9f7-a33b636611ba"
        },
        {
            "id": "992411e7-e894-4216-ac6b-a04b1ef5f5e7",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 11,
            "eventtype": 7,
            "m_owner": "096c81af-a960-4782-b9f7-a33b636611ba"
        },
        {
            "id": "fb200fc7-0d66-4e37-8604-aa902d1e1c7f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "096c81af-a960-4782-b9f7-a33b636611ba"
        },
        {
            "id": "6993e9b7-bc7a-43e7-b0af-883036545696",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 12,
            "m_owner": "096c81af-a960-4782-b9f7-a33b636611ba"
        },
        {
            "id": "7e84406a-3666-4d37-8c35-75733d9ba151",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 20,
            "eventtype": 7,
            "m_owner": "096c81af-a960-4782-b9f7-a33b636611ba"
        }
    ],
    "maskSpriteId": "6b1c400a-ab1d-487e-b4ce-f6bb6557e111",
    "overriddenProperties": [
        
    ],
    "parentObjectId": "7419a4d1-bf5b-4886-bd79-5cebcf529ffe",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "cac99ec5-2927-4de0-b2dd-c41499d5201c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_player",
            "varName": "nemesis",
            "varType": 5
        },
        {
            "id": "3525d1bc-76f7-430d-9ae1-98560670b7f7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "300",
            "varName": "look_dist",
            "varType": 1
        },
        {
            "id": "c035da24-19a7-436a-afa6-a0c17bd889ea",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "50",
            "varName": "retreat_dist",
            "varType": 1
        },
        {
            "id": "3f68be4e-f7d1-469b-a557-4f51b9d407c9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "chase_dist",
            "varType": 1
        },
        {
            "id": "760ef96f-aede-4316-819c-de658cdcf1b2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "50",
            "varName": "look_angle",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "88880e96-a83b-4495-84ef-d0e42e92404e",
    "visible": true
}