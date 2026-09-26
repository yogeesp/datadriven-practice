SELECT *
FROM infra_nodes
WHERE region IN ('us-east-1', 'eu-west-1') AND node_type = 'compute';
