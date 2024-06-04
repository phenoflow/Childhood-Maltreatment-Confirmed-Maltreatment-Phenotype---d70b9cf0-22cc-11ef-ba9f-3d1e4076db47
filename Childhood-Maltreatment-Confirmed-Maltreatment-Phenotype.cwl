cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  childhood-maltreatment-confirmed-maltreatment-phenotype-abandon---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-abandon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-counselling---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-abandon---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-protect---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-protect---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-counselling---primary/output
  vpersonal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: vpersonal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-protect---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-xmaltreatm---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-xmaltreatm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: vpersonal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-procedure---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-xmaltreatm---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-removed---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-removed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-procedure---primary/output
  under-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: under-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-removed---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-accidabandon---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-accidabandon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: under-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  physical-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: physical-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-accidabandon---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-abandoned---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-abandoned---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: physical-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-investigation---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-investigation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-abandoned---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-description---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-description---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-investigation---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-conference---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-conference---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-description---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-safeguarding---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-safeguarding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-conference---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-syndrno---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-syndrno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-safeguarding---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-category---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-category---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-syndrno---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-category---primary/output
  genital-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: genital-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-supervision---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-supervision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: genital-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-victim---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-victim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-supervision---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-vother---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-vother---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-victim---primary/output
  nutritional-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: nutritional-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-vother---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-worker---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-worker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: nutritional-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  emotional-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: emotional-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-worker---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-prostitute---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-prostitute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: emotional-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-court---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-court---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-prostitute---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-exploitation---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-exploitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-court---primary/output
  domestic-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: domestic-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-exploitation---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-abuse---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-abuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: domestic-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-organisation---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-organisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-abuse---primary/output
  criminal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: criminal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-organisation---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-starvation---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-starvation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: criminal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-register---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-register---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-starvation---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-deprivation---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-deprivation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-register---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-history---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-deprivation---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-incest---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-incest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-history---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-exposure---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-exposure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-incest---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-violence---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-violence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-exposure---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-torture---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-torture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-violence---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-alleg---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-alleg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-torture---primary/output
  longer-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: longer-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-alleg---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-examination---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: longer-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  accident-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: accident-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-examination---primary/output
  sexual-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: sexual-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: accident-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-subject---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-subject---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: sexual-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-scapegoating---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-scapegoating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-subject---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-unwanted---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-unwanted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-scapegoating---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-newborn---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-newborn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-unwanted---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-clitoridectomy---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-clitoridectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-newborn---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-omission---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-omission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-clitoridectomy---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-deserted---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-deserted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-omission---primary/output
  patient-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: patient-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-deserted---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-learning---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-learning---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: patient-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-order---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-order---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-learning---primary/output
  medical-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: medical-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-order---primary/output
  psychological-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: psychological-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: medical-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-munchausens---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-munchausens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: psychological-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-circumcision---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-circumcision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-munchausens---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-meeting---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-meeting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-circumcision---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-forced---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-forced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-meeting---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-spouse---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-spouse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-forced---primary/output
  personal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: personal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-spouse---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-acquaintance---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-acquaintance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: personal-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  parental-childhood-maltreatment-confirmed-maltreatment-phenotype---primary:
    run: parental-childhood-maltreatment-confirmed-maltreatment-phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-acquaintance---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-classified---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-classified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: parental-childhood-maltreatment-confirmed-maltreatment-phenotype---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-authority---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-authority---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-classified---primary/output
  childhood-maltreatment-confirmed-maltreatment-phenotype-vtarget---primary:
    run: childhood-maltreatment-confirmed-maltreatment-phenotype-vtarget---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-authority---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: childhood-maltreatment-confirmed-maltreatment-phenotype-vtarget---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
