CREATE (BusinessApps:Focus {title:'BusinessApps'})
CREATE (Devops:Focus {title:'Devops'})
CREATE (Databases:Focus {title:'Databases'})

CREATE (Frontend:topic {title:'Frontend'})
CREATE (Backend:topic {title:'Backend'})
CREATE (SQL:topic {title:'SQL',name:'Structured Query Language'})
CREATE (nosql:topic {title:'no-sql'})
CREATE (ContinuosIntegration:topic {title:'ContinuosIntegration'})
CREATE (ContinousDelivery:topic {title:'ContinousDelivery'})

CREATE
  (Frontend)-[:IS_A_TECH]->(BusinessApps),
  (Backend)-[:IS_A_TECH]->(BusinessApps),
  (SQL)-[:IS_A_TECH]->(Databases),
  (nosql)-[:IS_A_TECH]->(Databases),
  (ContinuosIntegration)-[:IS_A_TECH]->(Devops),
  (ContinousDelivery)-[:IS_A_TECH]->(Devops)

  
CREATE (Java:language {title:'Java'})
CREATE (csharp:language {title:'csharp',name:'c#'})
CREATE (php:language {title:'php'})
CREATE (ruby:language {title:'ruby'})
CREATE (Go:language {title:'Go',name:'Golang'})
CREATE (Js:language {title:'Js',name:'javascript'})
CREATE (objectivec:language {title:'objectivec'})
CREATE (swift:language {title:'swift'})
CREATE (typescript:language {title:'typescript'})
CREATE (html:language {title:'html'})
CREATE (css:language {title:'css'})
CREATE (Asp:language {title:'Asp'})
CREATE (Jsp:language {title:'Jsp'})
CREATE (Jsf:language {title:'Jsf'})
CREATE (Phyton:language {title:'Phyton'})

CREATE
  (Java)-[:RELATED_AS]->(Backend),
  (csharp)-[:RELATED_AS]->(Backend),
  (Js)-[:RELATED_AS]->(Backend),
  (Js)-[:RELATED_AS]->(Frontend),
  (php)-[:RELATED_AS]->(Backend),
  (php)-[:RELATED_AS]->(Frontend),
  (Go)-[:RELATED_AS]->(Backend),  
  (ruby)-[:RELATED_AS]->(Backend),  
  (Phyton)-[:RELATED_AS]->(Backend),  
  (html)-[:RELATED_AS]->(Frontend),
  (css)-[:RELATED_AS]->(Frontend),
  (Asp)-[:RELATED_AS]->(Frontend),
  (Jsp)-[:RELATED_AS]->(Frontend),
  (Jsf)-[:RELATED_AS]->(Frontend),
  (Java)-[:SAME_AS]->(csharp),
  (Java)-[:SAME_AS]->(Phyton),
  (Java)-[:JOIN_WITH]->(Jsp),
  (Java)-[:JOIN_WITH]->(Jsf),
  (csharp)-[:JOIN_WITH]->(Asp),
  (html)-[:JOIN_WITH]->(css),
  (html)-[:JOIN_WITH]->(Js),
  (css)-[:JOIN_WITH]->(Js),
  (typescript)-[:JOIN_WITH]->(Js)
  
CREATE (Spring:Framework {title:'Spring'})
CREATE (Laravel:Framework {title:'Laravel'})
CREATE (Lumen:Framework {title:'Lumen'})
CREATE (JEE:Framework {title:'JEE',name:'Java Enterprise Edition'})
CREATE (Django:Framework {title:'Django'})
CREATE (Ionic:Framework {title:'Ionic'})
CREATE (Xamarin:Framework {title:'Xamarin'})
CREATE (Springboot:Framework {title:'Springboot'})
CREATE (Rails:Framework {title:'Rails',name:'Ruby on rails'})
CREATE (Express:Framework {title:'Express'})
CREATE (WPF:Framework {title:'WPF',name:'Windows Presentation Foundation'})
CREATE (UWP:Framework {title:'UWP',name:'Universal Windows Platform '})
CREATE (React:Framework {title:'React'})
CREATE (Angular :Framework {title:'Angular '})
CREATE (Angularjs:Framework {title:'Angularjs'})
CREATE (Vue:Framework {title:'Vue'})
CREATE (Reactnative:Framework {title:'Reactnative'})
CREATE (Cordova:Framework {title:'Cordova'})
CREATE (Phonegap:Framework {title:'Phonegap'})
CREATE (Swing:Framework {title:'Swing'})
CREATE (net:Framework {title:'net'})
CREATE (netcore:Framework {title:'netcore'})


