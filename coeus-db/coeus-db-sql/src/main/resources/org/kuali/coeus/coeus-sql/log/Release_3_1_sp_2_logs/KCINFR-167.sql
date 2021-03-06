UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = 1400 WHERE ATTR_DATA_ID = 10000;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = 1401 WHERE ATTR_DATA_ID = 10001;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = 1402 WHERE ATTR_DATA_ID = 20006;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = 1403 WHERE ATTR_DATA_ID = 20007;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = 1500 WHERE ROLE_MBR_ID = 10000;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = 1500 WHERE ROLE_MBR_ID = 10000;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = 1501 WHERE ROLE_MBR_ID = 20001;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = 1501 WHERE ROLE_MBR_ID = 20001;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = 1502 WHERE ROLE_MBR_ID = 20006;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = 1502 WHERE ROLE_MBR_ID = 20006;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = 1503 WHERE ROLE_MBR_ID = 20007;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = 1503 WHERE ROLE_MBR_ID = 20007;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = 1504 WHERE ROLE_MBR_ID = 20008;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = 1504 WHERE ROLE_MBR_ID = 20008;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = 1505 WHERE ROLE_MBR_ID = 20009;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = 1505 WHERE ROLE_MBR_ID = 20009;
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = 1500 WHERE ATTR_DATA_ID = 20002;
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = 1501 WHERE ATTR_DATA_ID = 20003;
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = 1502 WHERE ATTR_DATA_ID = 20004;
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = 1503 WHERE ATTR_DATA_ID = 20005;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = 1700 WHERE ATTR_DATA_ID = 20000;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = 1701 WHERE ATTR_DATA_ID = 20001;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = 1702 WHERE ATTR_DATA_ID = 20012;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = 1703 WHERE ATTR_DATA_ID = 20013;
COMMIT;

ALTER TABLE KRIM_PERM_ATTR_DATA_T DISABLE CONSTRAINT KRIM_PERM_ATTR_DATA_TR3;

UPDATE KRIM_PERM_ATTR_DATA_T SET PERM_ID = 1240 WHERE PERM_ID = 10000;
UPDATE KRIM_PERM_ATTR_DATA_T SET PERM_ID = 1241 WHERE PERM_ID = 10001;
UPDATE KRIM_PERM_ATTR_DATA_T SET PERM_ID = 1242 WHERE PERM_ID = 10002;
UPDATE KRIM_PERM_ATTR_DATA_T SET PERM_ID = 1243 WHERE PERM_ID = 10003;
UPDATE KRIM_PERM_ATTR_DATA_T SET PERM_ID = 1244 WHERE PERM_ID = 10004;
UPDATE KRIM_PERM_ATTR_DATA_T SET PERM_ID = 1245 WHERE PERM_ID = 10007;
UPDATE KRIM_PERM_ATTR_DATA_T SET PERM_ID = 1246 WHERE PERM_ID = 10008;

ALTER TABLE KRIM_ROLE_PERM_T DISABLE CONSTRAINT KRIM_ROLE_PERM_TR1;
UPDATE KRIM_ROLE_PERM_T SET PERM_ID = 1240 WHERE PERM_ID = 10000;
UPDATE KRIM_ROLE_PERM_T SET PERM_ID = 1241 WHERE PERM_ID = 10001;
UPDATE KRIM_ROLE_PERM_T SET PERM_ID = 1242 WHERE PERM_ID = 10002;
UPDATE KRIM_ROLE_PERM_T SET PERM_ID = 1243 WHERE PERM_ID = 10003;
UPDATE KRIM_ROLE_PERM_T SET PERM_ID = 1244 WHERE PERM_ID = 10004;
UPDATE KRIM_ROLE_PERM_T SET PERM_ID = 1245 WHERE PERM_ID = 10007;
UPDATE KRIM_ROLE_PERM_T SET PERM_ID = 1246 WHERE PERM_ID = 10008;

UPDATE KRIM_PERM_T SET PERM_ID = 1240 WHERE PERM_ID = 10000;
UPDATE KRIM_PERM_T SET PERM_ID = 1241 WHERE PERM_ID = 10001;
UPDATE KRIM_PERM_T SET PERM_ID = 1242 WHERE PERM_ID = 10002;
UPDATE KRIM_PERM_T SET PERM_ID = 1243 WHERE PERM_ID = 10003;
UPDATE KRIM_PERM_T SET PERM_ID = 1244 WHERE PERM_ID = 10004;
UPDATE KRIM_PERM_T SET PERM_ID = 1245 WHERE PERM_ID = 10007;
UPDATE KRIM_PERM_T SET PERM_ID = 1246 WHERE PERM_ID = 10008;

