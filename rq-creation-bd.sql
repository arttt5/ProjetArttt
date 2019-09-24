
--Table: administrateur

CREATE TABLE administrateur(
        id_admin     Int   NOT NULL ,
        nom_admin    Varchar (20) NOT NULL ,
        prenom_admin Varchar (20) NOT NULL
	,CONSTRAINT administrateur_PK PRIMARY KEY (id_admin)
);



-- Table: association

CREATE TABLE association(
        id_association            Int   NOT NULL ,
        nom_association           Varchar (20) NOT NULL ,
        tel_association           Varchar (10)  NULL ,
        adresse_association       Varchar (50)  NULL ,
        adresse_email_association Varchar (20)  NULL ,
        code_postal_association   Int  NULL ,
        nature_association        Varchar (20)  NULL
	,CONSTRAINT association_PK PRIMARY KEY (id_association)
);


-- Table: client

CREATE TABLE client(
        id_client                  Int   NOT NULL ,
        nom_client                 Varchar (20) NOT NULL ,
        prenom_client              Varchar (20) NOT NULL ,
        adresse_client             Varchar (50)  NULL ,
        code_postal_client         Int  NULL ,
        adresse_email_client       Varchar (20) NOT NULL ,
        adresse_facturation_client Varchar (20)  NULL ,
        tel_client                 Varchar (10)  NULL
	,CONSTRAINT client_PK PRIMARY KEY (id_client)
);



--Table: fournisseur


CREATE TABLE fournisseur(
        id_fournisseur            Int   NOT NULL ,
        nom_fournisseur           Varchar (50)  NULL ,
        prenom_fournisseur        Varchar (50)  NULL ,
        adresse_fournisseur       Varchar (50)  NULL ,
        code_postal_fournisseur   Int  NULL ,
        adresse_email_fournisseur Varchar (20)  NULL ,
        tel_fournisseur           Varchar (10)  NULL
	,CONSTRAINT fournisseur_PK PRIMARY KEY (id_fournisseur)
);



-- Table: catégorie

CREATE TABLE categorie(
        id_categorie  Int   NOT NULL ,
        nom_categorie Varchar (20)  NULL
	,CONSTRAINT categorie_PK PRIMARY KEY (id_categorie)
);



-- Table: produit

CREATE TABLE produit(
        id_produit   Int    NOT NULL ,
        nom_produit  Varchar (20) NOT NULL ,
        prix_produit Float  NULL ,
        note_produit Varchar (10)  NULL ,
        id_categorie Int NOT NULL
	,CONSTRAINT produit_PK PRIMARY KEY (id_produit)
);



--Table: marque

CREATE TABLE marque(
        id_marque    Int    NOT NULL ,
        nom_marque   Varchar (20)  NULL ,
        id_categorie Int NOT NULL
	,CONSTRAINT marque_PK PRIMARY KEY (id_marque)
);



--Table: modele

CREATE TABLE modele(
        id_model  Int    NOT NULL ,
        nom_model Varchar (20)  NULL ,
        id_marque Int NOT NULL
	,CONSTRAINT modele_PK PRIMARY KEY (id_model)
);



--Table: facture

CREATE TABLE facture(
        id_facture     Int    NOT NULL ,
        montat_a_payee Float  NULL
	,CONSTRAINT facture_PK PRIMARY KEY (id_facture)
);



-- Table: stock


CREATE TABLE stock(
        id_stock Int    NOT NULL
	,CONSTRAINT stock_PK PRIMARY KEY (id_stock)
);



--Table: connexion_admin


CREATE TABLE connexion_admin(
        id_admin           Int    NOT NULL ,
        pseudo_admin       Varchar (20) NOT NULL ,
        mot_de_passe_admin Varchar (20) NOT NULL
	,CONSTRAINT connexion_admin_PK PRIMARY KEY (id_admin)
);



--Table: connexion_client

CREATE TABLE connexion_client(
        id_client           Int    NOT NULL ,
        nom_utilisateur     Varchar (20) NOT NULL ,
        mot_de_passe_client Varchar (20) NOT NULL
	,CONSTRAINT connexion_client_PK PRIMARY KEY (id_client)
);



-- Table: commande

CREATE TABLE commande(
        id_commande      Int    NOT NULL ,
        montant_commande Float  NULL ,
        type_paiement    Varchar (20) NOT NULL ,
        date_livraison   Date  NULL ,
        id_livraison     Int NOT NULL
	,CONSTRAINT commande_PK PRIMARY KEY (id_commande)
);



--Table: livraison

