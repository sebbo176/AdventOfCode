import Foundation

let testData = """
XMMXMASAMSAAAXSXMASAMSMXSAMXMMMMXMSSSSXMAMSAMXMSXMMASAMXMMMMAXMXMSMSMXSXMXSMXXSAXXMSXSMXXXSASXSMMSSSMMXMAMSMSSSMXMAXXXXSSXXXXMXSXAXMASMMSASM
SAMXXAMXMAMAMMMAXSAXMAAMSMSXSAXMAMAAASAMXMSASAMMAMXAAASAMAASAMXXSAAAMMSAMASMMAMASMMSAMXSXMSASAAXAXMAMMAMAMAAAAAAAXSMMMMMMMMMXMAMXMAXXMAXSAMX
MAAAMSSMSASASASXMXMXSMSMXAAAXAXSAMMSMXXMSXSMMAMSAMMMMAMASXMMXMMMSMSASASAMASASAMAMAAMAMASXAMAMXMMMXSAMSMSASMMMSMMMXAAXAAAAAAXAMASAMAASMSMMXMX
SMMXXAAAMAXASAMSAXXXAMXMMMMMMAMSASAXMXSSMMXASAMMXMASMMMMMMAMXMAMXXXMMMXAMMSAMMMSMMMMXMASMSMAMAXAXAMXMAAXXMXMAXAAMSSMMSSSSSMSMSASMMSXMAMMXSSX
XXMMSMMMMSMMMXMMMMXAMMAMXMASXSXSAMXSMAMAAXMMMASMASMSAAXSASAMAXSSSMXSASMSMXMMMMAMAAAAXMMXAXMAXXXSMASXSSSXSXXMAMMMMAMXAAMXAXAAXMASXAMAMMMSAAXX
MXMAAXXXAAAXXMXSXMASXSASMMSMAAAMMMXAMXSSSMMAMXMMASASXMMSASMXSSMAAAASXSAMXMAMXMAMXMMAXSAMSMSSXSAXMAMMAAAAXXSMSSSMMMXMSSSMSMSMMSASMMMAMXAMMMMS
MXMXSSXMSSSMSMMMASAMASXMAXAMXMAMAMXXMXMAMMSAXSAMXSAMAMXMAMAAMAMSMMMMMMAMMXAMAMMSMSMXMAXSXAXAAMAMXSMMMMMXMASAAAAXXSAAMAXAAXMXMMAMASMSMMXXXAAM
MASAMXXXAAAAXAASXMXSASAMSSMSMSMMASXMMAMAMMMAMSASAMXMXMAMAMMMSAMXXAAAAXAMMSSMSSXAASAMXXSAMXMMMMASXMAXMAXAXAMMMSMMASXSMMMSMSXAAXXMSMMAAMXSSMSS
MAMASASMMSMMMSMSMSXMAMXXAAXAAXMSAXAXSASASAMMMMAMXXAXSXXSXSMASAMXSSSSMSASAXAAXMXMSMXXXMXXAXMSXMMSASXMSSSMMMSMMXAMXMMMASAMXSXMSMMXXXSSMMAMAMAM
MASXMAXSAAMSXMAMAMAMAMXMMSSMSMMMMXMMSAXXSXSASMMMSMMASAASAXMASAMXAXAAMSAMXSMMSAAXAXMMMMAMMMXSAMSMMMAXAMMXMAMAAMXSAMASAMAXAMMXAXMAMMXAXMASMMAS
MXXAMXMASMMSASAXSXMMASAAMAMXAAMAAAMXMSMMXASASAAAXAMASXMMAMMAMAMAMMMMMMXMASXAMXMSMMXAAXASXAAMAMAAXSXMMSMAMASMMSASASXSSSSMSSSSMMSASXSXMAXMXSAX
SSSSMSAMXMASAMMXXAXMASMXMASMSSSSSMSAAMXMMXMAMXMMMXMASAMXSMMAXSMMSASAXMSSXMMSSSMAXASXXSASMMMSAMMSMMAXMAXASMSXSMMXAMMSAXXAAAAXAASAMASMMXSXAMAS
XAAXASMXAMAMXMMAXAMXXMXSMXXXAMXMAAXMMMAMXMMSMSSSSSMXSAMAMXMXXMAAXASASMAMAMSXMASMMMSAAMMMAAASXSMXXXAXXMSXSASMSASMXMSMMMMMMSMMMMXAMAMAXASMMMXA
MMMMMXSSSSSMXSMXSSXXXAAXXSSMSMAMSMXSASMSAMXAAXAAAXMASAMASMSMAMMMMMMAMMAXAMXAXAMXAMMMMXMSSMMSAAAMMMMMMXMASAXAXAMXXMXAXXSAAMAMXMSAMXSSMAMAXXMA
ASXMMAXXAAXMMAMAXMASMMMSMMAAXXMMAXMSAXASAXSMSSMMMMMXMAMXXAAAAXAXAAMXMXMSMSSSMMMSAMXMSAMMAMAMAMAMXAAAMAMMMMMSMMMSSMSMMMMMMSAMAMMSMAMXAMSMMSAS
XAAAMMSMMMMXMAMXXSASAAAXASMMMAMSASMMSMMMSMAXAXMSXXMAXXMSMSMSMXMSXMSMMXMAMXAMXAXXSXMASXMSAMXSASASXMSXXAXAAAAXAXAXXAAAAAAAXSAMXSAAMASMSAAMAMXA
SSSMMMAAAXXAXSXSAMXSXMMSMMMASAMSSMAAAMAAASXMAXMXMAMMXMAAAAXXAMXMXASAAAMXSMMMSXSAMSSXMXMSAMXSASASAMAMSMMSSMSSXMASMMMSXSMSXSXSXMMMXASAXMXMASMM
AAAMAMSSMSSMSAXMMMMMASXXMMSAMMXXAXXSMSMXXMMXSXMAXXAASMSMSMSMMMAAAXSAMXSMMASXAAMAMAMAMMMXMSMSXMXSXMAXXSAXAAAAAXMAMAAXAXXMASAXAMXSMASAMXMXAMAX
MMMXAXXMAXMXAMMSAAASXXMMXAMMSSXSAMMMMAMXXSMAXASMSSMMSAXAAAAAAMMXMMMMAXAAMAMXMXSAMASXMASAMXAMXSAMXMSSXMSSMMMSSMSAMMSMMMMMMMSMAMAXMAMAMXAMSMMS
XMXSSXSMSMSXXXAXXXXXMMMSMMSMAAXAXXAASXSAASMXSAMAAXAXMMMSMXSSMMMAXXAMXMSMMASXXASASASXSXSMMMSMAMASAAAMAAAMXSXMXXMAMXAMXAAXSAAXAMXSMMXMMXMAAAXA
XAAXMASAMAAMSMSSXSSMAMAAASMMMSSMMSSMSAMMXMAMMAMMMMSMXSAXAMMAMASXSSSSSMAXXAMXSASXMAMMMAMAASAMXSASMMASMMMSAMAAXSMSMSSSSMSAMSSSMSAMXAASASXSSSMM
SMMSMAMAMMMSAAAAAAMSMMMMMMXXSAXAAXMMSASMSMSMSSMSMXXAMXSMXMSAMMAAAAXAAMAXSAXAXXXXMXMAMAMMMSASMMAXXMAXXSXMASMMMXAXMAXXAAMAAAMAMXXSMSMSAXMAMXXX
XSAXMASMMMMSMSMMMMXSMMXSAMXSMMSMMMMXSAMAAAXAAMAXSAMAMSMSXAMXMAMMMMMXMMAXSXMAXXMXMASMSMSMXSAMAMMMASASMXASAMXXAMSMMMSSSXSMMXSXMASMMMAMAMMXSAMX
SMMMXXXMAMXMXXAXXXMXAAAAXAMXAXSXMMSAMAMSMSMMAMMMMMSAMXASMMMSMMXXAXMXAMXXMXAMSMSASMMAAAMAMXMSMMAMMAAAAMXMSSSMMXMAMXAAXMXMMMXXMXMAAMXMMMXAMASA
AMAAXSSSSSXSAMMMMXAXMMSSMMMSMMSAMAMXSXMMMXXSAAAXAXMASMMMASXSAXMMMSSMSMSASMSMSAAASXSSMSMSMMXSXSASAMMMSMMAXMAMXAMAMMMSMSASASMSSSSSMSSSXSXMSAMM
MMMXSAAAAXAMMSSSMXSAAAAAMXAAMASAMMXMMXXXAMASMSASMSXAMAXSXMASXXAASXMAAASAXAMXMXMMMAAAXXMAAAAMMMASMMMAMAMMMSXSXXXASMMAAXASXSAMXAAXSAXMASAMMXMX
XMAMMMMMMMMSAMAAAAASMMSMAMSSSMSMMSSMMASAAMAMMMMAASMMXSMMAMMMAMSMSAMMMMMXMSMAMXMMXASMMASMSMXSXMAMXSMAMMMSAMXMASXMMAMMSMMXXMMMMMMMMXAMXMASASXM
MASXAXSXXMASMMMMMMXMMAXXSXAAAAMXAAMAMASXMMXSASXMMXAMAXASMMSMAMAAXXMASMMSAASAMAMMMMMXSXMXXMMSMMMSASMMMSAMAXAMXMASMMMAXAXMASAMAAAXXMXMXMSXXMAM
SAMMXSAMXMMSXMSSMXSSXXMAMMSSXMXMMMSAMXSAMXXMASXMMSSMMMAMXAAMMSMSMMSASAXMSXSMSMSAAASASAMXMMXXAAAMMSASMMMSASXMSSMMSAMASMSAMMASXSXSMASMMMMSMSXM
MASXMXMASMXXMMAAMAAXMXMASAXAXSAMSASASAMAXMMMXMXXAAAAXMXMMSSMMAAAMAMXMXAMAMSAAASAXXXMMAMAMSMSMMMSAMMMAAMXMAXXMAMAMXSAAAMMMSAMXMASAMXAAAAXMAAX
MAMXAAXXAMXMMMSSMMMSAMSMMMMSMMASMXXMMAMAMSAMXMMMMSSMMSMAXAXAXMXMSMMSMMSAXAMMMXMASXSSSMMAMAAXAMXMAMASMMMAXASMSAMXXAAMMXMAXMAMMMAMAXAMSMSSXSSM
MASXSXSAASXAAAXAXXAXMASXMAXAXMSMMAMSSXMSXSASMSAAXAAAAXMXMMSSMAAXXXAAXAXMMMMXMSMMMAAMASXSSMSMASMMMSASXXSAMXSASXMAMXSSXMMMXMAMAMSSMMXXAAXMAMXX
SXMAXAMMMMMSMSSSMMMSXASXSXSSMMMAMXMAAAMXASXMASXSSSSMMSXSAAAAMMMSAMSSMSSXSSMAMXASMMMMAMXAAAMXXMAAAMXMAASAMMMAMAMAXSAMMSAAMMSSMMAAMXSMMXMMXMAX
XAAAMAMAMAXAMXMMAMXMMXSXMAMAASMSMAMXSMMMAMAMXMAXMMXAXAASMMSSSMMXXXXXAXXAAXSAMXXMASXMMSMSMMMAMSMMMSAMXMSAMXMASXMAXMAMAMMMSAMAMMXSMASXXAAMXMSS
XXMSMMSXSXSXMAXSAMAXMASMSAMXMMAAAMMAMAXMMMXMMMSMMXSMMMMMXMAAAAMMMSMMSMMMMMSMXXSXXMMMAAAXMMMSMAAAXSXSAAXXMXMASASXXSMMXSAAMASAMMAMMMXASXMMASXA
MSXMAAMMSAMMSXXMMSMMSAMXSASXSMSMSXMAXMXASXXXAAAAXXMMASXSAMMSSMMAAAASAMXMXXMASXXMAXAMMMMXXAAAMSXMXSASMSMSMSMXSXMXMAAASMMMSXMXSMAMASMAMAASXMMM
AXAXMMMAMAMASMMXAAAAMASASXMASAMAMMSSSMSAMXMSMSMSMSAAXXASASXAXMXMSSSMMSASMSMAMXAXAXSXMXSMSMSSMMSXXMAMAAAAAAMMSXMXAMMMXXAAXASXXMMXAMMMMXMMAMSX
XMMMSMMMSAMASAMSSMSMSMMASAMXMMMAMMAAAXSAMXXSAMXMASMMSMAMAMMMMXAMXMXAASASASMMSSMMSXXAXAAXXXAXAAAMAMXMXMSMSMMAXAMASXSAXSMSMAMXXSSMSMSASMAMAMAA
MAAASAMXSXMXMAXMAMXAAXXAXMMMMMSMSMMSMMMASASMAMAMAMMAMMAMMMMXAXASMSMMMSAMXMAMAAAAMASAMSSMMMSSMMSAMXXSXMXAAAMSSXMAMMSAMXAAMAMXMXAAAAXAXXAMMMMS
ASMMXAMAXXAXXSXXXMMMMSMSSSXXAAAAAXAMMSSXMXXMAMMMMMMMSSSSXAMXSAAAAAAAAXAMXSXMSSMMSAMXMAAASAAXXAAMXMMMASMSMMXMAMSXSAMMMSMMXAMXXAMMMSMSMSSXSAAM
XXSMXSMMSSMXMAMSMSMSAXAXAMXSMSXSMMXSAAXXMASMXSAAASAMAXAAMSMAMMMMSSMMXSMMXMAXAAMAMMMXMSSMMMMSMMSXSXASXMAXXSAMXMMAMMMAXAASXSSMSXSAXAAAAXAASMMS
SXMXAXAMXMASMXMAAAAMMMSMMMAMMAAMXMAMMMSMSAXMASMSMSASMMMMMXMMSXMXMAASAMAAMXMMMSMAMASAMXAXXXXSAMXAXSMSMMXMXXMXMSMXMASMSSXMAAAAAAXXSMSMSMMMMAXM
SAMMMMAMMMAMXMSMMMXMASXAAMMSMMSMAMMSMXAAMXSXXXAXAXMMXSAXXXSXMASASMMMASAMXASXMAMXSASASMSMMMMSAMMXMMXMXMAXSSSSMAAASXSAMXMXMSMMMSMAMAAXAXXASXMS
SAMASXMMXMASXMAMMXSMMMMSMSAAAMXMSMMAXSMXMASMMMSMSSSMAXMMMXMASASMSAASAMXSSXSAMASMMASAMXAAMSASAMMMSMAXXSXSXAAASMSMSAMMMASAAAMXAAMAMSMSSXSXSAAA
SAMAMAXSAMMSMSAXXAMAXAAXXSMSSMAXMASMMMSAMXSAAXAAXAAMXMXAMAMXMXSXSXMMXSAXXMSMMASAMMMXMXSXMAXXAXXAASMMMMSAMMSMMMXXMMMXSASMSMSMSMSXMMAXMASMXMSM
SXMMMSMSASASXSMSMASXMMMSASAMXMAMSAMXAAAXAASMMSMSMSMMXMSSMXMAMXMMMXXXXMXSSMMAMAMXMAMMSAMXXMASMMMMMASAXXAXMMAXAMXXMAMAMMSXXAXXMXMMMMXMMMMAMXAX
MMMXAMMMXMASAMAXMAMAMSAMXMXMXAMMMSSXMXMXMAXXXXAAXMASAAAAMSSMSXXAXSMMXSAMXASXMMSASMSMMASMSXMAAASXSASXSMMSSXMSSSSSSSSXSASMMMMMMXSAMMMMAXASAXMS
MXSMMSASAMXMAMSMMSSMMMXXMXXMAXAXAXMASAMXSAMSXSSMXSASMMMSMAAXAXSMMSAMXSAMSMMSAMXXMASASAMXAAXXSMMAMASMMAXAXAXAXAAAAAAASAMXAXAAXMASAAASASMMSSXM
XAXAMXXAMXAMAMAAXAAASXSMSAAXMASMXMSAMASXMAXSAMXSAMXXXMAXMXSMMAXMAMAMXXAXXAAMMMXAMAMXMASXMMMAMAMSMAMMSAMXSSMMSMMMMMMMMAAMMMSXMXMASMMSAMAAAMAA
MMSSMXXXXSXSASXSMMSMSAMASMSMMMMAXMASXXMXMMAMXMAMXSXSAMXXSAMAXMSMAMSMSSSMSMMSMMXSMXMXXMXMAASXMAMXMSSMSASXMMAXMAMXXSAMSSMXSAXASMXMAXAMXMSMSXSM
MAAAXMMMMMMMASAXAXXXMAMMMXAAASMSMSAMXAMMSAMAMMMSAMXAMMXXMASXAASMMXMAMXMAXMASAAAXMMMSSMASXMSAMSMMXMAMSAMXMSSMSMSMXMAXMAMXMASAMAASMSXMSMMAXAAS
MSSSMSAAAAASMMXMASXXSAMXXMMSMXAAAMASXSMAXAXXMAMXAASXSMSMSMMMMXMAMAMAMSMMMMMXMMXMASAAAMAMAAMMAMXMASAMMAMMXAXAAAAMASXMSAMSMAMASMXAAXMXAAMAMMMM
MXAAASXSXMMMAMXMAMXAXXSAMXMAXMSMSMMMXAMMSXMXMSSSSMMAAASASMAXMAXAMASXMXMASMSXSAXMXMASMSMSMXMMAXASXSSSXSAMXAMSMSMMAMXASXMASXSAMXMMMMMSSSMSSXMS
SMSMMMXMXSSSSMAMXSSMSASAMXMAXXAMXAXXSXMASMMAXXAAXAMSMMMAMMAMSXSASASMMASMSAAAAAMSSSXMAAAAXSXMMSMMMXAXAMMAMXMXAAXMMSMMMSXMXMMMSXMAAAAXAXAAXAAX
XAAAAXMMAAAAXMXSAAAAMAMXMMMSMMSXMAMMMAMXSASMSMSMSAMXAXMMSAXXAAAXMMSXXAXAMXMMMSMAAAAMSMMMMMXSAAAAAMMMXMASXSSMSMXMMAAAAMXXMXAXMASASXSMAMMMSMMS
MSMSXMAMMMMMMMASMSMXMAMSXMAXASAXSASXSASMXMAAAAAMSMMXXXXAMXXMMSMMMAMXMSSMSMSXXXMMXMXMXXXAXXAMMSMMSAXAMXXMAMXAXXASMMSMASMMAMMSSMMXXAMMXMAMXAAS
AXAXMMXXXXAMAMASAMXXMAXSAMXMXMAXSAAAMAMAXSMXXSSXSAXSMMMSSMMMAAMSXMXAAAAAMASAMXSASMMSMSSSSMASXMMMMMXSSSMMAMSMMXAXAMAMXAAXSAAMAMMXMMMMSAMSMMMS
SMAMAASMMSMSAMAXMSMMSMMSAMSSSMMMMMMSMSMMXXXXMAXASMMXAAAXAAMMXSAMAXSMMSMMMMMAXAMXAMXAAAXAXMASAMXASAXXAAAXXXAMMXSSXMAMMXSMMMMSAMXAMSAMXAXMAMXX
AMXMXMAAAAASMMMXSAXMAMAMAMXAAAASXMXXAXAXSAMSMAMMMXSSSMSSSSMXAMASXMXAAMMMSSSXMXSSSSSMSMMMMXAMAMSASMMMSMMMSSMSSMAAAMXMSMMAXXAMASXMMSXMMAMSSMSA
MSMMASMMMMXMAAXXSAXSAXAMMMMMMMMSAMXMAMMMXAMXMAMXMAXMXAMXAAMMXSAMMMMMMMAAXMXASXXAAAMXAAMXAXXSSMMXMAMAAXAAXAXAXMASMMMAAAMXMMMSMMASAMMSMSMAAAXS
XAASASXSASAXSMSMMSMSSSMXMASXSAXSMMMSAAAMSSMXMASXMSSMMSMMSMMSMMASAAMSMSMMSMSAMXMMMMMSSSMXMAAXXXXMSAMSSSMSSMMMSSXXMXASMXMAXAXAXMAMASAAAAASMMMM
XXXMXXXSASXXAXXAAMMSASAASAMASAXXSAASXXAXAMAMXAMAXAAMAXAAXXMAASAXXXMAAAASAXAASXSAAAXMXMMAMSMMMSMAMXMMAXXAAXXAAXMAMXMMXAMSXMSAXSASMMXMSMXXSAAM
XSAMMSMMMMXAMXMMMXMMAMMMMASXMMMMMMMSMMSMASXSASMSMSSMSSMMMASMMXASXSSMSMMMXSMXMAMASXSMSSMMMAAAAMMMMXMMXMASMMMMSXSAMXSSSMSAAMMMMSASMSAMXXXASMMS
XAAAASXMASXXXAXAMASMSMSXSAMXSXMXAMASMAMMMMXSAMAXAAAMXMMAMAMXMXMAXXAAAMASAMXAMXMAMMXXAMASXXSMSSXMASXMAMXMMMSXMXSASXSAAXXMXMASAMAMASMSMSMMMSMA
XSMMASASXMXXSSSMSMSAMAAXMAMAXAMSXSAMMASAMXAMAMXMMMSSSMSSSMSXAXXXXSMMMSASASMMSAMASXMMASAMXMAAAMAXXAMSSMXMASMAMMSAMXMMMXASXSXMXSXMAMXMAAMAAAXM
MXAXAXXMAMMMAAXAAXMAMMMXXSMMSSMAXMASMASAMMXXAMASXXAAAAAAAAAMMSMMXMASXMXSAMMMMASXSMMAXMAXSAMMASMMMMAXMXAMMMMAMAMMMXXAXMXMAMMSAMMMXSSMSMSMSSSX
AMSMSSSMXSAAMMMSMSSXMASAAXSMAXMASMMXMMSXMASMASASXMMSMMMSMMMXAAAXXSASAMAMMMAAMAMXXMASXAMASMXXXAMXAMMMMSMSSXSASMASXXMAXAAMAMAMASXXMXAAAAMAMXAX
SSXAMAXXASMSXXXAMAAASASMSMAMXMAMXAAXMAXAMAXSAMMSAMAXMAMXXXXMSMSMAMAXMMASASMSSSMMMMMXAASAMXMXMSSSSXSAMXMAXXMAXXAASASXSSXSAMXSMMMSAMMSMMMSMMSA
XAMXMSMMASXMMMXAMMSMMASXMMAMMMSMSMMSMMSAMXMMXSXSMMSSMMXMXMAXMAMMSMSMASMSASMMAXMAAAXXSXMASASXAAMXAASXMAMXMMXSXSSMMXAAAAAAAXAMXAXASXXAAAXXAAAM
MMXMAMAMXXMMAMMMMXXXMXMXMSMSAAAAMAAXAAXAXXMSMMAMXMXAXMASAMMXMXXAAAASAMXMMMAMAMXMMXXXMXXMXAMMMMMMMMMASXMSAMAMMMAXMMMMMMSMMMSMSMSMXMMSXMSMMMMX
AXMAMXXMMSMXXMMSAMXMSASAXMASMSXSSMMSMAMMMSXAXMAMSSMMMSXSAXMAXMMSMSMMMSAMASXMASXSSSMAASXMMSMMSSSXMXSXMAASAMXSASMMXAXAAXMAMMAAAAAXAAMAMSMMASXM
SMSSXSASAXMASMXMASMXSASXSMAMXMXAAXXMASXAAXMMSXSXSAMSMMASXMSXXAMAXAXAASASMSXMXAXAAMXXAMXMAAAMAXMAXAXAMXMSXMXSXSXMSMSMSMSAMXMSMSSSMMMAMAAMASAS
XAAAASAMSSMASMAXSMMAMXMAMMMXASMMMSSMAXSMXSAXMAMXMMMAAMAMAMAASMMMSMSMMSXMAMXSMMMMMMSSSSMMMSXMMSSMMSSXMMXMMSXSAXMAXAAMAASMSXAMAAMAXSSSSSSMASXM
MMMSMMAMAXMAXMAMXAMXMASAMSSMMSAXAXAMAMAMASMSMAMASASXSMASAMMMMMAMXXXXASAMXMAXAXMASAMAAAXSXXXAXAAAAXAAXSASMAAMSMMAMXMSSXMAMMMMMMXAMXAMAAXMMMAM
XMXMXSXMXSXSSMSMMAMXSASAXAASASMMSSXMSSXMAMMAMAMXXAXAAMASMMXAMSXMMMSMMMXSXMASMMSASAMMMMMXAXSMMXSMMSSMMSASAMMMMXMMSAAXXASXMAAAXAMSSMMMXMASMSSM
XAAXAMASMMXXAMXMMMMXMMSXMXSMXMMAXAASXSAMSXSASXSSMSMSMMXSMMSAMAMXAAAAASMMASXSXAMXSXMASAXMMMXMAXXMMXAXXMAMMXXAXXXAXMSMSMMASMSSMMSAAAXSAXXAXAMX
MMSSMSXMASXMMMSXASMSMAMMSMMMAMXSMSMMASMMMAMXSAMXAMAMXSXXAASMMAMSMMSSMXAXAMMMMMSMMASXMXXAASXMXSMASMMMXMXMAXSAMSAMXXAASXSMMXAMMMMXMMMMMSMMMMSS
XXAAXXASMMSAAAXXASAAMMSAMASMMXMXMXAMMMMAMXMASASMMMSMAMAMMMSMMAMXAAMAMSMMAXASAXAXMMMXSMSSMSAAASMMMAXSMXSAXXMAMAAXAMMXMXMAMXMASAASXSXSAAAAXMAX
MMSSMXMMAASMMMSAMMMMMXMXSAMXSAMASMMXSXMASAMXMMMAAAAMMSSMSXXASMSMMMSAMAMMXSASXSMMSAMMAAXMAXMMMMAXMMMXAAMAMXMAMMMMMMMXMXSSMXXASMSMMSAMSSSMSMAS
XAMAXSMMMMSMSAMAMSSXAXSAMASAXASAMASAMAXAXASXAASXMSSSXAAASMMAMAAXSMSAMXSAAMMMMXAAMASAMMSMSMXMSSMMSAAMMMXAAMSSSXSXSASMSAAAMXMASXAMAMAMAMAMMMMS
MSSMMAAAMSXXMAMMMASMMMAAXAMMMMMMSXMASAMSSMMXSXSAAAAXMMMMMASMMSMMMMMAMAMMXMXAMMMMSAMMXMSAMXMAAAXASXXXMSXMSMAMAAXAMAXAMMXMMMMXMASMSSXMASAMXMSX
XMAMMXMMSAMMSSMMMASMAASMMSMSMSAXMMSAMXSAAAAMMMMMMMSMMXSXSMMAAMXMAASAMXMXAMMMSAAXMXMMMAMXMMSMXXMASMSAMXASXMMSMSMSMXMSMXAXAAMAMXXAMXMXASMSAMXM
SAMASAASMMAAAXAAMMSXSXMMXXAAAMMMSMXMXMAXSMMSAAXSAMXAXXXASASMMSASXXSMSXMMASAASMSSMSSSMXAXMAMMSMMAXMASMSMMAXMAMAAMMXXXASMSSXSASMMMMAMMMSASXSAA
MAMASXSMMXMAXSSMSAMAMMAMAMSMMXAAAXMMMSAXXXAMXMXSASXSMAMXSMMMAMMSMAXXMAMSASMXMAAAAAAAXMASMMXAAAMAXXAMXAMSMMSXSMSMASXMAMAAAAMASXAMMSSSMMAMAMXS
XAMMXMXAXMAMMAMAXMMAMMAMAMXMSXMMXMAAAMXSMMMSSMMSAMAAMXSXMAMMAMASXMSMSAMMXMMXXXSMMMSMMMAXXMMSSSMSXMMSXXXAMXSAXMMMAMMAXMMMXMMAMMSMAAMAXMAMAMMX
SMSSMMSAMXAXMAMASXSAXSASMSAMMXSXMASMSSMMAAAAMAAMAMSMMAXAAAMSMSAMAXAAMASXAMSMMMMXAMAMAMXSXMAMAAAAMSXSAXMAXAMXMXMMXMAXMXXMSAMMMAXMMSSMMSMSMXAX
AXAAAXXMMMSMSXMXAAXAMXMSASAMXAMSSMXAAMAXXMSMSMMMXMAXMMSMMXMAAMXMASMSMXMXXSAMXAXXMXAMXSSMMMSSSMXMAMASASMXMASAMAMXMMSMSXAXAMXSMMSXXMAMMAMAAASX
MMSSMMSASAMXSAMXMSMMMAXMAMAXXXXAMXMMMSMMXMMXMXMSMSMSAAMAAXMMMXMAXXAXMAMXXMXSMSXSSSSMXSAAAAMXAXSXSMAMAMAASAMMSAXXXAAAMXSAMXASASXXMXSMSASMSMMA
XAXAAASXMASXMAMSAAAXSSSMSMASMMMSSMXXMAXAAMSASASAAAAMMMSMSSXXSAMXSMXMSSSMSXAMAXAAAAAMMSSMMSSSMMMMXMASMMSMMAXXAAMSMMMSXAXAXMSSXMMMMAMASASAMXXX
MSSMMMXAXAMASAAXSMSMMAAAXMASAAXAAAXAXAAXAXAAMMSMSMSMAXAAMXAXSASXSAAAXXAAXMMMAMMMMMMAMXXMAMXXAAMXSMXXXMXSXMASMSMAAAAMMMSSXMAMMAASMAMAMSMXMASM
MXXXAXSSMASXMMSMXMAMMSMMMMASMMMSSMAMMSMMSMMSMXXMXAXXAXMXMMAMMAMMSXSSSXMMMMXMASMXMXXXMAMSSMSMSMSXMXMASMAMXXXAAXMXMMMSAXXMMMMSMSASMSMSMAMSSXMA
SMMMMMAMMMMAXAXMASAMXXXMAMAXAMAXAMAXAXXAXAAMXXSXMSMMAMSAAXMMMAMMMAMMMAASAMXMXXXAMXMXMXMAMXXAAAMMSAMSMMXSAMSMMMSMMAAXXMAMXMMAAXASAMAASMSAMASM
MAAXMAXAAAMSMSXSASASMMMMSMSMSMXSAXXMMSMSSMMSMSMAAMAMAAXXXMSXSXSAMXMAXSMSXSMSXSSXMAMASAMMSMMSMSMASASMXMXMAMAAAAAAMMSSMMAMAMMMSMMMAMSMSXMASAMX
SSMSSSMSSXXAAMASASAMAAAXMAMAXXMSAMSAMSMMXXXAMAXXMSXMMSSSMAAAASAMXAMSMXASAXAAAMMASASXSAXXAAXXSXMXSMMAASMSMSMMMSSSMMAAXSASASXXAAXSMMMXMXSAMASX
AMAAAAAMAMSMSMAMAMXMMMSSMAMAMAAMAMSAXSASMMSXSMSMMXAXXAAAMXMMMSSXXMAXAMAMXMSMMASXSMSAMAMSMSSSMMSASAMSMXAAMMMMAXMAAMMSMSASASXSASXXMAMXMXMASXMX
MMMMSMMMAMAAXMXMASASASXAMXSASMMXMMSAMXAMAMMAAAAXMAMMMMMMMASXAXMMMMAMAMXMMXXXSAMXSAMXMAMSAMXAASMMSAMMAMSMMAAMSMSSMMXAAMAMAMASMMMXMAXMSAMXMAMX
XAAMXXMSXMMSMSXSXSASXAXMMMSAXAAXSASMSMXMXAMSMSMXSAMAXXXSSXSMXXMMSMASAMXSAMMMMASAMAMXMSMXASXMMMAXSXMSMXAAASXSAAXAXMSMXMXSAMXMAXAMSMSASMSMMSXM
SSMSAMMXSAAMAMAXXMXMMMSMSMMMMMXXMASAMMMMSMMAAAMASASXSMXMAXSMMSMAAXAXAMAXMASASXMXSAMMMMMSAMMSXSAMXXMAMSXSMMXSMMMMAXAAXSAMASXSSMMXAAAXSAMXAAAX
AMAMASMASMSMAMXXXMASAXAAASAAAAMSMMMAMMAAAASXSAMXSAXAAXMASMMAAAMSMSSXXSMSMMSASMMASXSAAMXMASAAMMSMSXSAMSXXASAXMASXMSMSMMASXMASAAMSSSMMXMXMASXM
XMMMAAMAMXAMXXSSMSASMSMSMSSSMXSAAMSAMXSMSMMMMMMMMXMSMMMAMASMMSAMXAMXAAAAMXMMMAMMSAXMSMXXSMMXSAAMAASMXMASAMMSXXMAXXAAASAMMSSXMSMAMAXXAMMMMMMA
XSXMSSMMSMMSSXAAAAXSAMAMXMXMAXSMMMSASAMAMMXAAAAAXAAMXSMXSAMXMAMAMASMSMSMSAXAMAMSMXMXXAMMXASMMXSSMMMSAMXMMMXMXMMXXASXXMMSAXAMXMMXMAMMAMAAAAMS
MMXMAMASAXSAMSMMXMSMMMAMMSMMSMMMXAXMMXMAMASXSSSSSMMXAXAMMXMMXXSXSSXAAXMASMSMSXSAAASMMASASAMXSAMXAAAXXXSMXMAMMSMSMMXSAMXSMMSAMXSSMSMXMASMSMSM
MXXSASMMAXMAMSXMMXMMXXASXMAAXAXXMSXXAXMAMMMAAAXAAMAMSMSMAAMMMXMXMXMXMSMMSXSXAXXMSMXASAMXXAXAMXSSSMMSMMXMAXMXAMXAAMAMXSAMAXAMAAAXAAMSSMXAXXSM
SAMMAMMMXMSMMMAXSASASXAXASMMSMMMMXAMXSSXSXMMMMMSMMASAAXMMXXAAAXXMASXMAMSMAMXMSMXMXSXMMSXSSMXSAMMXMAAXAAXSMSMASXSXMASAMASMMSSMSSMMMSAAXMAMASX
MASMMMXMAMAAAMMMSASAMXXSXMXAXAAAAMAMAAMAXMXMAXMXMMXSMSMSASXSSMXASASASXSMMAMAAAMAMAXMASAAAXAAXASAAMMSMSMMMAASXMAXXSMSXSAMXAXAAAMAXXMMSMMMMSMS
XAMMASASASXMMMSAMMMAMMMMMMMMMMSMXSAMXSMMMAASXSXAMSAMXXXMASAAAXSAMASAMXMMSMSMMSMSSSXSSMSMMSMMSSMMXXAAAXXAMSMMSMXMASAMMSAXMASMMMSSMXMAXAAASAMX
MSMSASXMASAASAMXSASXMXAAASAMMXMMMXAMAXASMMASAAMXMAAAASAMXMMMMMAMXXMMMMAAMXAMXXAMAMAXAAXMXXAXXMXMAMSSMMMSXXXAXMASXMASASXMAXXXAXAAMAMXMSMXSMXX
MAAMASAMSMXAMASMMXSASMSMMMASXAAAMSXMXMMMASXMMMASASMMXSXMMMSSXSASMSMAMMMSSSXSAMAMAMMMMMMMXSXMAXAXAAXAAAXXASMSMMXMAXXMMSXMSSSSSMXSSMSSMASAXMAX
MMMMXMASXAMXSAMASASAMAXMSSMMXMSMMAXSMSMMAMMAMXXMXMAMAXAMAMAAMXASAMXAXAMMAMMMMSXMSSXMASASMAXSMMMSMSSSSMSMXMAMAMSSSMMSAMAAAXAAAAAMAMAAXAMXAMMS
MSXSAMXAMAMXMMSAMMMAMAMAAAAAXXAMMMSMAAXMMMSAMMMMASAMXSMMSMMSMMMMAMAXSXSMAMASXMXSAAXSMSASMMMAAAAAAAAXMAAAMMAMAMMAMXXMASMMMSMSMMMSAMXSMSSMSAMX
ASAMMSXMAAAAXXMXSSSSMSSMSSMMSSMSSXAMSMSXAAMXMAASASASAAMAMSAAAAMSAMXAMXAMXSXSAMSMAMMSXMMMAXSMSMMSXMSXMSMSAMMSMMMXMMSSXMMSXAAAXAXXAMXAXAAAMMMM
AMXMAMAASMSMMSAMXAAAXAAXAMAAAAMAMSMMAAXMMMMSMMMMASAMXSXXSASMSSMMSMXASASXXSASMMAXAXAXXMXMMMSAMAXXAMXXXMMMMMMAMAMXAAASXAAMXMSMMASXSSMMMMSMMXAX
MMMXAXMMMAAMASASMMMMMSSMSSMMSSMAMMMSMMMMXSAAMSXMAMMMMMMMAXMXAMXAAMSMMAMMMSASMSXSAMMMXSAASAMXMXMSAMASMSASXMSMSXSSMMSSSMMSAMAMSMMMMAMXMXAAMSMS
XAASMXSAMSMMXSAMXXAAXXXAAMMAAAXXMAMMAAAAAMXMMAAMAXAAAAAMSMSXXMMXMAMAMAMAMMAMAMXMXAMAAMMSMASASXASXMASASASXMAAXAMMXMAMXMASMSXMAXAAXAMAXSMMMAAA
SMXSAAMMXXAXXMMMMXXAMMXMMSMMSSMXSAMXSMMMXXASXSXMXSSXSMXXAAXXSMSSSMSSMSSSMMAMAMXSASXMMMXXMXMAMMMMAMAMMMSMASMSMMMAAMXSXXXSXSXSMSXMSASAMXSAXXXM
XMAMMMMMSSMMMMAAASMSASMXSXMAXAAASXMAMXMASXMSAMXXXAAXMASXMSMAMAAAAAAAAXAMXXMSMAAXAMAMMSSMAMMSMMASXMASXMASAMMMMXAXXSMMMMMXAXAMXSAAMASXMAXMMMSX
XMASXMSAAAXSASMSXXAMAMAMSAMSSMMMSAMXSAMAMXXMAMASXMSMMAMAAMMXSAMSMMMMSMMMSMMXMMMSASXMAAAMASXMASMSXXMAXSAMXMAASMMSAXXAAASMMMXMAMMXMASAMXMSAAXM
MSASAAMMSMASASXXMMSMAMSMMAMAXAAAMAAMMMMSSMMXAMAXAAXAMAMMXMAAXAXXAXXSXAAAAMXXXAXMAMMMMXXSAMAXAMXSMMMAXMXMMSSXSAAMMMSXXMXAXASMMMMAMASMMAAMMXMM
XMASMMMMXAMXAMASXAAMXMXAXAMXSMMSSMMXXAAXAAASMMSSMMMSSMXXMMMMSSMSSMMAXMMSSSSMMSSMSMSSSMAMASMMMSAMAAXSAMMXAAMAMMMSAAMSMSSMXAXMSASAMXSMSMSXSAAA
MXMMXAXXXXXSAMXMMSSXSSSSMAMXMAAAXXSMSMSSSMMSXAXSMXAMAXXMAXAXXAMAAAMMSSMAAAASAXXAAAXAAMXMAAXAXMASMMSAAASMMSMMXMAMMXSAMMAMMSMASASXSAMAXAMASMSM
SAMXSXSMSMASXSXXMAMAAAAAXAMMSMMXSAXXXAAAAXAMMMMMMMMSAMXMSSSSXMMSSMMXAAXMMXMMSSMSMSMSMMXMMSSSMSMMAXAMMMSAMAAMXMXSAXSAMMAMXAAXMXMMMASMMAMXMAMA
MAXAMMMAAMAMXAMXMAXMMMMMSMSXASXAMMSAMXMSMMXSAMAXMXMMMXAAAAAAXXAXAXMMSSMXXAAXXXXMAXAAMAXXMMAXAAMMSSMXSXSXMSSMAMAAXXXAMSSMSAXMMXXASXSXMAMAMMMM
SSMASMXSMSMXSMAXMASMXSMXXAAMMMMMXAXMASMXAAASMXMSMMSAMMSSMMMXAXMSMMXXAXXAMSMMMXSMMMSMMXSAMXXMSMSAAAXSAMMXMAMMAMASMMSAMAXMAXXAXMXMMAXXMAXAXXMA
AASAMMAMXAMXAMAXMAMMAMASMXMSXAAXMASXMMXSMMXXAASAMASASAMAMMXSMAXAXMMSMSMSXXASXAMASAMXSMMMSMMAXAMMSMMXMAMAMAMSXSAXAAXAMXMSAXSSMAASMSMSXSSMSMSS
SAMXAMMXMMXAMXMSMXSMMMAXMMMXMXMXSSMAXMASXMAMSMSAMMSAMXXSMXAAXSSSMSAMXAAMAMAMAMSAMSMAAAAAAAMAMSMAAMAMXSSMSSXSAMASMMXSMXXMAXAAXSASAAASAXAMAAAA
XXXSMXSAMSSSXSSXXAAASMXSXAMAMSSMMASXMMASAMXXAMXAMAMAMXXXAMSSMMAXAMXSSMSMSMSMSXAXSAMXSMMMSXMSMMMMSSMSAMAMAMXMAMMAMXXXASXXMMSSMMAMMMMMXMASMSMM
SAMXSAMASAAMAMMAMSSMMXAMXMMXMAAASMMMMMASMMSSSSSMMXSXMXMMAMAAXMAMXSSMXXAAAXAAXMSXSXSAMASXMASAAXXMXAXMASXMMSSSSMXMAMMMAMXAAMXAMMAMXXMMXSAMMAXX
MAMAMXSMMXMMSMMSMAAAXXSXSMSMMSSMMXMASMAXAXAAXAAXSMMMSMASXMASMMMMMSAMMSMSMSMSMAXASMMMSAMAMXMMXMXASMMSAMXXAMMAMMAMAMMMXMSSMASAMSXMAAMAMXSAMXMX
SAMXSAMXAMXAAXXAMSMMSXMASAAAMMAAMXSSMMXSMMMSMSMMSAAAAAXAMXAMXMAAXMXMMAXAAAXAMMMAMASXMASXMMSAXMMMXAAMAXXMMSMAMMAXASAMXMAAXMMAAXAMSSMAMSXMXAXX
SXSAMMSMSSMSSSSMMXAXAAMMMSMSMSMMSAMASMAAAAXAAMMMSSMSSSMSSXAXAXXSSMSSSMXMSMMXSAMXMXMASAMAAAAMXSAXSMMSSXMASAMASMSSXMASAMSSMXSMMMXMAAXMMSAMXSAX
MMMXSASAMAAAMAAXASXASAMXMXXMAMXAMASAMMSMMMSMSMAMXAMAMAAMXMXSMSMMAMAAXMAMAMASMMMSXMXXMASXMSMXAAMMMMAAMXAXXMSMSAMAXXXAXMAXXAMAAAMMSMMXASAMAMMM
SAMXMASXXSMMMSMMXMMMMAMAASASXXMXSMMMSXMSMMAXAMAMSMMSSMMMAAMXAAAMAMMSMMMSAXMXAAAMAMSASXSXXXXSMMXAXMMSSXSMMMSAMXMASXMMMXMSMSSMMXXAMASMXSAMXSXA
SSSXSMMMMMAMAMSMAMAAAMSMSMAMXMAXXMAMSMAAXSMSSSMXAAAAAXSSMSAMXSSXSXMXXAXMMMXXXMMSAMSAMAMMXMASXXSASXAMXMMAMAMXMMMAMMAXSAMXXAAAAXSASAMXMSXMAMMX
MAXXXAASASXMASAXXSSSXXAMAMSMMMSMSSSMSMSMMXAAMAMSSSMSSMAAAMMXMXAAXSMAXXSASXXSASAMXMMMMAMMAMMMMXXMAXAXAASMMAXSMSMMSSMMSMXMXXXMMXAAMMMMMMAXMSSX
MSMMSSMSASXMXSAMMXMAXMXSAXAAXAAAXAXAMAAMMMMMSAMXXMMAMXXMMSXSMMMMMAMSSMSAMAASAMSAMXSASAMMASAXXXMXMAXSXXMXSMSSXAASXMXAXAAXSSXXSAMXMXSMASMSMAMX
XAAMAMAMXMXXXMAMXAXXSXMSXSSSMXXMMXMMMSMAAAXMMASMAXMASMXSAXXAAASASAMXAMMAMMMMXMMMAASMSAMSAXXSMXAXMAXSMSMXAMAMSMSMAMMXMXXXAAAXXMMMMAASASAAMAMM
SSXMAMXXMSMMMSXMSXMAMAXMMMMAMSSMMXAAAXMSSSXMXAAMSMMMSXAMAXXXMMXXSMMSAMMXMAXXMXASMMSAMAMMSMAMXASMMSSXAXMXMMAMMSXMAMMXSAMMSMMMXSXAMSXMMSXMSMSM
MASXMSMMMAAMAAAMXMASXMMSAMSSMAAAAXSMMSAXAXAXMMSAAAAASMXSAMMSMSXMMMASAMASMMMASXXSAAMXMASAXMSMAMMAXMMMSMMAMMMSMAXSAAMAMASAXASXAMMSMMASAMAXAAAM
SAMXAAAASMSMSSXMAXAXAMXSAXAAMSSMMMAAXMMMAMMSAMXMSSMMSAAMASAAAAXAXMASAMASAAXSXMASXMASMAMMSAAMMMSSMAASAASMSAAAMMMSSSXASAMXSAXMASAMXMASAMMSMSMS
MXSMSMSMSMMAMXMSXMMSMMXSXMSSMXAMXXSXMSAMXMASXSXMXAMXMMMSAMXMAMASAMXSAMSSMMMXAMAMMXXMASXAMMMSXXXASXSSXXXMAMSXSXXMAMMASMMXMAMSMXMAMXMSAMXXXXAX
"""