ALTER TABLE KRIM_ROLE_MBR_T DISABLE CONSTRAINT KRIM_ROLE_MBR_TR1;
UPDATE KRIM_ROLE_MBR_T SET ROLE_ID = 1240 WHERE ROLE_ID = 10000; 
UPDATE KRIM_ROLE_MBR_T SET ROLE_ID = 1241 WHERE ROLE_ID = 10002;
UPDATE KRIM_ROLE_MBR_T SET ROLE_ID = 1242 WHERE ROLE_ID = 10003;
UPDATE KRIM_ROLE_MBR_T SET ROLE_ID = 1243 WHERE ROLE_ID = 10004;
UPDATE KRIM_ROLE_MBR_T SET ROLE_ID = 1244 WHERE ROLE_ID = 10005;

UPDATE KRIM_ROLE_PERM_T SET ROLE_ID = 1240 WHERE ROLE_ID = 10000; 
UPDATE KRIM_ROLE_PERM_T SET ROLE_ID = 1241 WHERE ROLE_ID = 10002;
UPDATE KRIM_ROLE_PERM_T SET ROLE_ID = 1242 WHERE ROLE_ID = 10003;
UPDATE KRIM_ROLE_PERM_T SET ROLE_ID = 1243 WHERE ROLE_ID = 10004;
UPDATE KRIM_ROLE_PERM_T SET ROLE_ID = 1244 WHERE ROLE_ID = 10005;

UPDATE KRIM_ROLE_RSP_T SET ROLE_ID = 1240 WHERE ROLE_ID = 10000; 
UPDATE KRIM_ROLE_RSP_T SET ROLE_ID = 1241 WHERE ROLE_ID = 10002;
UPDATE KRIM_ROLE_RSP_T SET ROLE_ID = 1242 WHERE ROLE_ID = 10003;
UPDATE KRIM_ROLE_RSP_T SET ROLE_ID = 1243 WHERE ROLE_ID = 10004;
UPDATE KRIM_ROLE_RSP_T SET ROLE_ID = 1244 WHERE ROLE_ID = 10005;

UPDATE KRIM_ROLE_T SET ROLE_ID = 1240 WHERE ROLE_ID = 10000; 
UPDATE KRIM_ROLE_T SET ROLE_ID = 1241 WHERE ROLE_ID = 10002;
UPDATE KRIM_ROLE_T SET ROLE_ID = 1242 WHERE ROLE_ID = 10003;
UPDATE KRIM_ROLE_T SET ROLE_ID = 1243 WHERE ROLE_ID = 10004;
UPDATE KRIM_ROLE_T SET ROLE_ID = 1244 WHERE ROLE_ID = 10005;




UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 900  WHERE ROLE_PERM_ID = 10000;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 901  WHERE ROLE_PERM_ID = 10001;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 902  WHERE ROLE_PERM_ID = 10002;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 903  WHERE ROLE_PERM_ID = 10003;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 904  WHERE ROLE_PERM_ID = 10004;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 905  WHERE ROLE_PERM_ID = 10005;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 906  WHERE ROLE_PERM_ID = 10006;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 907  WHERE ROLE_PERM_ID = 10007;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 908  WHERE ROLE_PERM_ID = 10008;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 909  WHERE ROLE_PERM_ID = 10009;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 910  WHERE ROLE_PERM_ID = 10010;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 911  WHERE ROLE_PERM_ID = 10011;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 912  WHERE ROLE_PERM_ID = 10012;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 913  WHERE ROLE_PERM_ID = 10013;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 914  WHERE ROLE_PERM_ID = 10014;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 915  WHERE ROLE_PERM_ID = 10015;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 916  WHERE ROLE_PERM_ID = 10016;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 917  WHERE ROLE_PERM_ID = 10017;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 918  WHERE ROLE_PERM_ID = 10018;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 919  WHERE ROLE_PERM_ID = 10019;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 920  WHERE ROLE_PERM_ID = 10020;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 921  WHERE ROLE_PERM_ID = 10021;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 922  WHERE ROLE_PERM_ID = 10022;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 923  WHERE ROLE_PERM_ID = 10023;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 924  WHERE ROLE_PERM_ID = 10024;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 925  WHERE ROLE_PERM_ID = 10025;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 926  WHERE ROLE_PERM_ID = 10026;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 927  WHERE ROLE_PERM_ID = 10027;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 928  WHERE ROLE_PERM_ID = 10028;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 929  WHERE ROLE_PERM_ID = 10029;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 930  WHERE ROLE_PERM_ID = 10030;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 931  WHERE ROLE_PERM_ID = 10031;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 932  WHERE ROLE_PERM_ID = 10032;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 933  WHERE ROLE_PERM_ID = 10033;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 934  WHERE ROLE_PERM_ID = 10034;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 935  WHERE ROLE_PERM_ID = 10035;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 936  WHERE ROLE_PERM_ID = 10036;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 937  WHERE ROLE_PERM_ID = 10037;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 938  WHERE ROLE_PERM_ID = 10038;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 939  WHERE ROLE_PERM_ID = 10039;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 940  WHERE ROLE_PERM_ID = 10040;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 941  WHERE ROLE_PERM_ID = 10041;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 942  WHERE ROLE_PERM_ID = 10042;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 943  WHERE ROLE_PERM_ID = 10043;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 944  WHERE ROLE_PERM_ID = 10044;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 945  WHERE ROLE_PERM_ID = 10045;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 946  WHERE ROLE_PERM_ID = 10046;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 947  WHERE ROLE_PERM_ID = 10047;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 948  WHERE ROLE_PERM_ID = 10048;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 949  WHERE ROLE_PERM_ID = 10049;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 950  WHERE ROLE_PERM_ID = 10050;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 951  WHERE ROLE_PERM_ID = 10051;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 952  WHERE ROLE_PERM_ID = 10052;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 953  WHERE ROLE_PERM_ID = 10053;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 954  WHERE ROLE_PERM_ID = 10054;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 955  WHERE ROLE_PERM_ID = 10055;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 956  WHERE ROLE_PERM_ID = 10056;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 957  WHERE ROLE_PERM_ID = 10057;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 958  WHERE ROLE_PERM_ID = 10058;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 959  WHERE ROLE_PERM_ID = 10059;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 960  WHERE ROLE_PERM_ID = 10060;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 961  WHERE ROLE_PERM_ID = 10061;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 962  WHERE ROLE_PERM_ID = 10062;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 963  WHERE ROLE_PERM_ID = 10063;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 964  WHERE ROLE_PERM_ID = 10067;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 965  WHERE ROLE_PERM_ID = 10068;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 966  WHERE ROLE_PERM_ID = 10069;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 967  WHERE ROLE_PERM_ID = 10070;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 968  WHERE ROLE_PERM_ID = 10071;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 969  WHERE ROLE_PERM_ID = 10072;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 970  WHERE ROLE_PERM_ID = 10073;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 971  WHERE ROLE_PERM_ID = 10074;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 972  WHERE ROLE_PERM_ID = 10078;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 973  WHERE ROLE_PERM_ID = 10079;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 974  WHERE ROLE_PERM_ID = 10080;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 975  WHERE ROLE_PERM_ID = 10087;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 976  WHERE ROLE_PERM_ID = 10089;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 977  WHERE ROLE_PERM_ID = 10091;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 978  WHERE ROLE_PERM_ID = 10092;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 979  WHERE ROLE_PERM_ID = 10093;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 980  WHERE ROLE_PERM_ID = 10094;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 981  WHERE ROLE_PERM_ID = 10109;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 982  WHERE ROLE_PERM_ID = 10110;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 983  WHERE ROLE_PERM_ID = 10111;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 984  WHERE ROLE_PERM_ID = 10112;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 985  WHERE ROLE_PERM_ID = 10113;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 986  WHERE ROLE_PERM_ID = 10114;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 987  WHERE ROLE_PERM_ID = 10115;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 988  WHERE ROLE_PERM_ID = 10116;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 989  WHERE ROLE_PERM_ID = 10117;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 990  WHERE ROLE_PERM_ID = 10118;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 991  WHERE ROLE_PERM_ID = 10119;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 992  WHERE ROLE_PERM_ID = 10120;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 993  WHERE ROLE_PERM_ID = 10121;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 994  WHERE ROLE_PERM_ID = 10122;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 995  WHERE ROLE_PERM_ID = 10123;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 996  WHERE ROLE_PERM_ID = 10124;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 997  WHERE ROLE_PERM_ID = 10131;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 998  WHERE ROLE_PERM_ID = 10132;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 999  WHERE ROLE_PERM_ID = 10133;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1000 WHERE ROLE_PERM_ID = 10134;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1001 WHERE ROLE_PERM_ID = 10135;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1002 WHERE ROLE_PERM_ID = 10136;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1003 WHERE ROLE_PERM_ID = 10137;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1004 WHERE ROLE_PERM_ID = 10138;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1005 WHERE ROLE_PERM_ID = 10139;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1006 WHERE ROLE_PERM_ID = 10140;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1007 WHERE ROLE_PERM_ID = 10141;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1008 WHERE ROLE_PERM_ID = 10142;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1009 WHERE ROLE_PERM_ID = 10143;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1010 WHERE ROLE_PERM_ID = 10144;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1011 WHERE ROLE_PERM_ID = 10145;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1012 WHERE ROLE_PERM_ID = 10146;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1013 WHERE ROLE_PERM_ID = 10147;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1014 WHERE ROLE_PERM_ID = 10148;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1015 WHERE ROLE_PERM_ID = 10149;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1016 WHERE ROLE_PERM_ID = 10150;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1017 WHERE ROLE_PERM_ID = 10151;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1018 WHERE ROLE_PERM_ID = 10152;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1019 WHERE ROLE_PERM_ID = 10153;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1020 WHERE ROLE_PERM_ID = 10154;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1021 WHERE ROLE_PERM_ID = 10155;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1022 WHERE ROLE_PERM_ID = 10177;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1023 WHERE ROLE_PERM_ID = 10178;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1024 WHERE ROLE_PERM_ID = 10197;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1025 WHERE ROLE_PERM_ID = 10198;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1026 WHERE ROLE_PERM_ID = 10199;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1027 WHERE ROLE_PERM_ID = 10200;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1028 WHERE ROLE_PERM_ID = 10201;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1029 WHERE ROLE_PERM_ID = 10202;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1030 WHERE ROLE_PERM_ID = 10203;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1031 WHERE ROLE_PERM_ID = 10204;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1032 WHERE ROLE_PERM_ID = 10205;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1033 WHERE ROLE_PERM_ID = 10206;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1034 WHERE ROLE_PERM_ID = 10207;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1035 WHERE ROLE_PERM_ID = 10208;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1036 WHERE ROLE_PERM_ID = 10209;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1037 WHERE ROLE_PERM_ID = 10210;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1038 WHERE ROLE_PERM_ID = 10211;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1039 WHERE ROLE_PERM_ID = 10217;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1040 WHERE ROLE_PERM_ID = 10218;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1041 WHERE ROLE_PERM_ID = 10219;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1042 WHERE ROLE_PERM_ID = 10220;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1043 WHERE ROLE_PERM_ID = 10221;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1044 WHERE ROLE_PERM_ID = 10222;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1045 WHERE ROLE_PERM_ID = 10223;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1046 WHERE ROLE_PERM_ID = 10224;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1047 WHERE ROLE_PERM_ID = 10225;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1048 WHERE ROLE_PERM_ID = 10226;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1049 WHERE ROLE_PERM_ID = 10227;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1050 WHERE ROLE_PERM_ID = 10238;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1051 WHERE ROLE_PERM_ID = 10277;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1052 WHERE ROLE_PERM_ID = 10297;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1053 WHERE ROLE_PERM_ID = 10298;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1054 WHERE ROLE_PERM_ID = 10299;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1055 WHERE ROLE_PERM_ID = 10300;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1056 WHERE ROLE_PERM_ID = 10301;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1057 WHERE ROLE_PERM_ID = 10302;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1058 WHERE ROLE_PERM_ID = 10317;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1059 WHERE ROLE_PERM_ID = 10318;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1060 WHERE ROLE_PERM_ID = 10319;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1061 WHERE ROLE_PERM_ID = 10320;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1062 WHERE ROLE_PERM_ID = 10337;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1063 WHERE ROLE_PERM_ID = 10338;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1064 WHERE ROLE_PERM_ID = 10339;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1065 WHERE ROLE_PERM_ID = 10340;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1066 WHERE ROLE_PERM_ID = 10341;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1067 WHERE ROLE_PERM_ID = 10342;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1068 WHERE ROLE_PERM_ID = 10343;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1069 WHERE ROLE_PERM_ID = 10344;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1070 WHERE ROLE_PERM_ID = 10345;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1071 WHERE ROLE_PERM_ID = 10346;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1072 WHERE ROLE_PERM_ID = 10347;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1073 WHERE ROLE_PERM_ID = 10348;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1074 WHERE ROLE_PERM_ID = 10349;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1075 WHERE ROLE_PERM_ID = 10350;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1076 WHERE ROLE_PERM_ID = 10351;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1077 WHERE ROLE_PERM_ID = 10352;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1078 WHERE ROLE_PERM_ID = 10353;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1079 WHERE ROLE_PERM_ID = 10354;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1080 WHERE ROLE_PERM_ID = 10355;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1081 WHERE ROLE_PERM_ID = 10356;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1082 WHERE ROLE_PERM_ID = 10357;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1083 WHERE ROLE_PERM_ID = 10358;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1084 WHERE ROLE_PERM_ID = 10359;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1085 WHERE ROLE_PERM_ID = 10360;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1086 WHERE ROLE_PERM_ID = 10361;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1087 WHERE ROLE_PERM_ID = 10362;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1088 WHERE ROLE_PERM_ID = 10363;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1089 WHERE ROLE_PERM_ID = 10364;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1090 WHERE ROLE_PERM_ID = 10365;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1091 WHERE ROLE_PERM_ID = 10366;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1092 WHERE ROLE_PERM_ID = 10367;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1093 WHERE ROLE_PERM_ID = 10368;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1094 WHERE ROLE_PERM_ID = 10369;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1095 WHERE ROLE_PERM_ID = 10377;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1096 WHERE ROLE_PERM_ID = 10378;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1097 WHERE ROLE_PERM_ID = 10379;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1098 WHERE ROLE_PERM_ID = 10380;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1099 WHERE ROLE_PERM_ID = 10381;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1100 WHERE ROLE_PERM_ID = 10383;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1101 WHERE ROLE_PERM_ID = 10384;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1102 WHERE ROLE_PERM_ID = 10387;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1103 WHERE ROLE_PERM_ID = 10388;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1104 WHERE ROLE_PERM_ID = 10389;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1105 WHERE ROLE_PERM_ID = 10398;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1106 WHERE ROLE_PERM_ID = 10399;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1107 WHERE ROLE_PERM_ID = 10401;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1108 WHERE ROLE_PERM_ID = 10402;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1109 WHERE ROLE_PERM_ID = 10403;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1110 WHERE ROLE_PERM_ID = 10404;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1111 WHERE ROLE_PERM_ID = 10405;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1112 WHERE ROLE_PERM_ID = 10406;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1113 WHERE ROLE_PERM_ID = 10408;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1114 WHERE ROLE_PERM_ID = 10409;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1115 WHERE ROLE_PERM_ID = 10410;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1116 WHERE ROLE_PERM_ID = 10411;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1117 WHERE ROLE_PERM_ID = 10412;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1118 WHERE ROLE_PERM_ID = 10413;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1119 WHERE ROLE_PERM_ID = 10414;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1120 WHERE ROLE_PERM_ID = 10415;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1121 WHERE ROLE_PERM_ID = 10416;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1122 WHERE ROLE_PERM_ID = 10417;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1123 WHERE ROLE_PERM_ID = 10418;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1124 WHERE ROLE_PERM_ID = 10419;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1125 WHERE ROLE_PERM_ID = 10420;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1126 WHERE ROLE_PERM_ID = 10421;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1127 WHERE ROLE_PERM_ID = 10422;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1128 WHERE ROLE_PERM_ID = 10423;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1129 WHERE ROLE_PERM_ID = 10424;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1130 WHERE ROLE_PERM_ID = 10425;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1131 WHERE ROLE_PERM_ID = 10426;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1132 WHERE ROLE_PERM_ID = 10427;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1133 WHERE ROLE_PERM_ID = 10428;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1134 WHERE ROLE_PERM_ID = 10429;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1135 WHERE ROLE_PERM_ID = 10431;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1136 WHERE ROLE_PERM_ID = 10432;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1137 WHERE ROLE_PERM_ID = 10433;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1138 WHERE ROLE_PERM_ID = 10434;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1139 WHERE ROLE_PERM_ID = 10435;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1140 WHERE ROLE_PERM_ID = 10436;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1141 WHERE ROLE_PERM_ID = 10437;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1142 WHERE ROLE_PERM_ID = 10493;
UPDATE KRIM_ROLE_PERM_T SET ROLE_PERM_ID = 1143 WHERE ROLE_PERM_ID = 10494;

UPDATE KRIM_ROLE_RSP_ACTN_T SET ROLE_RSP_ACTN_ID = 1040 WHERE ROLE_RSP_ACTN_ID = 10000;
UPDATE KRIM_ROLE_RSP_T SET ROLE_RSP_ID = 1040 WHERE ROLE_RSP_ID = 10001;
UPDATE KRIM_ROLE_RSP_ACTN_T SET  ROLE_RSP_ID = 1040 WHERE ROLE_RSP_ID = 10001;
COMMIT;

ALTER TABLE KRIM_PERM_ATTR_DATA_T ENABLE CONSTRAINT KRIM_PERM_ATTR_DATA_TR3;
ALTER TABLE KRIM_ROLE_PERM_T ENABLE CONSTRAINT KRIM_ROLE_PERM_TR1;
ALTER TABLE KRIM_ROLE_MBR_T ENABLE CONSTRAINT KRIM_ROLE_MBR_TR1;
