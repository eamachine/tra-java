//FOCUS of the technology

CREATE (BusinessApps:Focus {title:'BusinessApps'})
CREATE (BusinessInteligence:Focus {title:'BusinessInteligence'})
CREATE (Devops:Focus {title:'Devops'})
CREATE (Networking:Focus {title:'Networking'})
CREATE (Databases:Focus {title:'Databases'})
CREATE (Storage:Focus {title:'Storage'})
CREATE (Architecture:Focus {title:'Architecture'})

//TOPICS

CREATE (Frontend:topic {title:'Frontend'})
CREATE (Backend:topic {title:'Backend'})
CREATE (Mobile:topic {title:'Mobile'})

CREATE (SQL:topic {title:'SQL',name:'Structured Query Language'})
CREATE (nosql:topic {title:'no-sql'})
CREATE (ContinuosIntegration:topic {title:'ContinuosIntegration'})
CREATE (ContinousDelivery:topic {title:'ContinousDelivery'})
CREATE (Process:topic {title:'Process'})

//relations between focus and topics
//IS_TOPIC
CREATE
  (Frontend)-[:IS_A]->(BusinessApps),
  (Backend)-[:IS_A]->(BusinessApps),
  (Mobile)-[:IS_A]->(BusinessApps),
  (SQL)-[:IS_A]->(Databases),
  (nosql)-[:IS_A]->(Databases),
  (ContinuosIntegration)-[:IS_A]->(Devops),
  (ContinousDelivery)-[:IS_A]->(Devops),  
  (Process)-[:IS_A]->(Architecture)
  
//PROGRAMMING LANGUAGES
CREATE (Java:language {title:'Java',name:'Java',purpose:'Programming'})
CREATE (c:language {title:'c',name:'c',purpose:'Programming'})
CREATE (csharp:language {title:'csharp',name:'csharp',description:'c#',purpose:'Programming'})
CREATE (c2plus:language {title:'c2plus',name:'c2plus',description:'c++',purpose:'Programming'})
CREATE (php:language {title:'php',name:'php',purpose:'Programming'})
CREATE (ruby:language {title:'ruby',name:'ruby',purpose:'Programming'})
CREATE (r:language {title:'r',name:'r',purpose:'Programming'})
CREATE (Go:language {title:'Go',name:'Go',description:'Golang',purpose:'Programming'})
CREATE (Js:language {title:'Js',name:'Js',description:'javascript',purpose:'Programming'})
CREATE (visualbasic:language {title:'visualbasic',name:'visualbasic',purpose:'Programming'})
CREATE (typescript:language {title:'typescript',name:'typescript',purpose:'Programming'})
CREATE (scala:language {title:'scala',name:'scala',purpose:'Programming'})
CREATE (html:language {title:'html',name:'html',purpose:'Programming'})
CREATE (css:language {title:'css',name:'css',purpose:'Programming'})
CREATE (Asp:language {title:'Asp',name:'Asp',purpose:'Programming'})
CREATE (Jsp:language {title:'Jsp',name:'Jsp',purpose:'Programming'})
CREATE (Jsf:language {title:'Jsf',name:'Jsf',purpose:'Programming'})
CREATE (Phyton:language {title:'Phyton',name:'Phyton',purpose:'Programming'})
CREATE (PERL:language {title:'PERL',name:'PERL',purpose:'Programming'})

//NATIVE LANGUAGE
CREATE (Kotlin :language {title:'Kotlin ',name:'Kotlin ',purpose:'Native'})
CREATE (objectivec:language {title:'objectivec',name:'objectivec',description:'objective c',purpose:'Programming'})
CREATE (swift:language {title:'swift',name:'swift',purpose:'Native'})

//PROCESS LANGUAGES
CREATE (Cammel:language {title:'Cammel',name:'Cammel',purpose:'Process'})
CREATE (BPEL:language {title:'BPEL',name:'BPEL',description:'Business Process Execution Language'})
CREATE (BPMN:language {title:'BPMN',name:'BPMN',description:'business process management notation',purpose:'Process'})

