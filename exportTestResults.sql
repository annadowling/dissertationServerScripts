SELECT
    pro.id, pro.correlation_id, pro.message_size, pro.message_volume, pro.request_type, pro.send_time, IF(pro.is_multi_threaded = true, TRUE, FALSE), pro.garbage_collector, con.receive_time
FROM
    producer.message pro
        LEFT JOIN
    consumer.message con
    ON con.correlation_id = pro.correlation_id
INTO OUTFILE '/var/lib/mysql-files/data_profiling_test_results.csv'
    FIELDS ENCLOSED BY '"'
    TERMINATED BY ';'
    ESCAPED BY '"'
    LINES TERMINATED BY '\r\n';