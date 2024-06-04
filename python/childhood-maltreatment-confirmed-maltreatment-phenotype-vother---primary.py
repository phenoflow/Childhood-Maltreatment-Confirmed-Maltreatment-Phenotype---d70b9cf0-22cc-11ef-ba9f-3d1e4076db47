# John, A., McGregor, J., Marchant, A., Delpozobanos, M., Farr, I., Nurmatov, U., Kemp, A., Naughton, 2024.

import sys, csv, re

codes = [{"code":"U3N2.","system":"readv2"},{"code":"TL7..","system":"readv2"},{"code":"U3N1.","system":"readv2"},{"code":"ZV4H5","system":"readv2"},{"code":"ZV4Hy","system":"readv2"},{"code":"ZV4H4","system":"readv2"},{"code":"SyuH5","system":"readv2"},{"code":"U3N0.","system":"readv2"},{"code":"U3N3.","system":"readv2"},{"code":"TL7y.","system":"readv2"},{"code":"U3N..","system":"readv2"},{"code":"U3Nz.","system":"readv2"},{"code":"TL70.","system":"readv2"},{"code":"TL7z.","system":"readv2"},{"code":"ZVu4B","system":"readv2"},{"code":"Z626","system":"readv2"},{"code":"Y068","system":"readv2"},{"code":"T748","system":"readv2"},{"code":"Y07","system":"readv2"},{"code":"Z625","system":"readv2"},{"code":"Y078","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('childhood-maltreatment-confirmed-maltreatment-phenotype-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["childhood-maltreatment-confirmed-maltreatment-phenotype-vother---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["childhood-maltreatment-confirmed-maltreatment-phenotype-vother---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["childhood-maltreatment-confirmed-maltreatment-phenotype-vother---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