//DESCRIPTION LANGUAGES
CREATE (json:language {title:'json',name:'json',description:'JavaScript Object Notation',purpose:'Process'})
CREATE (xml:language {title:'xml',name:'xml',description:'eXtensible Markup Language'})
CREATE (YAML:language {title:'YAML',name:'YAML',description:'YAML Aint Markup Language',purpose:'Description'})
CREATE (RAML:language {title:'RAML',name:'RAML',description:'RESTful API Modeling Language',purpose:'Description'})

//VIDEO GAME LANGUAGES
CREATE (Unity:language {title:'Unity',name:'Unity',purpose:'Video Games'})

//QUERY LANGUAGES, DB
CREATE (Cypher:language {title:'Cypher',name:'Cypher',description:'graph query language',purpose:'Video Games'})
CREATE (SQLanguage:language {title:'SQL',name:'SQL',description:'Structured Query Language'})
CREATE (PLSQL:language {title:'PLSQL',name:'PLSQL',description:'procedural language SQL',purpose:'Query DB'})

//Relation between languages frontend and backend
//IS_A
CREATE
  (Java)-[:RELATED_AS]->(Backend),
  (csharp)-[:RELATED_AS]->(Backend),
  (c)-[:RELATED_AS]->(Backend),
  (visualbasic)-[:RELATED_AS]->(Backend),
  (c2plus)-[:RELATED_AS]->(Backend),
  (c)-[:RELATED_AS]->(Backend),
  (Js)-[:RELATED_AS]->(Backend),
  (php)-[:RELATED_AS]->(Backend),
  (php)-[:RELATED_AS]->(Frontend),
  (Go)-[:RELATED_AS]->(Backend),  
  (ruby)-[:RELATED_AS]->(Backend),  
  (Phyton)-[:RELATED_AS]->(Backend),
  (scala)-[:RELATED_AS]->(Backend),
  (PERL)-[:RELATED_AS]->(Backend),
  (html)-[:RELATED_AS]->(Frontend),
  (css)-[:RELATED_AS]->(Frontend),
  (Asp)-[:RELATED_AS]->(Frontend),
  (Jsp)-[:RELATED_AS]->(Frontend),
  (Jsf)-[:RELATED_AS]->(Frontend),
  (Js)-[:RELATED_AS]->(Frontend),
  (typescript)-[:RELATED_AS]->(Frontend),
  (Kotlin)-[:RELATED_AS]->(Mobile),
  (objectivec)-[:RELATED_AS]->(Mobile),
  (swift)-[:RELATED_AS]->(Mobile)

//Relation between two languages that are consider similar
//SAME_AS
CREATE
  (Java)-[:SAME_AS]->(csharp),
  (Java)-[:SAME_AS]->(Phyton),
  (csharp)-[:SAME_AS]->(visualbasic),
  (csharp)-[:SAME_AS]->(c2plus),
  (Jsp)-[:SAME_AS]->(Jsf),
  (Jsp)-[:SAME_AS]->(Asp)

//Relation between two languges that work together
//JOIN
CREATE
  (Java)-[:JOIN_WITH]->(Jsp),
  (Java)-[:JOIN_WITH]->(Jsf),
  (csharp)-[:JOIN_WITH]->(Asp),
  (html)-[:JOIN_WITH]->(css),
  (html)-[:JOIN_WITH]->(Js),
  (css)-[:JOIN_WITH]->(Js),
  (typescript)-[:JOIN_WITH]->(Js)

