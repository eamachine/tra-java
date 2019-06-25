MATCH (n)
 DETACH DELETE n

MATCH (f:Focus)-[:IS_A_TECH]-(p:topic)-[:IS_A|:IS_A_TECH]-(t)-[:IS_A|:IS_A_TECH]-(x)
RETURN f,p,t,x

MATCH (f:Focus)-[:IS_A_TECH]-(p:topic { title:"Backend" })-[:RELATED_AS]-(l:language)-[:CODE_WITH]-(n)-[:IS_A|:IS_A_TECH]-(t)
RETURN f,p,l,n,t


MATCH (f:Focus)-[:IS_A_TECH]-(p:topic { title:"Frontend" })-[:RELATED_AS]-(l:language)-[:CODE_WITH]-(n)-[:IS_A|:IS_A_TECH]-(t)
RETURN f,p,l,n,t

MATCH (f:Focus)-[:IS_A_TECH]-(p:topic)-[:RELATED_AS]-(l:language)-[:CODE_WITH]-(n)-[:IS_A|:IS_A_TECH]-(t)
RETURN f,p,l,n,t


MATCH (l:language)-[:CODE_WITH]-(n)-[:IS_A|:IS_A_TECH]-(t)
RETURN l,n,t

MATCH (l:language { title:"csharp" })-[:CODE_WITH]-(n)-[:IS_A|:IS_A_TECH]-(t)
RETURN l,n,t

MATCH (l:language { title:"Java" })-[:CODE_WITH]-(n)-[:IS_A|:IS_A_TECH]-(t)
RETURN l,n,t

MATCH (l:language { title:"Js" })-[:CODE_WITH]-(n)-[:IS_A|:IS_A_TECH]-(t)
RETURN l,n,t

START n=node(*) RETURN n;