CREATE
  (Spring)-[:CODE_WITH]->(Java),
  (Springboot)-[:CODE_WITH]->(Java),
  (JEE)-[:CODE_WITH]->(Java),
  (JEE)-[:SAME_AS]->(Spring),
  (Swing)-[:CODE_WITH]->(Java),
  (Springboot)-[:MICRO]->(Spring),
  (Laravel)-[:CODE_WITH]->(php),
  (Lumen)-[:CODE_WITH]->(php),
  (Laravel)-[:MICRO]->(Lumen),
  (Django)-[:CODE_WITH]->(Phyton),
  (Rails)-[:CODE_WITH]->(ruby),
  (Xamarin)-[:CODE_WITH]->(csharp),
  (WPF)-[:CODE_WITH]->(csharp),
  (UWP)-[:CODE_WITH]->(csharp),
  (netcore)-[:CODE_WITH]->(csharp),
  (net)-[:CODE_WITH]->(csharp),
  (netcore)-[:MICRO]->(net),
  (Angular)-[:CODE_WITH]->(Js),
  (Angularjs)-[:CODE_WITH]->(Js),
  (Vue)-[:CODE_WITH]->(Js),
  (React)-[:CODE_WITH]->(Js),  
  (Express)-[:CODE_WITH]->(Js),
  (Ionic)-[:CODE_WITH]->(Js),
  (Reactnative)-[:CODE_WITH]->(Js),
  (Cordova)-[:CODE_WITH]->(Js),
  (Phonegap)-[:CODE_WITH]->(Js),
  (Angular)-[:MICRO]->(Angularjs),
  (Angular)-[:SAME_AS]->(React),
  (Angular)-[:SAME_AS]->(Vue),
  (React)-[:SAME_AS]->(Vue),
  (Phonegap)-[:RELATED]->(Cordova),
  (Xamarin)-[:SAME_AS]->(Reactnative),
  (Swing)-[:RELATED_AS]->(Frontend)

CREATE (Sitecore:tech {title:'Sitecore'})
CREATE (AEM:tech {title:'AEM'})
CREATE (Drupal:tech {title:'Drupal'})
CREATE (Wordpress:tech {title:'Wordpress'})
CREATE (Joomla:tech {title:'Joomla'})
CREATE (Directus:tech {title:'Directus'})

CREATE
  (Sitecore)-[:CODE_WITH]->(csharp),
  (AEM)-[:CODE_WITH]->(Java),
  (Drupal)-[:CODE_WITH]->(php),
  (Wordpress)-[:CODE_WITH]->(php),
  (Joomla)-[:CODE_WITH]->(php),
  (Directus)-[:CODE_WITH]->(Js)

CREATE (CMS:tool {title:'CMS',name:'Content management system'})

CREATE
  (Sitecore)-[:IS_A]->(CMS),
  (AEM)-[:IS_A]->(CMS),
  (Drupal)-[:IS_A]->(CMS),
  (Wordpress)-[:IS_A]->(CMS),
  (Joomla)-[:IS_A]->(CMS),
  (Directus)-[:IS_A]->(CMS)

CREATE (Mysql:tech {title:'Mysql'})
CREATE (Sqlserver:tech {title:'Sqlserver'})
CREATE (OracleDB:tech {title:'OracleDB'})
CREATE (MongoDB:tech {title:'MongoDB'})
CREATE (Redis:tech {title:'Redis'})
CREATE (GraphQL:tech {title:'GraphQL'})
CREATE (Neo4J:tech {title:'Neo4J'})
CREATE (CosmosDB:tech {title:'CosmosDB'})
CREATE (DynamoDB:tech {title:'DynamoDB'})

CREATE
  (Mysql)-[:IS_A_TECH]->(SQL),
  (Sqlserver)-[:IS_A_TECH]->(SQL),
  (OracleDB)-[:IS_A_TECH]->(SQL),
  (MongoDB)-[:IS_A_TECH]->(nosql),
  (Redis)-[:IS_A_TECH]->(nosql),
  (GraphQL)-[:IS_A_TECH]->(nosql),
  (Neo4J)-[:IS_A_TECH]->(nosql),
  (CosmosDB)-[:IS_A_TECH]->(nosql),
  (DynamoDB)-[:IS_A_TECH]->(nosql),
  (CosmosDB)-[:IS_A_TECH]->(SQL),
  (DynamoDB)-[:IS_A_TECH]->(SQL)

CREATE (Relational:paradigm {title:'Relational'})
CREATE (Keyvalue:paradigm {title:'Keyvalue'})
CREATE (Graphs:paradigm {title:'Graphs'})