//FRAMEWORKS
CREATE (Spring:Framework {title:'Spring',name:'Spring'})
CREATE (Laravel:Framework {title:'Laravel',name:'Laravel'})
CREATE (Lumen:Framework {title:'Lumen',name:'Lumen'})
CREATE (JEE:Framework {title:'JEE',name:'JEE',description:'Java Enterprise Edition'})
CREATE (Django:Framework {title:'Django',name:'Django'})
CREATE (Flask:Framework {title:'Flask',name:'Flask'})
CREATE (Ionic:Framework {title:'Ionic',name:'Ionic'})
CREATE (Xamarin:Framework {title:'Xamarin',name:'Xamarin'})
CREATE (Springboot:Framework {title:'Springboot',name:'Springboot'})
CREATE (Rails:Framework {title:'Rails',name:'Rails',description:'Ruby on rails'})
CREATE (Express:Framework {title:'Express',name:'Express'})
CREATE (WPF:Framework {title:'WPF',name:'WPF',description:'Windows Presentation Foundation'})
CREATE (UWP:Framework {title:'UWP',name:'UWP',description:'Universal Windows Platform '})
CREATE (React:Framework {title:'React',name:'React'})
CREATE (Angular :Framework {title:'Angular ',name:'Angular '})
CREATE (Angularjs:Framework {title:'Angularjs',name:'Angularjs'})
CREATE (Vue:Framework {title:'Vue',name:'Vue'})
CREATE (ReactNative:Framework {title:'React native',name:'React native'})
CREATE (Cordova:Framework {title:'Cordova',name:'Cordova'})
CREATE (Phonegap:Framework {title:'Phonegap',name:'Phonegap'})
CREATE (Ibatis:Framework {title:'Ibatis',name:'Ibatis'})
CREATE (Swing:Framework {title:'Swing',name:'Swing'})
CREATE (Hadoop:Framework {title:'Hadoop',name:'Hadoop'})
CREATE (net:Framework {title:'net',name:'net'})
CREATE (netcore:Framework {title:'netcore',name:'netcore'})
CREATE (Hibernate:Framework {title:'Hibernate',name:'Hibernate'})
CREATE (Toplink:Framework {title:'Toplink',name:'Toplink'})
CREATE (openJpa:Framework {title:'openJpa',name:'openJpa'})
CREATE (eclipseLink:Framework {title:'eclipseLink',name:'eclipseLink'})
CREATE (EntityFamework:Framework {title:'EntityFamework',name:'EntityFamework'})
CREATE (adoNet:Framework {title:'ado.net',name:'ado.net'})
CREATE (dapper:Framework {title:'dapper',name:'dapper'})
CREATE (nhibernate:Framework {title:'nhibernate',name:'nhibernate'})
CREATE (SQLAlchemy:Framework {title:'SQLAlchemy',name:'SQLAlchemy'})


//Architecture frameworks
CREATE (APQC:Framework {title:'APQC',name:'APQC',description:'American Productivity & Quality Center'})

//Relation between languages and frameworks
//CODE_WITH
CREATE
  (Spring)-[:CODE_WITH]->(Java),
  (Springboot)-[:CODE_WITH]->(Java),
  (JEE)-[:CODE_WITH]->(Java),
  (Swing)-[:CODE_WITH]->(Java),
  (Laravel)-[:CODE_WITH]->(php),
  (Lumen)-[:CODE_WITH]->(php),
  (Django)-[:CODE_WITH]->(Phyton),
  (Rails)-[:CODE_WITH]->(ruby),
  (Xamarin)-[:CODE_WITH]->(csharp),
  (WPF)-[:CODE_WITH]->(csharp),
  (UWP)-[:CODE_WITH]->(csharp),
  (netcore)-[:CODE_WITH]->(csharp),
  (net)-[:CODE_WITH]->(csharp),
  (Angular)-[:CODE_WITH]->(Js),
  (Angularjs)-[:CODE_WITH]->(Js),
  (Vue)-[:CODE_WITH]->(Js),
  (React)-[:CODE_WITH]->(Js),  
  (Express)-[:CODE_WITH]->(Js),
  (Ionic)-[:CODE_WITH]->(Js),
  (ReactNative)-[:CODE_WITH]->(Js),
  (Cordova)-[:CODE_WITH]->(Js),
  (Phonegap)-[:CODE_WITH]->(Js),
  (Hibernate)-[:CODE_WITH]->(Java),
  (Toplink)-[:CODE_WITH]->(Java),
  (openJpa)-[:CODE_WITH]->(Java),
  (eclipseLink)-[:CODE_WITH]->(Java),
  (EntityFamework)-[:CODE_WITH]->(csharp),
  (adoNet)-[:CODE_WITH]->(csharp),
  (dapper)-[:CODE_WITH]->(csharp),
  (nhibernate)-[:CODE_WITH]->(csharp),
  (SQLAlchemy)-[:CODE_WITH]->(Phyton)