CREATE TABLE livraison(
        id_livraison   Int    NOT NULL ,
        mode_livraison Varchar (20)  NULL ,
        prix_livraison Decimal  NULL ,
        date_livraison Date  NULL ,
        id_commande    Int NOT NULL
	,CONSTRAINT livraison_PK PRIMARY KEY (id_livraison)
);



-- Table: organiser

CREATE TABLE organiser(
        id_association Int NOT NULL ,
        id_admin       Int NOT NULL
	,CONSTRAINT organiser_PK PRIMARY KEY (id_association,id_admin)
);



--Table: existe

CREATE TABLE existe(
        id_stock   Int NOT NULL ,
        id_produit Int NOT NULL ,
        quantite   Decimal  NULL
	,CONSTRAINT existe_PK PRIMARY KEY (id_stock,id_produit)
);



--Table: gérer

CREATE TABLE gerer(
        id_admin  Int NOT NULL ,
        id_client Int NOT NULL
	,CONSTRAINT gerer_PK PRIMARY KEY (id_admin,id_client)
);



--Table: fournir


CREATE TABLE fournir(
        id_admin       Int NOT NULL ,
        id_fournisseur Int NOT NULL ,
        id_produit     Int NOT NULL ,
        date_fournir   Date  NULL
	,CONSTRAINT fournir_PK PRIMARY KEY (id_admin,id_fournisseur,id_produit)
);




-- Table: effectuer


CREATE TABLE effectuer(
        id_commande    Int NOT NULL ,
        id_facture     Int NOT NULL ,
        id_client      Int NOT NULL ,
        promotion      Float  NULL ,
        date_commande  Date  NULL
	,CONSTRAINT effectuer_PK PRIMARY KEY (id_commande,id_facture,id_client)
);




ALTER TABLE produit
	ADD CONSTRAINT produit_categorie0_FK
	FOREIGN KEY (id_categorie)
	REFERENCES categorie(id_categorie);

ALTER TABLE marque
	ADD CONSTRAINT marque_categorie0_FK
	FOREIGN KEY (id_categorie)
	REFERENCES categorie(id_categorie);

ALTER TABLE modele
	ADD CONSTRAINT modele_marque0_FK
	FOREIGN KEY (id_marque)
	REFERENCES marque(id_marque);

ALTER TABLE organiser
	ADD CONSTRAINT organiser_association0_FK
	FOREIGN KEY (id_association)
	REFERENCES association(id_association);

ALTER TABLE organiser
	ADD CONSTRAINT organiser_administrateur1_FK
	FOREIGN KEY (id_admin)
	REFERENCES administrateur(id_admin);

ALTER TABLE existe
	ADD CONSTRAINT existe_stock0_FK
	FOREIGN KEY (id_stock)
	REFERENCES stock(id_stock);

ALTER TABLE existe
	ADD CONSTRAINT existe_produit1_FK
	FOREIGN KEY (id_produit)
	REFERENCES produit(id_produit);

ALTER TABLE gerer
	ADD CONSTRAINT gerer_administrateur0_FK
	FOREIGN KEY (id_admin)
	REFERENCES administrateur(id_admin);

ALTER TABLE gerer
	ADD CONSTRAINT gerer_client1_FK
	FOREIGN KEY (id_client)
	REFERENCES client(id_client);

ALTER TABLE fournir
	ADD CONSTRAINT fournir_administrateur0_FK
	FOREIGN KEY (id_admin)
	REFERENCES administrateur(id_admin);

ALTER TABLE fournir
	ADD CONSTRAINT fournir_fournisseur1_FK
	FOREIGN KEY (id_fournisseur)
	REFERENCES fournisseur(id_fournisseur);

ALTER TABLE fournir
	ADD CONSTRAINT fournir_produit2_FK
	FOREIGN KEY (id_produit)
	REFERENCES produit(id_produit);

ALTER TABLE commande
	ADD CONSTRAINT commande_livraison0_FK
	FOREIGN KEY (id_livraison)
	REFERENCES livraison(id_livraison);

ALTER TABLE commande 
	ADD CONSTRAINT commande_livraison0_AK 
	UNIQUE (id_livraison);

ALTER TABLE livraison
	ADD CONSTRAINT livraison_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE livraison 
	ADD CONSTRAINT livraison_commande0_AK 
	UNIQUE (id_commande);

ALTER TABLE effectuer
	ADD CONSTRAINT effectuer_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE effectuer
	ADD CONSTRAINT effectuer_facture1_FK
	FOREIGN KEY (id_facture)
	REFERENCES facture(id_facture);

ALTER TABLE effectuer
	ADD CONSTRAINT effectuer_client2_FK
	FOREIGN KEY (id_client)
	REFERENCES client(id_client);