CREATE
  (Mysql)-[:IS_A_TECH]->(Relational),
  (Sqlserver)-[:IS_A_TECH]->(Relational),
  (OracleDB)-[:IS_A_TECH]->(Relational),
  (MongoDB)-[:IS_A_TECH]->(Keyvalue),
  (Redis)-[:IS_A_TECH]->(Keyvalue),
  (GraphQL)-[:IS_A_TECH]->(Graphs),
  (Neo4J)-[:IS_A_TECH]->(Graphs),
  (CosmosDB)-[:IS_A_TECH]->(Relational),
  (DynamoDB)-[:IS_A_TECH]->(Relational),
  (CosmosDB)-[:IS_A_TECH]->(Keyvalue),
  (DynamoDB)-[:IS_A_TECH]->(Keyvalue)

CREATE (Cache:archi {title:'Cache'})

CREATE
  (Redis)-[:IS_A_TECH]->(Cache)

CREATE (Docker:tech {title:'Docker'})
CREATE (Kubernetes:tech {title:'Kubernetes'})

CREATE (Containers:paradigm {title:'Containers'})

CREATE
  (Docker)-[:IS_A_TECH]->(Containers),
  (Kubernetes)-[:IS_A_TECH]->(Containers)
  
CREATE (Microservices:archi {title:'Microservices'})
CREATE (Desktop:archi {title:'Desktop'})
CREATE (Mobile:archi {title:'Mobile'})
CREATE (API:archi {title:'API'})
CREATE (Web:archi {title:'Web'})
CREATE (IOT:archi {title:'IOT',name:'Internet of things'})

CREATE
  (Spring)-[:IS_A_TECH]->(Web),
  (Springboot)-[:IS_A_TECH]->(Microservices),
  (Springboot)-[:IS_A_TECH]->(API),
  (JEE)-[:IS_A_TECH]->(Web),
  (Swing)-[:IS_A_TECH]->(Desktop),
  (Laravel)-[:IS_A_TECH]->(Web),
  (Lumen)-[:IS_A_TECH]->(Microservices),
  (Lumen)-[:IS_A_TECH]->(API),
  (Django)-[:IS_A_TECH]->(Microservices),
  (Django)-[:IS_A_TECH]->(Web),
  (Rails)-[:IS_A_TECH]->(Web),
  (Rails)-[:IS_A_TECH]->(Microservices),
  (Xamarin)-[:IS_A_TECH]->(Mobile),
  (WPF)-[:IS_A_TECH]->(Desktop),
  (UWP)-[:IS_A_TECH]->(IOT),
  (netcore)-[:IS_A_TECH]->(Web),  
  (netcore)-[:IS_A_TECH]->(Microservices),
  (netcore)-[:IS_A_TECH]->(API),
  (net)-[:IS_A_TECH]->(Web),
  (net)-[:IS_A_TECH]->(Desktop),
  (Angular)-[:IS_A_TECH]->(Web),
  (Angularjs)-[:IS_A_TECH]->(Web),
  (Vue)-[:IS_A_TECH]->(Web),
  (React)-[:CODE_WITH]->(Web),  
  (Express)-[:IS_A_TECH]->(Web),
  (Ionic)-[:IS_A_TECH]->(Mobile),
  (Reactnative)-[:IS_A_TECH]->(Mobile),
  (Cordova)-[:IS_A_TECH]->(Mobile),
  (Phonegap)-[:IS_A_TECH]->(Mobile),
  (Xamarin)-[:IS_A_TECH]->(Mobile),
  (Swing)-[:IS_A_TECH]->(Desktop),
  (Docker)-[:RELATED]->(Microservices),
  (Kubernetes)-[:RELATED]->(Microservices),
  (Docker)-[:RELATED]->(API),
  (Kubernetes)-[:RELATED]->(API)

CREATE (Procedural:paradigm {title:'Procedural'})
CREATE (functional:paradigm {title:'functional'})
CREATE (OOP:paradigm {title:'OOP',name:'Object Oriented Programming'})

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

CREATE (SPA:paradigm {title:'SPA',name:'Single page application'})
CREATE (NativeMobile:paradigm {title:'Native Mobile'})
CREATE (PWA:paradigm {title:'PWA'})
CREATE (HybridMobile:paradigm {title:'Hybrid Mobile'})

CREATE
  (Vue)-[:IS_A_TECH]->(SPA),
  (Angular)-[:IS_A_TECH]->(SPA),
  (Xamarin)-[:IS_A_TECH]->(NativeMobile),
  (Ionic)-[:IS_A_TECH]->(PWA),
  (Cordova)-[:IS_A_TECH]->(HybridMobile),
  (Phonegap)-[:IS_A_TECH]->(HybridMobile)