//Relation between frameworks, one is a micro framework or version reduced
//MICRO
CREATE
  (Springboot)-[:MICRO]->(Spring),  
  (Laravel)-[:MICRO]->(Lumen),
  (netcore)-[:MICRO]->(net),
  (Angular)-[:MICRO]->(Angularjs)

//Relation between frameworks that are similar 
//SAME_AS
CREATE
  (JEE)-[:SAME_AS]->(Spring),
  (Angular)-[:SAME_AS]->(React),
  (Angular)-[:SAME_AS]->(Vue),
  (Xamarin)-[:SAME_AS]->(ReactNative),
  (React)-[:SAME_AS]->(Vue),
  (Phonegap)-[:SAME_AS]->(Cordova)

//Relation between a framework and a topic
//RELATED_AS
CREATE
  (APQC)-[:RELATED_AS]->(Process)

//Information System IS
CREATE (CMS:IS {title:'CMS',name:'CMS',description:'Content management system'})
CREATE (CRM:IS {title:'CRM',name:'CRM',description:'Customer Relationship Management'})
CREATE (ERP:IS {title:'ERP',name:'ERP',description:'enterprise resource planning'})
CREATE (Ecommerce:IS {title:'Ecommerce',name:'Ecommerce',description:'ecommerce'})
CREATE (VRM:IS {title:'VRM',name:'VRM',description:'Vendor relationship Management (VRM)'})
CREATE (SRM:IS {title:'SRM',name:'SRM',description:'Supplier Relationship Management (SRM)'})
CREATE (HRM:IS {title:'HRM',name:'HRM',description:'Human Resource Management (HRM)'})
CREATE (Accounting:IS {title:'Accounting',name:'Accounting',description:'Accounting and  Bank Management'})
CREATE (Inventory:IS {title:'Inventory',name:'Inventory',description:'Products and Services Management'})
CREATE (Marketing:IS {title:'Marketing',name:'Marketing',description:'Marketing'})
CREATE (PMS:IS {title:'PMS',name:'PMS',description:'Project Management (PM)'})


//TOOL
CREATE (Sitecore:tool {title:'Sitecore',name:'Sitecore',purpose:'Web page'})
CREATE (AEM:tool {title:'AEM',name:'AEM',purpose:'Web page'})
CREATE (Drupal:tool {title:'Drupal',name:'Drupal',purpose:'Web page'})
CREATE (Wordpress:tool {title:'Wordpress',name:'Wordpress',purpose:'Web page'})
CREATE (Joomla:tool {title:'Joomla',name:'Joomla',purpose:'Web page'})
CREATE (Directus:tool {title:'Directus',name:'Directus',purpose:'Web page'})


//CMS RELATIONSHIP
//relationship between a tool and IS type
CREATE
  (Sitecore)-[:IS_A]->(CMS),
  (AEM)-[:IS_A]->(CMS),
  (Drupal)-[:IS_A]->(CMS),
  (Wordpress)-[:IS_A]->(CMS),
  (Joomla)-[:IS_A]->(CMS),
  (Directus)-[:IS_A]->(CMS)

//relation between a tool and a language
CREATE
  (Sitecore)-[:CODE_WITH]->(csharp),
  (AEM)-[:CODE_WITH]->(Java),
  (Drupal)-[:CODE_WITH]->(php),
  (Wordpress)-[:CODE_WITH]->(php),
  (Joomla)-[:CODE_WITH]->(php),
  (Directus)-[:CODE_WITH]->(Js)

//TOOl
//DB relational
CREATE (Mysql:tool {title:'Mysql',name:'Mysql',purpose:'Database relational'})
CREATE (PostgreSQL:tool {title:'PostgreSQL',name:'PostgreSQL',purpose:'Database relational'})
CREATE (MariaDb:tool {title:'MariaDb',name:'MariaDb',purpose:'Database relational'})
CREATE (Sqlserver:tool {title:'Sqlserver',name:'Sqlserver',purpose:'Database relational'})
CREATE (OracleDB:tool {title:'OracleDB',name:'OracleDB',purpose:'Database relational'})
CREATE (DB2:tool {title:'DB2',name:'DB2',purpose:'Database relational'})
CREATE (Access:tool {title:'Access',name:'Access',purpose:'Database relational'})
CREATE (SAPsybase:tool {title:'SAP sybase ASE',name:'SAP sybase ASE',purpose:'Database relational'})
CREATE (Teradata:tool {title:'Teradata',name:'Teradata',purpose:'Database relational'})
CREATE (Adabas:tool {title:'Adabas',name:'Adabas',purpose:'Database relational'})
CREATE (FileMarker:tool {title:'FileMarker',name:'FileMarker',purpose:'Database relational'})
CREATE (Informix:tool {title:'Informix',name:'Informix',purpose:'Database relational'})
CREATE (SQLite:tool {title:'SQLite',name:'SQLite',purpose:'Database relational'})