let sampleData = """
"""


func findXMAS(grid: [[Character]]) -> Int {
    let word = Array("XMAS")
    let wordLength = word.count
    let directions = [
        (0, 1),    // Right
        (0, -1),   // Left
        (1, 0),    // Down
        (-1, 0),   // Up
        (1, 1),    // Down-Right
        (-1, -1),  // Up-Left
        (1, -1),   // Down-Left
        (-1, 1)    // Up-Right
    ]
    
    let rows = grid.count
    let cols = grid[0].count
    var count = 0
    
    func isValid(row: Int, col: Int) -> Bool {
        return row >= 0 && row < rows && col >= 0 && col < cols
    }
    
    for r in 0..<rows {
        for c in 0..<cols {
            if grid[r][c] == word[0] { // Start search if the first letter matches
                for direction in directions {
                    var found = true
                    for i in 0..<wordLength {
                        let newRow = r + i * direction.0
                        let newCol = c + i * direction.1
                        if !isValid(row: newRow, col: newCol) || grid[newRow][newCol] != word[i] {
                            found = false
                            break
                        }
                    }
                    if found {
                        count += 1
                    }
                }
            }
        }
    }
    return count
}


@MainActor
func performFirstTask() {
    let input = testData.split(separator: "\n").map { Array($0) }

    let result = findXMAS(grid: input)
    print("Number of XMAS: \(result)")
}

