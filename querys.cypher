//Delete
MATCH (n)
 DETACH DELETE n

//query as a tree 5 levels
MATCH (f:Focus)
OPTIONAL MATCH (f)-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS|:SUPPPORT|JOIN_WITH]-(p)
OPTIONAL MATCH (p)-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS|:SUPPPORT|JOIN_WITH]-(l)
OPTIONAL MATCH (l)-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS|:SUPPPORT|JOIN_WITH]-(r)
OPTIONAL MATCH (r)-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS|:SUPPPORT|JOIN_WITH]-(t)
RETURN f,p,l,r,t

//databases
MATCH (f:Focus {title:"Databases"})
OPTIONAL MATCH (f)-[:IS_A]-(p)
OPTIONAL MATCH (p)-[:IS_A]-(l)
OPTIONAL MATCH (l)-[:IS_A]-(r)
RETURN f,p,l,r

//devops
MATCH (f:Focus {title:"Devops"})
OPTIONAL MATCH (f)-[:IS_A|RELATED_AS]-(p)
RETURN f,p

//Backend
MATCH (f:Focus)-[:IS_A]-(p:topic { title:"Backend" })
-[:RELATED_AS]-(l:language)
OPTIONAL MATCH (l)-[:CODE_WITH]-(n)
OPTIONAL MATCH (n)-[:IS_A|:IS_A_TECH]-(t)
RETURN f,p,l,n,t

//Frontend
MATCH (f:Focus)-[:IS_A]-(p:topic { title:"Frontend" })
-[:RELATED_AS]-(l:language)
OPTIONAL MATCH (l)-[:CODE_WITH]-(n)
OPTIONAL MATCH (n)-[:IS_A|:IS_A_TECH]-(t)
RETURN f,p,l,n,t

//frameworks
MATCH (l:language)-[:CODE_WITH]-(n)
OPTIONAL MATCH (n)-[:IS_A|:IS_A_TECH]-(t)
RETURN l,n,t

//frameworks and tech
MATCH (l:language)
OPTIONAL MATCH (l)-[:JOIN_WITH|SAME_AS]-(n)
OPTIONAL MATCH (n)-[:RELATED_AS]-(t)
RETURN l,n,t

//focused on a language
MATCH (l:language { title:"csharp" })-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS|:SUPPPORT|JOIN_WITH]-(n)
OPTIONAL MATCH (n)-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS]-(t)
WHERE NOT t:language
RETURN l,n,t

MATCH (l:language { title:"Java" })-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS|:SUPPPORT|JOIN_WITH]-(n)
OPTIONAL MATCH (n)-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS]-(t)
WHERE NOT t:language
RETURN l,n,t

MATCH (l:language { title:"Js" })-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS|:SUPPPORT|JOIN_WITH]-(n)
OPTIONAL MATCH (n)-[:CODE_WITH|:IS_A|:IS_A_TECH|:RELATED_AS]-(t)
WHERE NOT t:language
RETURN l,n,t

//all network
START n=node(*) RETURN n;