//DB Norelational
CREATE (Firebase:tool {title:'Firebase',name:'Firebase',purpose:'Database key value'})
CREATE (Couchbase:tool {title:'Couchbase',name:'Couchbase',purpose:'Database key value'})
CREATE (MongoDB:tool {title:'MongoDB',name:'MongoDB',purpose:'Database key value'})
CREATE (Redis:tool {title:'Redis',name:'Redis',purpose:'Database key value'})
CREATE (GraphQL:tool {title:'GraphQL',name:'GraphQL',purpose:'Database graph'})
CREATE (Neo4J:tool {title:'Neo4J',name:'Neo4J',purpose:'Database graph'})
CREATE (OrientDb:tool {title:'OrientDb',name:'OrientDb',purpose:'Database graph'})

//Relation between tool and a topic 
//IS_A
CREATE
  (Mysql)-[:IS_A]->(SQL),
  (PostgreSQL)-[:IS_A]->(SQL),
  (MariaDb)-[:IS_A]->(SQL),
  (Sqlserver)-[:IS_A]->(SQL),
  (OracleDB)-[:IS_A]->(SQL),
  (DB2)-[:IS_A]->(SQL),
  (Access)-[:IS_A]->(SQL),
  (SAPsybase)-[:IS_A]->(SQL),
  (Teradata)-[:IS_A]->(SQL),
  (Adabas)-[:IS_A]->(SQL),
  (FileMarker)-[:IS_A]->(SQL),
  (Informix)-[:IS_A]->(SQL),
  (SQLite)-[:IS_A]->(SQL),
  (Firebase)-[:IS_A]->(nosql),
  (Couchbase)-[:IS_A]->(nosql),
  (MongoDB)-[:IS_A]->(nosql),
  (Redis)-[:IS_A]->(nosql),
  (GraphQL)-[:IS_A]->(nosql),
  (Neo4J)-[:IS_A]->(nosql),
  (OrientDb)-[:IS_A]->(nosql)

//TOOL
//Repository
CREATE (Git:tool {title:'Git',name:'Git',purpose:'Repository'})
CREATE (TFS:tool {title:'TFS',name:'TFS',purpose:'Repository'})
CREATE (Gradle:tool {title:'Gradle',name:'Gradle',purpose:'Repository'})

//containers
CREATE (Docker:tool {title:'Docker',name:'Docker',purpose:'Container'})
CREATE (Kubernetes:tool {title:'Kubernetes',name:'Kubernetes',purpose:'Container orchestration'})
CREATE (GoogleAppEngine:tool {title:'Google App Engine',name:'Google App Engine',purpose:'Container orchestration'})
CREATE (DockerCompose:tool {title:'Docker compose',name:'Docker compose',purpose:'Container orchestration'})
CREATE (DockerSwarm:tool {title:'Docker swarm',name:'Docker swarm',purpose:'Container orchestration'})
CREATE (AZK:tool {title:'AZK',name:'AZK',purpose:'Container orchestration'})
CREATE (Aks:tool {title:'Aks',name:'Aks',purpose:'Container orchestration'})
CREATE (PKS:tool {title:'PKS',name:'PKS',purpose:'Container orchestration'})
CREATE (CircleCI:tool {title:'CircleCI',name:'CircleCI',purpose:'automation tasks'})

//automation
CREATE (Bamboo:tool {title:'Bamboo',name:'Bamboo',purpose:'automation tasks'})
CREATE (Jenkins:tool {title:'Jenkins',name:'Jenkins',purpose:'automation tasks'})
CREATE (Teamcity:tool {title:'Teamcity',name:'Teamcity',purpose:'automation tasks'})

