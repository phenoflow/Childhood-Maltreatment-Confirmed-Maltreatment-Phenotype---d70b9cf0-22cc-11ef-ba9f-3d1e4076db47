# John, A., McGregor, J., Marchant, A., Delpozobanos, M., Farr, I., Nurmatov, U., Kemp, A., Naughton, 2024.

import sys, csv, re

codes = [{"code":"TLx4z","system":"readv2"},{"code":"ZV1B4","system":"readv2"},{"code":"SN560","system":"readv2"},{"code":"U3Pz.","system":"readv2"},{"code":"TE40z","system":"readv2"},{"code":"ZV154","system":"readv2"},{"code":"Y069","system":"readv2"},{"code":"Y079","system":"readv2"},{"code":"Z628","system":"readv2"},{"code":"Z917","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('childhood-maltreatment-confirmed-maltreatment-phenotype-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["vpersonal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["vpersonal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["vpersonal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
