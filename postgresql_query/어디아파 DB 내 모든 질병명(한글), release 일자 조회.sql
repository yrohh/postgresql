-- 질병 조회용 쿼리
SELECT d.disease_id, # 질환 번호.                                                     
       nd.disease_name, # 질환명.                                            
       nd.disease_name2,                                                   
       MAX(rel.release_dt) AS release_dt,                                  
       '[배포]' AS rel                                                     
FROM tb_disease d                                                          
LEFT JOIN tb_name_disease nd ON nd.disease_id = d.disease_id               
                            AND nd.language_type = 'ko'                    
LEFT JOIN tb_admin_win_release_disease rel ON rel.disease_id = d.disease_id
GROUP BY d.disease_id,                                                     
         nd.disease_name,                                                  
         nd.disease_name2;               
        

-- 특정 질병 조회용 쿼리
select *
from (SELECT d.disease_id, # 질환 번호.                                                     
       nd.disease_name, # 질환명.                                            
       nd.disease_name2,                                                   
       MAX(rel.release_dt) AS release_dt,                                  
       '[배포]' AS rel                                                     
FROM tb_disease d                                                          
LEFT JOIN tb_name_disease nd ON nd.disease_id = d.disease_id               
                            AND nd.language_type = 'ko'                    
LEFT JOIN tb_admin_win_release_disease rel ON rel.disease_id = d.disease_id
GROUP BY d.disease_id,                                                     
         nd.disease_name,                                                  
         nd.disease_name2) as tt
where tt.disease_id = 30499 or tt.disease_id=30490;