//configuration
CREATE (Vagrant:tool {title:'Vagrant',name:'Vagrant',purpose:'building maintaining enviroments'})
CREATE (Puppet:tool {title:'Puppet',name:'Puppet',purpose:'configuration manager'})
CREATE (Ansible:tool {title:'Ansible',name:'Ansible',purpose:'configuration management, and application-deployment tool'})
CREATE (Optopus:tool {title:'Optopus',name:'Optopus',purpose:'application-deployment tool'})
CREATE (Nagios:tool {title:'Nagios',name:'Nagios',purpose:'monitor systems'})
CREATE (Raygun:tool {title:'Raygun',name:'Raygun',purpose:'Application Performance Monitoring'})
CREATE (Pagerduty:tool {title:'Pagerduty',name:'Pagerduty',purpose:'incident management platform'})
CREATE (Prometheus:tool {title:'Prometheus',name:'Prometheus',purpose:'monitor systems'})
CREATE (Ganglia:tool {title:'Ganglia',name:'Ganglia',purpose:'monitor systems'})
CREATE (Splunk:tool {title:'Splunk',name:'Splunk',purpose:'monitor systems'})
CREATE (NewRelic:tool {title:'NewRelic',name:'NewRelic',purpose:'Application Performance Monitoring'})

CREATE (Cache:archi {title:'Cache'})

CREATE
  (Redis)-[:IS_A]->(Cache)

  CREATE
  (Bamboo)-[:RELATED_AS]->(Devops),
  (Jenkins)-[:RELATED_AS]->(Devops),
  (Teamcity)-[:RELATED_AS]->(Devops),
  (Vagrant)-[:RELATED_AS]->(Devops),
  (Puppet)-[:RELATED_AS]->(Devops),
  (Ansible)-[:RELATED_AS]->(Devops),
  (Optopus)-[:RELATED_AS]->(Devops),
  (Nagios)-[:RELATED_AS]->(Devops),
  (Raygun)-[:RELATED_AS]->(Devops),
  (Pagerduty)-[:RELATED_AS]->(Devops),
  (Prometheus)-[:RELATED_AS]->(Devops),
  (Ganglia)-[:RELATED_AS]->(Devops),
  (Splunk)-[:RELATED_AS]->(Devops),
  (NewRelic)-[:RELATED_AS]->(Devops)


CREATE (Microservices:concept {title:'Microservices'})
CREATE (ORM:concept {title:'ORM',name:'Object-Relational mapping'})
CREATE (DTO:concept {title:'DTO',name:'Data Transfer Object'})
CREATE (DAO:concept {title:'DAO',name:'Data access object'})
CREATE (Web:concept {title:'Web'})
CREATE (Desktop:concept {title:'Desktop'})
CREATE (PWA:concept {title:'PWA',name:'Progresive Web Apss'})
CREATE (Multicloud:concept {title:'Multicloud'})
CREATE (Containers:concept {title:'Containers'})
CREATE (Repository:concept {title:'Repository'})
CREATE (Distributed:concept {title:'Distributed'})
CREATE (Integration:concept {title:'Integration'})
CREATE (BPM:concept {title:'BPM',name:'Business process model'})
CREATE (Masterdata:concept {title:'Masterdata'})
CREATE (DataAnalysis:concept {title:'Data-Analysis'})
CREATE (MachineLearning:concept {title:'Machine-learning'})
CREATE (ETL:concept {title:'ETL',name:'Extrat. Transform, load'})
CREATE (Testing:concept {title:'Testing'})
CREATE (API:concept {title:'API'})
CREATE (IOT:concept {title:'IOT'})
CREATE (Procedural:concept {title:'Procedural'})
CREATE (functional:concept {title:'functional'})
CREATE (OOP:concept {title:'OOP',name:'Object Oriented Programming'})
CREATE (Relational:concept {title:'Relational'})
CREATE (Documental:concept {title:'Documental'})
CREATE (Keyvalue:concept {title:'Keyvalue'})
CREATE (Graphs:concept {title:'Graphs'})
CREATE (SPA:concept {title:'SPA',name:'Single page application'})
CREATE (Events:concept {title:'Events'})
CREATE (AutomaticTesting:concept {title:'Automatic-testing'})
CREATE (NativeMobile:concept {title:'Native Mobile'})
CREATE (HybridMobile:concept {title:'Hybrid Mobile'})
CREATE (SOAP:concept {title:'SOAP',name:'Simple Object Access Protoco'})
CREATE (REST:concept {title:'REST',name:'Representational State Transfer'})