func findXMASShape(grid: [[Character]]) -> Int {
    let rows = grid.count
    let cols = grid[0].count

    func isValid(_ r: Int, _ c: Int) -> Bool {
        return r >= 0 && r < rows && c >= 0 && c < cols
    }

    func checkMASLine(r: Int, c: Int, d: (Int, Int)) -> Bool {
        let (dr, dc) = d
        let r1 = r + dr
        let c1 = c + dc
        let r2 = r - dr
        let c2 = c - dc
        
        guard isValid(r1, c1), isValid(r2, c2) else { return false }
        guard grid[r][c] == "A" else { return false }
        
        let ch1 = grid[r1][c1]
        let ch2 = grid[r2][c2]
        
        return (ch1 == "M" && ch2 == "S") || (ch1 == "S" && ch2 == "M")
    }

    var count = 0
    for r in 0..<rows {
        for c in 0..<cols {
            let diagonal1 = checkMASLine(r: r, c: c, d: (-1, -1))
            let diagonal2 = checkMASLine(r: r, c: c, d: (-1, 1))
            
            if diagonal1 && diagonal2 {
                count += 1
            }
        }
    }
    
    return count
}

@MainActor
func performSecondTask() {
    let grid: [[Character]] = [
        Array("MMMSXXMASM"),
        Array("MSAMXMSMSA"),
        Array("AMXSXMAAMM"),
        Array("MSAMASMSMX"),
        Array("XMASAMXAMM"),
        Array("XXAMMXXAMA"),
        Array("SMSMSASXSS"),
        Array("SAXAMASAAA"),
        Array("MAMMMXMMMM"),
        Array("MXMXAXMASX")
    ]
    
    let result = findXMASShape(grid: testData.split(separator: "\n").map { Array($0) })
    print("Number of X-MAS: \(result)")
}

//performFirstTask()
performSecondTask()