CREATE
  (Spring)-[:RELATED_AS]->(Web),
  (Springboot)-[:RELATED_AS]->(Microservices),
  (Springboot)-[:RELATED_AS]->(API),
  (JEE)-[:RELATED_AS]->(Web),
  (Laravel)-[:RELATED_AS]->(Web),
  (Lumen)-[:RELATED_AS]->(Microservices),
  (Lumen)-[:RELATED_AS]->(API),
  (Django)-[:RELATED_AS]->(Microservices),
  (Django)-[:RELATED_AS]->(Web),
  (Rails)-[:RELATED_AS]->(Web),
  (Rails)-[:RELATED_AS]->(Microservices),
  (WPF)-[:RELATED_AS]->(Desktop),
  (UWP)-[:RELATED_AS]->(IOT),
  (netcore)-[:RELATED_AS]->(Web),  
  (netcore)-[:RELATED_AS]->(Microservices),
  (netcore)-[:RELATED_AS]->(API),
  (net)-[:RELATED_AS]->(Web),
  (net)-[:RELATED_AS]->(Desktop),
  (Angular)-[:RELATED_AS]->(Web),
  (Angularjs)-[:RELATED_AS]->(Web),
  (Vue)-[:RELATED_AS]->(Web),
  (React)-[:CODE_WITH]->(Web),  
  (Express)-[:RELATED_AS]->(Web),
  (Ionic)-[:RELATED_AS]->(Mobile),
  (ReactNative)-[:RELATED_AS]->(Mobile),
  (Cordova)-[:RELATED_AS]->(Mobile),
  (Phonegap)-[:RELATED_AS]->(Mobile),
  (Xamarin)-[:RELATED_AS]->(Mobile),
  (Swing)-[:RELATED_AS]->(Desktop),
  (Docker)-[:RELATED]->(Microservices),
  (Kubernetes)-[:RELATED]->(Microservices),
  (Docker)-[:RELATED]->(API),
  (Kubernetes)-[:RELATED]->(API)

CREATE
  (Java)-[:SUPPPORT]->(Procedural),
  (Java)-[:SUPPPORT]->(functional),
  (Java)-[:SUPPPORT]->(OOP),
  (csharp)-[:SUPPPORT]->(Procedural),
  (csharp)-[:SUPPPORT]->(functional),
  (csharp)-[:SUPPPORT]->(OOP),
  (php)-[:SUPPPORT]->(Procedural),
  (php)-[:SUPPPORT]->(functional),
  (php)-[:SUPPPORT]->(OOP),
  (Js)-[:SUPPPORT]->(Procedural),
  (Js)-[:SUPPPORT]->(functional),
  (typescript)-[:SUPPPORT]->(OOP),
  (Phyton)-[:SUPPPORT]->(Procedural),
  (Phyton)-[:SUPPPORT]->(OOP)

CREATE
  (Mysql)-[:IS_A]->(Relational),
  (Sqlserver)-[:IS_A]->(Relational),
  (OracleDB)-[:IS_A]->(Relational),
  (MongoDB)-[:IS_A]->(Keyvalue),
  (Redis)-[:IS_A]->(Keyvalue),
  (GraphQL)-[:IS_A]->(Graphs),
  (Neo4J)-[:IS_A]->(Graphs)
CREATE
  (Docker)-[:IS_A]->(Containers),
  (Kubernetes)-[:IS_A]->(Containers)

CREATE
  (Vue)-[:IS_A]->(SPA),
  (Angular)-[:IS_A]->(SPA),
  (Xamarin)-[:IS_A]->(NativeMobile),
  (Ionic)-[:IS_A]->(PWA),
  (Cordova)-[:IS_A]->(HybridMobile),
  (Phonegap)-[:IS_A]->(HybridMobile)
