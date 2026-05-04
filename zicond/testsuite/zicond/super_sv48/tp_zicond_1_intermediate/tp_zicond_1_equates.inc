# Test configuration:
.equ PRIV_MODE_MACHINE                  , 0
.equ PRIV_MODE_SUPER                    , 1
.equ PRIV_MODE_USER                     , 0
.equ SECURE_MODE                        , 0
.equ ENV_BARE_METAL                     , 1
.equ ENV_VIRTUALIZED                    , 0
.equ PAGING_MODE_DISABLE                , 0
.equ PAGING_MODE_SV32                   , 0
.equ PAGING_MODE_SV39                   , 0
.equ PAGING_MODE_SV48                   , 1
.equ PAGING_MODE_SV57                   , 0
.equ NUM_CPUS                           , 1
.equ MP_ENABLED                         , 0
.equ MP_SIMULTANEOUS                    , 0
.equ MP_PARALLEL                        , 1
.equ PAGING_G_MODE_DISABLE              , 1
.equ PAGING_G_MODE_SV32                 , 0
.equ PAGING_G_MODE_SV39                 , 0
.equ PAGING_G_MODE_SV48                 , 0
.equ PAGING_G_MODE_SV57                 , 0
.equ PBMT_NCIO                          , 0
.equ SDTRIG_SUPPORTED                   , 0
.equ SECURE_ACCESS_PROBABILITY          , 30
.equ SECURE_PT_PROBABILITY              , 0
.equ A_D_BIT_RANDOMIZATION              , 0
.equ PBMT_NCIO_RANDOMIZATION            , 0
.equ FS_RANDOMIZATION                   , 0
.equ VS_RANDOMIZATION                   , 0
.equ ALL_4KB_PAGES                      , 0

# FS/VS field values: 0=Off 1=Initial 2=Clean 3=Dirty
# FS_RANDOMIZATION_VALUES: 2
# VS_RANDOMIZATION_VALUES: 2

# Test random data:

# Test addresses:
.equ runtime                            , 0x0000000041000000
.equ _section_runtime                   , 0x0000000041000000
.equ __section__runtime_1               , 0x0000000041001000
.equ __section__runtime_1_phys          , 0x0000000041001000
.equ __section__runtime_2               , 0x0000000041002000
.equ __section__runtime_2_phys          , 0x0000000041002000
.equ __section__runtime_3               , 0x0000000041003000
.equ __section__runtime_3_phys          , 0x0000000041003000
.equ __section__runtime_4               , 0x0000000041004000
.equ __section__runtime_4_phys          , 0x0000000041004000
.equ __section__runtime_5               , 0x0000000041005000
.equ __section__runtime_5_phys          , 0x0000000041005000
.equ __section__runtime_6               , 0x0000000041006000
.equ __section__runtime_6_phys          , 0x0000000041006000
.equ __section__runtime_7               , 0x0000000041007000
.equ __section__runtime_7_phys          , 0x0000000041007000
.equ __section__runtime_8               , 0x0000000041008000
.equ __section__runtime_8_phys          , 0x0000000041008000
.equ __section__runtime_9               , 0x0000000041009000
.equ __section__runtime_9_phys          , 0x0000000041009000
.equ __section__runtime_10              , 0x000000004100a000
.equ __section__runtime_10_phys         , 0x000000004100a000
.equ __section__runtime_11              , 0x000000004100b000
.equ __section__runtime_11_phys         , 0x000000004100b000
.equ __section__runtime_12              , 0x000000004100c000
.equ __section__runtime_12_phys         , 0x000000004100c000
.equ __section__runtime_13              , 0x000000004100d000
.equ __section__runtime_13_phys         , 0x000000004100d000
.equ __section__runtime_14              , 0x000000004100e000
.equ __section__runtime_14_phys         , 0x000000004100e000
.equ __section__runtime_15              , 0x000000004100f000
.equ __section__runtime_15_phys         , 0x000000004100f000
.equ runtime_s                          , 0x0000000041010000
.equ runtime_s_phys                     , 0x0000000041010000
.equ runtime_s_1                        , 0x0000000041011000
.equ runtime_s_1_phys                   , 0x0000000041011000
.equ runtime_s_2                        , 0x0000000041012000
.equ runtime_s_2_phys                   , 0x0000000041012000
.equ runtime_s_3                        , 0x0000000041013000
.equ runtime_s_3_phys                   , 0x0000000041013000
.equ code                               , 0x0000000041014070
.equ __section_code                     , 0x0000000041600000
.equ __section__code_1                  , 0x0000000041015000
.equ __section__code_1_phys             , 0x0000000041601000
.equ __section__code_2                  , 0x0000000041016000
.equ __section__code_2_phys             , 0x0000000041602000
.equ __section__code_3                  , 0x0000000041017000
.equ __section__code_3_phys             , 0x0000000041603000
.equ __section__code_4                  , 0x0000000041018000
.equ __section__code_4_phys             , 0x0000000041604000
.equ __section__code_5                  , 0x0000000041019000
.equ __section__code_5_phys             , 0x0000000041605000
.equ __section__code_6                  , 0x000000004101a000
.equ __section__code_6_phys             , 0x0000000041606000
.equ __section__code_7                  , 0x000000004101b000
.equ __section__code_7_phys             , 0x0000000041607000
.equ __section__code_8                  , 0x000000004101c000
.equ __section__code_8_phys             , 0x0000000041608000
.equ __section__code_9                  , 0x000000004101d000
.equ __section__code_9_phys             , 0x0000000041609000
.equ __section__code_10                 , 0x000000004101e000
.equ __section__code_10_phys            , 0x000000004160a000
.equ __section__code_11                 , 0x000000004101f000
.equ __section__code_11_phys            , 0x000000004160b000
.equ __section__code_12                 , 0x0000000041020000
.equ __section__code_12_phys            , 0x000000004160c000
.equ __section__code_13                 , 0x0000000041021000
.equ __section__code_13_phys            , 0x000000004160d000
.equ __section__code_14                 , 0x0000000041022000
.equ __section__code_14_phys            , 0x000000004160e000
.equ __section__code_15                 , 0x0000000041023000
.equ __section__code_15_phys            , 0x000000004160f000
.equ __section__code_16                 , 0x0000000041024000
.equ __section__code_16_phys            , 0x0000000041610000
.equ __section__code_17                 , 0x0000000041025000
.equ __section__code_17_phys            , 0x0000000041611000
.equ __section__code_18                 , 0x0000000041026000
.equ __section__code_18_phys            , 0x0000000041612000
.equ __section__code_19                 , 0x0000000041027000
.equ __section__code_19_phys            , 0x0000000041613000
.equ __section__code_20                 , 0x0000000041028000
.equ __section__code_20_phys            , 0x0000000041614000
.equ __section__code_21                 , 0x0000000041029000
.equ __section__code_21_phys            , 0x0000000041615000
.equ __section__code_22                 , 0x000000004102a000
.equ __section__code_22_phys            , 0x0000000041616000
.equ __section__code_23                 , 0x000000004102b000
.equ __section__code_23_phys            , 0x0000000041617000
.equ __section__code_24                 , 0x000000004102c000
.equ __section__code_24_phys            , 0x0000000041618000
.equ __section__code_25                 , 0x000000004102d000
.equ __section__code_25_phys            , 0x0000000041619000
.equ __section__code_26                 , 0x000000004102e000
.equ __section__code_26_phys            , 0x000000004161a000
.equ __section__code_27                 , 0x000000004102f000
.equ __section__code_27_phys            , 0x000000004161b000
.equ __section__code_28                 , 0x0000000041030000
.equ __section__code_28_phys            , 0x000000004161c000
.equ __section__code_29                 , 0x0000000041031000
.equ __section__code_29_phys            , 0x000000004161d000
.equ __section__code_30                 , 0x0000000041032000
.equ __section__code_30_phys            , 0x000000004161e000
.equ __section__code_31                 , 0x0000000041033000
.equ __section__code_31_phys            , 0x000000004161f000
.equ __section__code_32                 , 0x0000000041034000
.equ __section__code_32_phys            , 0x0000000041620000
.equ __section__code_33                 , 0x0000000041035000
.equ __section__code_33_phys            , 0x0000000041621000
.equ __section__code_34                 , 0x0000000041036000
.equ __section__code_34_phys            , 0x0000000041622000
.equ __section__code_35                 , 0x0000000041037000
.equ __section__code_35_phys            , 0x0000000041623000
.equ __section__code_36                 , 0x0000000041038000
.equ __section__code_36_phys            , 0x0000000041624000
.equ __section__code_37                 , 0x0000000041039000
.equ __section__code_37_phys            , 0x0000000041625000
.equ __section__code_38                 , 0x000000004103a000
.equ __section__code_38_phys            , 0x0000000041626000
.equ __section__code_39                 , 0x000000004103b000
.equ __section__code_39_phys            , 0x0000000041627000
.equ __section__code_40                 , 0x000000004103c000
.equ __section__code_40_phys            , 0x0000000041628000
.equ __section__code_41                 , 0x000000004103d000
.equ __section__code_41_phys            , 0x0000000041629000
.equ __section__code_42                 , 0x000000004103e000
.equ __section__code_42_phys            , 0x000000004162a000
.equ __section__code_43                 , 0x000000004103f000
.equ __section__code_43_phys            , 0x000000004162b000
.equ __section__code_44                 , 0x0000000041040000
.equ __section__code_44_phys            , 0x000000004162c000
.equ __section__code_45                 , 0x0000000041041000
.equ __section__code_45_phys            , 0x000000004162d000
.equ __section__code_46                 , 0x0000000041042000
.equ __section__code_46_phys            , 0x000000004162e000
.equ __section__code_47                 , 0x0000000041043000
.equ __section__code_47_phys            , 0x000000004162f000
.equ __section__code_48                 , 0x0000000041044000
.equ __section__code_48_phys            , 0x0000000041630000
.equ __section__code_49                 , 0x0000000041045000
.equ __section__code_49_phys            , 0x0000000041631000
.equ __section__code_50                 , 0x0000000041046000
.equ __section__code_50_phys            , 0x0000000041632000
.equ __section__code_51                 , 0x0000000041047000
.equ __section__code_51_phys            , 0x0000000041633000
.equ __section__code_52                 , 0x0000000041048000
.equ __section__code_52_phys            , 0x0000000041634000
.equ __section__code_53                 , 0x0000000041049000
.equ __section__code_53_phys            , 0x0000000041635000
.equ __section__code_54                 , 0x000000004104a000
.equ __section__code_54_phys            , 0x0000000041636000
.equ __section__code_55                 , 0x000000004104b000
.equ __section__code_55_phys            , 0x0000000041637000
.equ __section__code_56                 , 0x000000004104c000
.equ __section__code_56_phys            , 0x0000000041638000
.equ __section__code_57                 , 0x000000004104d000
.equ __section__code_57_phys            , 0x0000000041639000
.equ __section__code_58                 , 0x000000004104e000
.equ __section__code_58_phys            , 0x000000004163a000
.equ __section__code_59                 , 0x000000004104f000
.equ __section__code_59_phys            , 0x000000004163b000
.equ __section__code_60                 , 0x0000000041050000
.equ __section__code_60_phys            , 0x000000004163c000
.equ __section__code_61                 , 0x0000000041051000
.equ __section__code_61_phys            , 0x000000004163d000
.equ __section__code_62                 , 0x0000000041052000
.equ __section__code_62_phys            , 0x000000004163e000
.equ __section__code_63                 , 0x0000000041053000
.equ __section__code_63_phys            , 0x000000004163f000
.equ __section__code_64                 , 0x0000000041054000
.equ __section__code_64_phys            , 0x0000000041640000
.equ __section__code_65                 , 0x0000000041055000
.equ __section__code_65_phys            , 0x0000000041641000
.equ __section__code_66                 , 0x0000000041056000
.equ __section__code_66_phys            , 0x0000000041642000
.equ __section__code_67                 , 0x0000000041057000
.equ __section__code_67_phys            , 0x0000000041643000
.equ __section__code_68                 , 0x0000000041058000
.equ __section__code_68_phys            , 0x0000000041644000
.equ __section__code_69                 , 0x0000000041059000
.equ __section__code_69_phys            , 0x0000000041645000
.equ __section__code_70                 , 0x000000004105a000
.equ __section__code_70_phys            , 0x0000000041646000
.equ __section__code_71                 , 0x000000004105b000
.equ __section__code_71_phys            , 0x0000000041647000
.equ __section__code_72                 , 0x000000004105c000
.equ __section__code_72_phys            , 0x0000000041648000
.equ __section__code_73                 , 0x000000004105d000
.equ __section__code_73_phys            , 0x0000000041649000
.equ __section__code_74                 , 0x000000004105e000
.equ __section__code_74_phys            , 0x000000004164a000
.equ __section__code_75                 , 0x000000004105f000
.equ __section__code_75_phys            , 0x000000004164b000
.equ __section__code_76                 , 0x0000000041060000
.equ __section__code_76_phys            , 0x000000004164c000
.equ __section__code_77                 , 0x0000000041061000
.equ __section__code_77_phys            , 0x000000004164d000
.equ __section__code_78                 , 0x0000000041062000
.equ __section__code_78_phys            , 0x000000004164e000
.equ __section__code_79                 , 0x0000000041063000
.equ __section__code_79_phys            , 0x000000004164f000
.equ __section__code_80                 , 0x0000000041064000
.equ __section__code_80_phys            , 0x0000000041650000
.equ __section__code_81                 , 0x0000000041065000
.equ __section__code_81_phys            , 0x0000000041651000
.equ __section__code_82                 , 0x0000000041066000
.equ __section__code_82_phys            , 0x0000000041652000
.equ __section__code_83                 , 0x0000000041067000
.equ __section__code_83_phys            , 0x0000000041653000
.equ __section__code_84                 , 0x0000000041068000
.equ __section__code_84_phys            , 0x0000000041654000
.equ __section__code_85                 , 0x0000000041069000
.equ __section__code_85_phys            , 0x0000000041655000
.equ __section__code_86                 , 0x000000004106a000
.equ __section__code_86_phys            , 0x0000000041656000
.equ __section__code_87                 , 0x000000004106b000
.equ __section__code_87_phys            , 0x0000000041657000
.equ __section__code_88                 , 0x000000004106c000
.equ __section__code_88_phys            , 0x0000000041658000
.equ __section__code_89                 , 0x000000004106d000
.equ __section__code_89_phys            , 0x0000000041659000
.equ __section__code_90                 , 0x000000004106e000
.equ __section__code_90_phys            , 0x000000004165a000
.equ __section__code_91                 , 0x000000004106f000
.equ __section__code_91_phys            , 0x000000004165b000
.equ __section__code_92                 , 0x0000000041070000
.equ __section__code_92_phys            , 0x000000004165c000
.equ __section__code_93                 , 0x0000000041071000
.equ __section__code_93_phys            , 0x000000004165d000
.equ __section__code_94                 , 0x0000000041072000
.equ __section__code_94_phys            , 0x000000004165e000
.equ __section__code_95                 , 0x0000000041073000
.equ __section__code_95_phys            , 0x000000004165f000
.equ __section__code_96                 , 0x0000000041074000
.equ __section__code_96_phys            , 0x0000000041660000
.equ __section__code_97                 , 0x0000000041075000
.equ __section__code_97_phys            , 0x0000000041661000
.equ __section__code_98                 , 0x0000000041076000
.equ __section__code_98_phys            , 0x0000000041662000
.equ __section__code_99                 , 0x0000000041077000
.equ __section__code_99_phys            , 0x0000000041663000
.equ __section__code_100                , 0x0000000041078000
.equ __section__code_100_phys           , 0x0000000041664000
.equ __section__code_101                , 0x0000000041079000
.equ __section__code_101_phys           , 0x0000000041665000
.equ __section__code_102                , 0x000000004107a000
.equ __section__code_102_phys           , 0x0000000041666000
.equ __section__code_103                , 0x000000004107b000
.equ __section__code_103_phys           , 0x0000000041667000
.equ __section__code_104                , 0x000000004107c000
.equ __section__code_104_phys           , 0x0000000041668000
.equ __section__code_105                , 0x000000004107d000
.equ __section__code_105_phys           , 0x0000000041669000
.equ __section__code_106                , 0x000000004107e000
.equ __section__code_106_phys           , 0x000000004166a000
.equ __section__code_107                , 0x000000004107f000
.equ __section__code_107_phys           , 0x000000004166b000
.equ __section__code_108                , 0x0000000041080000
.equ __section__code_108_phys           , 0x000000004166c000
.equ __section__code_109                , 0x0000000041081000
.equ __section__code_109_phys           , 0x000000004166d000
.equ __section__code_110                , 0x0000000041082000
.equ __section__code_110_phys           , 0x000000004166e000
.equ __section__code_111                , 0x0000000041083000
.equ __section__code_111_phys           , 0x000000004166f000
.equ __section__code_112                , 0x0000000041084000
.equ __section__code_112_phys           , 0x0000000041670000
.equ __section__code_113                , 0x0000000041085000
.equ __section__code_113_phys           , 0x0000000041671000
.equ __section__code_114                , 0x0000000041086000
.equ __section__code_114_phys           , 0x0000000041672000
.equ __section__code_115                , 0x0000000041087000
.equ __section__code_115_phys           , 0x0000000041673000
.equ __section__code_116                , 0x0000000041088000
.equ __section__code_116_phys           , 0x0000000041674000
.equ __section__code_117                , 0x0000000041089000
.equ __section__code_117_phys           , 0x0000000041675000
.equ __section__code_118                , 0x000000004108a000
.equ __section__code_118_phys           , 0x0000000041676000
.equ __section__code_119                , 0x000000004108b000
.equ __section__code_119_phys           , 0x0000000041677000
.equ __section__code_120                , 0x000000004108c000
.equ __section__code_120_phys           , 0x0000000041678000
.equ __section__code_121                , 0x000000004108d000
.equ __section__code_121_phys           , 0x0000000041679000
.equ __section__code_122                , 0x000000004108e000
.equ __section__code_122_phys           , 0x000000004167a000
.equ __section__code_123                , 0x000000004108f000
.equ __section__code_123_phys           , 0x000000004167b000
.equ __section__code_124                , 0x0000000041090000
.equ __section__code_124_phys           , 0x000000004167c000
.equ __section__code_125                , 0x0000000041091000
.equ __section__code_125_phys           , 0x000000004167d000
.equ __section__code_126                , 0x0000000041092000
.equ __section__code_126_phys           , 0x000000004167e000
.equ __section__code_127                , 0x0000000041093000
.equ __section__code_127_phys           , 0x000000004167f000
.equ code_super_0                       , 0x0000000041094000
.equ __section_code_super_0             , 0x0000000041680000
.equ code_super_1                       , 0x0000000041095000
.equ __section_code_super_1             , 0x0000000041681000
.equ code_super_2                       , 0x0000000041096000
.equ __section_code_super_2             , 0x0000000041682000
.equ code_super_3                       , 0x0000000041097000
.equ __section_code_super_3             , 0x0000000041683000
.equ code_super_4                       , 0x0000000041098000
.equ __section_code_super_4             , 0x0000000041684000
.equ code_super_5                       , 0x0000000041099000
.equ __section_code_super_5             , 0x0000000041685000
.equ code_super_6                       , 0x000000004109a000
.equ __section_code_super_6             , 0x0000000041686000
.equ code_super_7                       , 0x000000004109b000
.equ __section_code_super_7             , 0x0000000041687000
.equ code_super_8                       , 0x000000004109c000
.equ __section_code_super_8             , 0x0000000041688000
.equ code_super_9                       , 0x000000004109d000
.equ __section_code_super_9             , 0x0000000041689000
.equ code_super_10                      , 0x000000004109e000
.equ __section_code_super_10            , 0x000000004168a000
.equ code_super_11                      , 0x000000004109f000
.equ __section_code_super_11            , 0x000000004168b000
.equ code_super_12                      , 0x00000000410a0000
.equ __section_code_super_12            , 0x000000004168c000
.equ code_super_13                      , 0x00000000410a1000
.equ __section_code_super_13            , 0x000000004168d000
.equ code_super_14                      , 0x00000000410a2000
.equ __section_code_super_14            , 0x000000004168e000
.equ code_super_15                      , 0x00000000410a3000
.equ __section_code_super_15            , 0x000000004168f000
.equ code_super_16                      , 0x00000000410a4000
.equ __section_code_super_16            , 0x0000000041690000
.equ code_super_17                      , 0x00000000410a5000
.equ __section_code_super_17            , 0x0000000041691000
.equ code_super_18                      , 0x00000000410a6000
.equ __section_code_super_18            , 0x0000000041692000
.equ code_super_19                      , 0x00000000410a7000
.equ __section_code_super_19            , 0x0000000041693000
.equ code_super_20                      , 0x00000000410a8000
.equ __section_code_super_20            , 0x0000000041694000
.equ code_super_21                      , 0x00000000410a9000
.equ __section_code_super_21            , 0x0000000041695000
.equ code_super_22                      , 0x00000000410aa000
.equ __section_code_super_22            , 0x0000000041696000
.equ code_super_23                      , 0x00000000410ab000
.equ __section_code_super_23            , 0x0000000041697000
.equ code_super_24                      , 0x00000000410ac000
.equ __section_code_super_24            , 0x0000000041698000
.equ code_super_25                      , 0x00000000410ad000
.equ __section_code_super_25            , 0x0000000041699000
.equ code_super_26                      , 0x00000000410ae000
.equ __section_code_super_26            , 0x000000004169a000
.equ code_super_27                      , 0x00000000410af000
.equ __section_code_super_27            , 0x000000004169b000
.equ code_super_28                      , 0x00000000410b0000
.equ __section_code_super_28            , 0x000000004169c000
.equ code_super_29                      , 0x00000000410b1000
.equ __section_code_super_29            , 0x000000004169d000
.equ code_super_30                      , 0x00000000410b2000
.equ __section_code_super_30            , 0x000000004169e000
.equ code_super_31                      , 0x00000000410b3000
.equ __section_code_super_31            , 0x000000004169f000
.equ code_super_32                      , 0x00000000410b4000
.equ __section_code_super_32            , 0x00000000416a0000
.equ code_super_33                      , 0x00000000410b5000
.equ __section_code_super_33            , 0x00000000416a1000
.equ code_super_34                      , 0x00000000410b6000
.equ __section_code_super_34            , 0x00000000416a2000
.equ code_super_35                      , 0x00000000410b7000
.equ __section_code_super_35            , 0x00000000416a3000
.equ code_super_36                      , 0x00000000410b8000
.equ __section_code_super_36            , 0x00000000416a4000
.equ code_super_37                      , 0x00000000410b9000
.equ __section_code_super_37            , 0x00000000416a5000
.equ code_super_38                      , 0x00000000410ba000
.equ __section_code_super_38            , 0x00000000416a6000
.equ code_super_39                      , 0x00000000410bb000
.equ __section_code_super_39            , 0x00000000416a7000
.equ code_super_40                      , 0x00000000410bc000
.equ __section_code_super_40            , 0x00000000416a8000
.equ code_super_41                      , 0x00000000410bd000
.equ __section_code_super_41            , 0x00000000416a9000
.equ code_super_42                      , 0x00000000410be000
.equ __section_code_super_42            , 0x00000000416aa000
.equ code_super_43                      , 0x00000000410bf000
.equ __section_code_super_43            , 0x00000000416ab000
.equ code_super_44                      , 0x00000000410c0000
.equ __section_code_super_44            , 0x00000000416ac000
.equ code_super_45                      , 0x00000000410c1000
.equ __section_code_super_45            , 0x00000000416ad000
.equ code_super_46                      , 0x00000000410c2000
.equ __section_code_super_46            , 0x00000000416ae000
.equ code_super_47                      , 0x00000000410c3000
.equ __section_code_super_47            , 0x00000000416af000
.equ code_super_48                      , 0x00000000410c4000
.equ __section_code_super_48            , 0x00000000416b0000
.equ code_super_49                      , 0x00000000410c5000
.equ __section_code_super_49            , 0x00000000416b1000
.equ code_super_50                      , 0x00000000410c6000
.equ __section_code_super_50            , 0x00000000416b2000
.equ code_super_51                      , 0x00000000410c7000
.equ __section_code_super_51            , 0x00000000416b3000
.equ code_super_52                      , 0x00000000410c8000
.equ __section_code_super_52            , 0x00000000416b4000
.equ code_super_53                      , 0x00000000410c9000
.equ __section_code_super_53            , 0x00000000416b5000
.equ code_super_54                      , 0x00000000410ca000
.equ __section_code_super_54            , 0x00000000416b6000
.equ code_super_55                      , 0x00000000410cb000
.equ __section_code_super_55            , 0x00000000416b7000
.equ code_super_56                      , 0x00000000410cc000
.equ __section_code_super_56            , 0x00000000416b8000
.equ code_super_57                      , 0x00000000410cd000
.equ __section_code_super_57            , 0x00000000416b9000
.equ code_super_58                      , 0x00000000410ce000
.equ __section_code_super_58            , 0x00000000416ba000
.equ code_super_59                      , 0x00000000410cf000
.equ __section_code_super_59            , 0x00000000416bb000
.equ code_super_60                      , 0x00000000410d0000
.equ __section_code_super_60            , 0x00000000416bc000
.equ code_super_61                      , 0x00000000410d1000
.equ __section_code_super_61            , 0x00000000416bd000
.equ code_super_62                      , 0x00000000410d2000
.equ __section_code_super_62            , 0x00000000416be000
.equ code_super_63                      , 0x00000000410d3000
.equ __section_code_super_63            , 0x00000000416bf000
.equ code_super_64                      , 0x00000000410d4000
.equ __section_code_super_64            , 0x00000000416c0000
.equ code_super_65                      , 0x00000000410d5000
.equ __section_code_super_65            , 0x00000000416c1000
.equ code_super_66                      , 0x00000000410d6000
.equ __section_code_super_66            , 0x00000000416c2000
.equ code_super_67                      , 0x00000000410d7000
.equ __section_code_super_67            , 0x00000000416c3000
.equ code_super_68                      , 0x00000000410d8000
.equ __section_code_super_68            , 0x00000000416c4000
.equ code_super_69                      , 0x00000000410d9000
.equ __section_code_super_69            , 0x00000000416c5000
.equ code_super_70                      , 0x00000000410da000
.equ __section_code_super_70            , 0x00000000416c6000
.equ code_super_71                      , 0x00000000410db000
.equ __section_code_super_71            , 0x00000000416c7000
.equ code_super_72                      , 0x00000000410dc000
.equ __section_code_super_72            , 0x00000000416c8000
.equ code_super_73                      , 0x00000000410dd000
.equ __section_code_super_73            , 0x00000000416c9000
.equ code_super_74                      , 0x00000000410de000
.equ __section_code_super_74            , 0x00000000416ca000
.equ code_super_75                      , 0x00000000410df000
.equ __section_code_super_75            , 0x00000000416cb000
.equ code_super_76                      , 0x00000000410e0000
.equ __section_code_super_76            , 0x00000000416cc000
.equ code_super_77                      , 0x00000000410e1000
.equ __section_code_super_77            , 0x00000000416cd000
.equ code_super_78                      , 0x00000000410e2000
.equ __section_code_super_78            , 0x00000000416ce000
.equ code_super_79                      , 0x00000000410e3000
.equ __section_code_super_79            , 0x00000000416cf000
.equ code_super_80                      , 0x00000000410e4000
.equ __section_code_super_80            , 0x00000000416d0000
.equ code_super_81                      , 0x00000000410e5000
.equ __section_code_super_81            , 0x00000000416d1000
.equ code_super_82                      , 0x00000000410e6000
.equ __section_code_super_82            , 0x00000000416d2000
.equ code_super_83                      , 0x00000000410e7000
.equ __section_code_super_83            , 0x00000000416d3000
.equ code_super_84                      , 0x00000000410e8000
.equ __section_code_super_84            , 0x00000000416d4000
.equ code_super_85                      , 0x00000000410e9000
.equ __section_code_super_85            , 0x00000000416d5000
.equ code_super_86                      , 0x00000000410ea000
.equ __section_code_super_86            , 0x00000000416d6000
.equ code_super_87                      , 0x00000000410eb000
.equ __section_code_super_87            , 0x00000000416d7000
.equ code_super_88                      , 0x00000000410ec000
.equ __section_code_super_88            , 0x00000000416d8000
.equ code_super_89                      , 0x00000000410ed000
.equ __section_code_super_89            , 0x00000000416d9000
.equ code_super_90                      , 0x00000000410ee000
.equ __section_code_super_90            , 0x00000000416da000
.equ code_super_91                      , 0x00000000410ef000
.equ __section_code_super_91            , 0x00000000416db000
.equ code_super_92                      , 0x00000000410f0000
.equ __section_code_super_92            , 0x00000000416dc000
.equ code_super_93                      , 0x00000000410f1000
.equ __section_code_super_93            , 0x00000000416dd000
.equ code_super_94                      , 0x00000000410f2000
.equ __section_code_super_94            , 0x00000000416de000
.equ code_super_95                      , 0x00000000410f3000
.equ __section_code_super_95            , 0x00000000416df000
.equ code_super_96                      , 0x00000000410f4000
.equ __section_code_super_96            , 0x00000000416e0000
.equ code_super_97                      , 0x00000000410f5000
.equ __section_code_super_97            , 0x00000000416e1000
.equ code_super_98                      , 0x00000000410f6000
.equ __section_code_super_98            , 0x00000000416e2000
.equ code_super_99                      , 0x00000000410f7000
.equ __section_code_super_99            , 0x00000000416e3000
.equ code_super_100                     , 0x00000000410f8000
.equ __section_code_super_100           , 0x00000000416e4000
.equ code_super_101                     , 0x00000000410f9000
.equ __section_code_super_101           , 0x00000000416e5000
.equ code_super_102                     , 0x00000000410fa000
.equ __section_code_super_102           , 0x00000000416e6000
.equ code_super_103                     , 0x00000000410fb000
.equ __section_code_super_103           , 0x00000000416e7000
.equ code_super_104                     , 0x00000000410fc000
.equ __section_code_super_104           , 0x00000000416e8000
.equ code_super_105                     , 0x00000000410fd000
.equ __section_code_super_105           , 0x00000000416e9000
.equ code_super_106                     , 0x00000000410fe000
.equ __section_code_super_106           , 0x00000000416ea000
.equ code_super_107                     , 0x00000000410ff000
.equ __section_code_super_107           , 0x00000000416eb000
.equ code_super_108                     , 0x0000000041100000
.equ __section_code_super_108           , 0x00000000416ec000
.equ code_super_109                     , 0x0000000041101000
.equ __section_code_super_109           , 0x00000000416ed000
.equ code_super_110                     , 0x0000000041102000
.equ __section_code_super_110           , 0x00000000416ee000
.equ code_super_111                     , 0x0000000041103000
.equ __section_code_super_111           , 0x00000000416ef000
.equ code_super_112                     , 0x0000000041104000
.equ __section_code_super_112           , 0x00000000416f0000
.equ code_super_113                     , 0x0000000041105000
.equ __section_code_super_113           , 0x00000000416f1000
.equ code_super_114                     , 0x0000000041106000
.equ __section_code_super_114           , 0x00000000416f2000
.equ code_super_115                     , 0x0000000041107000
.equ __section_code_super_115           , 0x00000000416f3000
.equ code_super_116                     , 0x0000000041108000
.equ __section_code_super_116           , 0x00000000416f4000
.equ code_super_117                     , 0x0000000041109000
.equ __section_code_super_117           , 0x00000000416f5000
.equ code_super_118                     , 0x000000004110a000
.equ __section_code_super_118           , 0x00000000416f6000
.equ code_super_119                     , 0x000000004110b000
.equ __section_code_super_119           , 0x00000000416f7000
.equ code_super_120                     , 0x000000004110c000
.equ __section_code_super_120           , 0x00000000416f8000
.equ code_super_121                     , 0x000000004110d000
.equ __section_code_super_121           , 0x00000000416f9000
.equ code_super_122                     , 0x000000004110e000
.equ __section_code_super_122           , 0x00000000416fa000
.equ code_super_123                     , 0x000000004110f000
.equ __section_code_super_123           , 0x00000000416fb000
.equ code_super_124                     , 0x0000000041110000
.equ __section_code_super_124           , 0x00000000416fc000
.equ code_super_125                     , 0x0000000041111000
.equ __section_code_super_125           , 0x00000000416fd000
.equ code_super_126                     , 0x0000000041112000
.equ __section_code_super_126           , 0x00000000416fe000
.equ code_super_127                     , 0x0000000041113000
.equ __section_code_super_127           , 0x00000000416ff000
.equ code_user_0                        , 0x0000000041114000
.equ __section_code_user_0              , 0x0000000041700000
.equ code_user_1                        , 0x0000000041115000
.equ __section_code_user_1              , 0x0000000041701000
.equ code_user_2                        , 0x0000000041116000
.equ __section_code_user_2              , 0x0000000041702000
.equ code_user_3                        , 0x0000000041117000
.equ __section_code_user_3              , 0x0000000041703000
.equ code_user_4                        , 0x0000000041118000
.equ __section_code_user_4              , 0x0000000041704000
.equ code_user_5                        , 0x0000000041119000
.equ __section_code_user_5              , 0x0000000041705000
.equ code_user_6                        , 0x000000004111a000
.equ __section_code_user_6              , 0x0000000041706000
.equ code_user_7                        , 0x000000004111b000
.equ __section_code_user_7              , 0x0000000041707000
.equ code_user_8                        , 0x000000004111c000
.equ __section_code_user_8              , 0x0000000041708000
.equ code_user_9                        , 0x000000004111d000
.equ __section_code_user_9              , 0x0000000041709000
.equ code_user_10                       , 0x000000004111e000
.equ __section_code_user_10             , 0x000000004170a000
.equ code_user_11                       , 0x000000004111f000
.equ __section_code_user_11             , 0x000000004170b000
.equ code_user_12                       , 0x0000000041120000
.equ __section_code_user_12             , 0x000000004170c000
.equ code_user_13                       , 0x0000000041121000
.equ __section_code_user_13             , 0x000000004170d000
.equ code_user_14                       , 0x0000000041122000
.equ __section_code_user_14             , 0x000000004170e000
.equ code_user_15                       , 0x0000000041123000
.equ __section_code_user_15             , 0x000000004170f000
.equ code_user_16                       , 0x0000000041124000
.equ __section_code_user_16             , 0x0000000041710000
.equ code_user_17                       , 0x0000000041125000
.equ __section_code_user_17             , 0x0000000041711000
.equ code_user_18                       , 0x0000000041126000
.equ __section_code_user_18             , 0x0000000041712000
.equ code_user_19                       , 0x0000000041127000
.equ __section_code_user_19             , 0x0000000041713000
.equ code_user_20                       , 0x0000000041128000
.equ __section_code_user_20             , 0x0000000041714000
.equ code_user_21                       , 0x0000000041129000
.equ __section_code_user_21             , 0x0000000041715000
.equ code_user_22                       , 0x000000004112a000
.equ __section_code_user_22             , 0x0000000041716000
.equ code_user_23                       , 0x000000004112b000
.equ __section_code_user_23             , 0x0000000041717000
.equ code_user_24                       , 0x000000004112c000
.equ __section_code_user_24             , 0x0000000041718000
.equ code_user_25                       , 0x000000004112d000
.equ __section_code_user_25             , 0x0000000041719000
.equ code_user_26                       , 0x000000004112e000
.equ __section_code_user_26             , 0x000000004171a000
.equ code_user_27                       , 0x000000004112f000
.equ __section_code_user_27             , 0x000000004171b000
.equ code_user_28                       , 0x0000000041130000
.equ __section_code_user_28             , 0x000000004171c000
.equ code_user_29                       , 0x0000000041131000
.equ __section_code_user_29             , 0x000000004171d000
.equ code_user_30                       , 0x0000000041132000
.equ __section_code_user_30             , 0x000000004171e000
.equ code_user_31                       , 0x0000000041133000
.equ __section_code_user_31             , 0x000000004171f000
.equ code_user_32                       , 0x0000000041134000
.equ __section_code_user_32             , 0x0000000041720000
.equ code_user_33                       , 0x0000000041135000
.equ __section_code_user_33             , 0x0000000041721000
.equ code_user_34                       , 0x0000000041136000
.equ __section_code_user_34             , 0x0000000041722000
.equ code_user_35                       , 0x0000000041137000
.equ __section_code_user_35             , 0x0000000041723000
.equ code_user_36                       , 0x0000000041138000
.equ __section_code_user_36             , 0x0000000041724000
.equ code_user_37                       , 0x0000000041139000
.equ __section_code_user_37             , 0x0000000041725000
.equ code_user_38                       , 0x000000004113a000
.equ __section_code_user_38             , 0x0000000041726000
.equ code_user_39                       , 0x000000004113b000
.equ __section_code_user_39             , 0x0000000041727000
.equ code_user_40                       , 0x000000004113c000
.equ __section_code_user_40             , 0x0000000041728000
.equ code_user_41                       , 0x000000004113d000
.equ __section_code_user_41             , 0x0000000041729000
.equ code_user_42                       , 0x000000004113e000
.equ __section_code_user_42             , 0x000000004172a000
.equ code_user_43                       , 0x000000004113f000
.equ __section_code_user_43             , 0x000000004172b000
.equ code_user_44                       , 0x0000000041140000
.equ __section_code_user_44             , 0x000000004172c000
.equ code_user_45                       , 0x0000000041141000
.equ __section_code_user_45             , 0x000000004172d000
.equ code_user_46                       , 0x0000000041142000
.equ __section_code_user_46             , 0x000000004172e000
.equ code_user_47                       , 0x0000000041143000
.equ __section_code_user_47             , 0x000000004172f000
.equ code_user_48                       , 0x0000000041144000
.equ __section_code_user_48             , 0x0000000041730000
.equ code_user_49                       , 0x0000000041145000
.equ __section_code_user_49             , 0x0000000041731000
.equ code_user_50                       , 0x0000000041146000
.equ __section_code_user_50             , 0x0000000041732000
.equ code_user_51                       , 0x0000000041147000
.equ __section_code_user_51             , 0x0000000041733000
.equ code_user_52                       , 0x0000000041148000
.equ __section_code_user_52             , 0x0000000041734000
.equ code_user_53                       , 0x0000000041149000
.equ __section_code_user_53             , 0x0000000041735000
.equ code_user_54                       , 0x000000004114a000
.equ __section_code_user_54             , 0x0000000041736000
.equ code_user_55                       , 0x000000004114b000
.equ __section_code_user_55             , 0x0000000041737000
.equ code_user_56                       , 0x000000004114c000
.equ __section_code_user_56             , 0x0000000041738000
.equ code_user_57                       , 0x000000004114d000
.equ __section_code_user_57             , 0x0000000041739000
.equ code_user_58                       , 0x000000004114e000
.equ __section_code_user_58             , 0x000000004173a000
.equ code_user_59                       , 0x000000004114f000
.equ __section_code_user_59             , 0x000000004173b000
.equ code_user_60                       , 0x0000000041150000
.equ __section_code_user_60             , 0x000000004173c000
.equ code_user_61                       , 0x0000000041151000
.equ __section_code_user_61             , 0x000000004173d000
.equ code_user_62                       , 0x0000000041152000
.equ __section_code_user_62             , 0x000000004173e000
.equ code_user_63                       , 0x0000000041153000
.equ __section_code_user_63             , 0x000000004173f000
.equ code_user_64                       , 0x0000000041154000
.equ __section_code_user_64             , 0x0000000041740000
.equ code_user_65                       , 0x0000000041155000
.equ __section_code_user_65             , 0x0000000041741000
.equ code_user_66                       , 0x0000000041156000
.equ __section_code_user_66             , 0x0000000041742000
.equ code_user_67                       , 0x0000000041157000
.equ __section_code_user_67             , 0x0000000041743000
.equ code_user_68                       , 0x0000000041158000
.equ __section_code_user_68             , 0x0000000041744000
.equ code_user_69                       , 0x0000000041159000
.equ __section_code_user_69             , 0x0000000041745000
.equ code_user_70                       , 0x000000004115a000
.equ __section_code_user_70             , 0x0000000041746000
.equ code_user_71                       , 0x000000004115b000
.equ __section_code_user_71             , 0x0000000041747000
.equ code_user_72                       , 0x000000004115c000
.equ __section_code_user_72             , 0x0000000041748000
.equ code_user_73                       , 0x000000004115d000
.equ __section_code_user_73             , 0x0000000041749000
.equ code_user_74                       , 0x000000004115e000
.equ __section_code_user_74             , 0x000000004174a000
.equ code_user_75                       , 0x000000004115f000
.equ __section_code_user_75             , 0x000000004174b000
.equ code_user_76                       , 0x0000000041160000
.equ __section_code_user_76             , 0x000000004174c000
.equ code_user_77                       , 0x0000000041161000
.equ __section_code_user_77             , 0x000000004174d000
.equ code_user_78                       , 0x0000000041162000
.equ __section_code_user_78             , 0x000000004174e000
.equ code_user_79                       , 0x0000000041163000
.equ __section_code_user_79             , 0x000000004174f000
.equ code_user_80                       , 0x0000000041164000
.equ __section_code_user_80             , 0x0000000041750000
.equ code_user_81                       , 0x0000000041165000
.equ __section_code_user_81             , 0x0000000041751000
.equ code_user_82                       , 0x0000000041166000
.equ __section_code_user_82             , 0x0000000041752000
.equ code_user_83                       , 0x0000000041167000
.equ __section_code_user_83             , 0x0000000041753000
.equ code_user_84                       , 0x0000000041168000
.equ __section_code_user_84             , 0x0000000041754000
.equ code_user_85                       , 0x0000000041169000
.equ __section_code_user_85             , 0x0000000041755000
.equ code_user_86                       , 0x000000004116a000
.equ __section_code_user_86             , 0x0000000041756000
.equ code_user_87                       , 0x000000004116b000
.equ __section_code_user_87             , 0x0000000041757000
.equ code_user_88                       , 0x000000004116c000
.equ __section_code_user_88             , 0x0000000041758000
.equ code_user_89                       , 0x000000004116d000
.equ __section_code_user_89             , 0x0000000041759000
.equ code_user_90                       , 0x000000004116e000
.equ __section_code_user_90             , 0x000000004175a000
.equ code_user_91                       , 0x000000004116f000
.equ __section_code_user_91             , 0x000000004175b000
.equ code_user_92                       , 0x0000000041170000
.equ __section_code_user_92             , 0x000000004175c000
.equ code_user_93                       , 0x0000000041171000
.equ __section_code_user_93             , 0x000000004175d000
.equ code_user_94                       , 0x0000000041172000
.equ __section_code_user_94             , 0x000000004175e000
.equ code_user_95                       , 0x0000000041173000
.equ __section_code_user_95             , 0x000000004175f000
.equ code_user_96                       , 0x0000000041174000
.equ __section_code_user_96             , 0x0000000041760000
.equ code_user_97                       , 0x0000000041175000
.equ __section_code_user_97             , 0x0000000041761000
.equ code_user_98                       , 0x0000000041176000
.equ __section_code_user_98             , 0x0000000041762000
.equ code_user_99                       , 0x0000000041177000
.equ __section_code_user_99             , 0x0000000041763000
.equ code_user_100                      , 0x0000000041178000
.equ __section_code_user_100            , 0x0000000041764000
.equ code_user_101                      , 0x0000000041179000
.equ __section_code_user_101            , 0x0000000041765000
.equ code_user_102                      , 0x000000004117a000
.equ __section_code_user_102            , 0x0000000041766000
.equ code_user_103                      , 0x000000004117b000
.equ __section_code_user_103            , 0x0000000041767000
.equ code_user_104                      , 0x000000004117c000
.equ __section_code_user_104            , 0x0000000041768000
.equ code_user_105                      , 0x000000004117d000
.equ __section_code_user_105            , 0x0000000041769000
.equ code_user_106                      , 0x000000004117e000
.equ __section_code_user_106            , 0x000000004176a000
.equ code_user_107                      , 0x000000004117f000
.equ __section_code_user_107            , 0x000000004176b000
.equ code_user_108                      , 0x0000000041180000
.equ __section_code_user_108            , 0x000000004176c000
.equ code_user_109                      , 0x0000000041181000
.equ __section_code_user_109            , 0x000000004176d000
.equ code_user_110                      , 0x0000000041182000
.equ __section_code_user_110            , 0x000000004176e000
.equ code_user_111                      , 0x0000000041183000
.equ __section_code_user_111            , 0x000000004176f000
.equ code_user_112                      , 0x0000000041184000
.equ __section_code_user_112            , 0x0000000041770000
.equ code_user_113                      , 0x0000000041185000
.equ __section_code_user_113            , 0x0000000041771000
.equ code_user_114                      , 0x0000000041186000
.equ __section_code_user_114            , 0x0000000041772000
.equ code_user_115                      , 0x0000000041187000
.equ __section_code_user_115            , 0x0000000041773000
.equ code_user_116                      , 0x0000000041188000
.equ __section_code_user_116            , 0x0000000041774000
.equ code_user_117                      , 0x0000000041189000
.equ __section_code_user_117            , 0x0000000041775000
.equ code_user_118                      , 0x000000004118a000
.equ __section_code_user_118            , 0x0000000041776000
.equ code_user_119                      , 0x000000004118b000
.equ __section_code_user_119            , 0x0000000041777000
.equ code_user_120                      , 0x000000004118c000
.equ __section_code_user_120            , 0x0000000041778000
.equ code_user_121                      , 0x000000004118d000
.equ __section_code_user_121            , 0x0000000041779000
.equ code_user_122                      , 0x000000004118e000
.equ __section_code_user_122            , 0x000000004177a000
.equ code_user_123                      , 0x000000004118f000
.equ __section_code_user_123            , 0x000000004177b000
.equ code_user_124                      , 0x0000000041190000
.equ __section_code_user_124            , 0x000000004177c000
.equ code_user_125                      , 0x0000000041191000
.equ __section_code_user_125            , 0x000000004177d000
.equ code_user_126                      , 0x0000000041192000
.equ __section_code_user_126            , 0x000000004177e000
.equ code_user_127                      , 0x0000000041193000
.equ __section_code_user_127            , 0x000000004177f000
.equ code_machine_0                     , 0x0000000041194000
.equ __section_code_machine_0           , 0x0000000041780000
.equ code_machine_1                     , 0x0000000041195000
.equ __section_code_machine_1           , 0x0000000041781000
.equ code_machine_2                     , 0x0000000041196000
.equ __section_code_machine_2           , 0x0000000041782000
.equ code_machine_3                     , 0x0000000041197000
.equ __section_code_machine_3           , 0x0000000041783000
.equ code_machine_4                     , 0x0000000041198000
.equ __section_code_machine_4           , 0x0000000041784000
.equ code_machine_5                     , 0x0000000041199000
.equ __section_code_machine_5           , 0x0000000041785000
.equ code_machine_6                     , 0x000000004119a000
.equ __section_code_machine_6           , 0x0000000041786000
.equ code_machine_7                     , 0x000000004119b000
.equ __section_code_machine_7           , 0x0000000041787000
.equ code_machine_8                     , 0x000000004119c000
.equ __section_code_machine_8           , 0x0000000041788000
.equ code_machine_9                     , 0x000000004119d000
.equ __section_code_machine_9           , 0x0000000041789000
.equ code_machine_10                    , 0x000000004119e000
.equ __section_code_machine_10          , 0x000000004178a000
.equ code_machine_11                    , 0x000000004119f000
.equ __section_code_machine_11          , 0x000000004178b000
.equ code_machine_12                    , 0x00000000411a0000
.equ __section_code_machine_12          , 0x000000004178c000
.equ code_machine_13                    , 0x00000000411a1000
.equ __section_code_machine_13          , 0x000000004178d000
.equ code_machine_14                    , 0x00000000411a2000
.equ __section_code_machine_14          , 0x000000004178e000
.equ code_machine_15                    , 0x00000000411a3000
.equ __section_code_machine_15          , 0x000000004178f000
.equ code_machine_16                    , 0x00000000411a4000
.equ __section_code_machine_16          , 0x0000000041790000
.equ code_machine_17                    , 0x00000000411a5000
.equ __section_code_machine_17          , 0x0000000041791000
.equ code_machine_18                    , 0x00000000411a6000
.equ __section_code_machine_18          , 0x0000000041792000
.equ code_machine_19                    , 0x00000000411a7000
.equ __section_code_machine_19          , 0x0000000041793000
.equ code_machine_20                    , 0x00000000411a8000
.equ __section_code_machine_20          , 0x0000000041794000
.equ code_machine_21                    , 0x00000000411a9000
.equ __section_code_machine_21          , 0x0000000041795000
.equ code_machine_22                    , 0x00000000411aa000
.equ __section_code_machine_22          , 0x0000000041796000
.equ code_machine_23                    , 0x00000000411ab000
.equ __section_code_machine_23          , 0x0000000041797000
.equ code_machine_24                    , 0x00000000411ac000
.equ __section_code_machine_24          , 0x0000000041798000
.equ code_machine_25                    , 0x00000000411ad000
.equ __section_code_machine_25          , 0x0000000041799000
.equ code_machine_26                    , 0x00000000411ae000
.equ __section_code_machine_26          , 0x000000004179a000
.equ code_machine_27                    , 0x00000000411af000
.equ __section_code_machine_27          , 0x000000004179b000
.equ code_machine_28                    , 0x00000000411b0000
.equ __section_code_machine_28          , 0x000000004179c000
.equ code_machine_29                    , 0x00000000411b1000
.equ __section_code_machine_29          , 0x000000004179d000
.equ code_machine_30                    , 0x00000000411b2000
.equ __section_code_machine_30          , 0x000000004179e000
.equ code_machine_31                    , 0x00000000411b3000
.equ __section_code_machine_31          , 0x000000004179f000
.equ code_machine_32                    , 0x00000000411b4000
.equ __section_code_machine_32          , 0x00000000417a0000
.equ code_machine_33                    , 0x00000000411b5000
.equ __section_code_machine_33          , 0x00000000417a1000
.equ code_machine_34                    , 0x00000000411b6000
.equ __section_code_machine_34          , 0x00000000417a2000
.equ code_machine_35                    , 0x00000000411b7000
.equ __section_code_machine_35          , 0x00000000417a3000
.equ code_machine_36                    , 0x00000000411b8000
.equ __section_code_machine_36          , 0x00000000417a4000
.equ code_machine_37                    , 0x00000000411b9000
.equ __section_code_machine_37          , 0x00000000417a5000
.equ code_machine_38                    , 0x00000000411ba000
.equ __section_code_machine_38          , 0x00000000417a6000
.equ code_machine_39                    , 0x00000000411bb000
.equ __section_code_machine_39          , 0x00000000417a7000
.equ code_machine_40                    , 0x00000000411bc000
.equ __section_code_machine_40          , 0x00000000417a8000
.equ code_machine_41                    , 0x00000000411bd000
.equ __section_code_machine_41          , 0x00000000417a9000
.equ code_machine_42                    , 0x00000000411be000
.equ __section_code_machine_42          , 0x00000000417aa000
.equ code_machine_43                    , 0x00000000411bf000
.equ __section_code_machine_43          , 0x00000000417ab000
.equ code_machine_44                    , 0x00000000411c0000
.equ __section_code_machine_44          , 0x00000000417ac000
.equ code_machine_45                    , 0x00000000411c1000
.equ __section_code_machine_45          , 0x00000000417ad000
.equ code_machine_46                    , 0x00000000411c2000
.equ __section_code_machine_46          , 0x00000000417ae000
.equ code_machine_47                    , 0x00000000411c3000
.equ __section_code_machine_47          , 0x00000000417af000
.equ code_machine_48                    , 0x00000000411c4000
.equ __section_code_machine_48          , 0x00000000417b0000
.equ code_machine_49                    , 0x00000000411c5000
.equ __section_code_machine_49          , 0x00000000417b1000
.equ code_machine_50                    , 0x00000000411c6000
.equ __section_code_machine_50          , 0x00000000417b2000
.equ code_machine_51                    , 0x00000000411c7000
.equ __section_code_machine_51          , 0x00000000417b3000
.equ code_machine_52                    , 0x00000000411c8000
.equ __section_code_machine_52          , 0x00000000417b4000
.equ code_machine_53                    , 0x00000000411c9000
.equ __section_code_machine_53          , 0x00000000417b5000
.equ code_machine_54                    , 0x00000000411ca000
.equ __section_code_machine_54          , 0x00000000417b6000
.equ code_machine_55                    , 0x00000000411cb000
.equ __section_code_machine_55          , 0x00000000417b7000
.equ code_machine_56                    , 0x00000000411cc000
.equ __section_code_machine_56          , 0x00000000417b8000
.equ code_machine_57                    , 0x00000000411cd000
.equ __section_code_machine_57          , 0x00000000417b9000
.equ code_machine_58                    , 0x00000000411ce000
.equ __section_code_machine_58          , 0x00000000417ba000
.equ code_machine_59                    , 0x00000000411cf000
.equ __section_code_machine_59          , 0x00000000417bb000
.equ code_machine_60                    , 0x00000000411d0000
.equ __section_code_machine_60          , 0x00000000417bc000
.equ code_machine_61                    , 0x00000000411d1000
.equ __section_code_machine_61          , 0x00000000417bd000
.equ code_machine_62                    , 0x00000000411d2000
.equ __section_code_machine_62          , 0x00000000417be000
.equ code_machine_63                    , 0x00000000411d3000
.equ __section_code_machine_63          , 0x00000000417bf000
.equ code_machine_64                    , 0x00000000411d4000
.equ __section_code_machine_64          , 0x00000000417c0000
.equ code_machine_65                    , 0x00000000411d5000
.equ __section_code_machine_65          , 0x00000000417c1000
.equ code_machine_66                    , 0x00000000411d6000
.equ __section_code_machine_66          , 0x00000000417c2000
.equ code_machine_67                    , 0x00000000411d7000
.equ __section_code_machine_67          , 0x00000000417c3000
.equ code_machine_68                    , 0x00000000411d8000
.equ __section_code_machine_68          , 0x00000000417c4000
.equ code_machine_69                    , 0x00000000411d9000
.equ __section_code_machine_69          , 0x00000000417c5000
.equ code_machine_70                    , 0x00000000411da000
.equ __section_code_machine_70          , 0x00000000417c6000
.equ code_machine_71                    , 0x00000000411db000
.equ __section_code_machine_71          , 0x00000000417c7000
.equ code_machine_72                    , 0x00000000411dc000
.equ __section_code_machine_72          , 0x00000000417c8000
.equ code_machine_73                    , 0x00000000411dd000
.equ __section_code_machine_73          , 0x00000000417c9000
.equ code_machine_74                    , 0x00000000411de000
.equ __section_code_machine_74          , 0x00000000417ca000
.equ code_machine_75                    , 0x00000000411df000
.equ __section_code_machine_75          , 0x00000000417cb000
.equ code_machine_76                    , 0x00000000411e0000
.equ __section_code_machine_76          , 0x00000000417cc000
.equ code_machine_77                    , 0x00000000411e1000
.equ __section_code_machine_77          , 0x00000000417cd000
.equ code_machine_78                    , 0x00000000411e2000
.equ __section_code_machine_78          , 0x00000000417ce000
.equ code_machine_79                    , 0x00000000411e3000
.equ __section_code_machine_79          , 0x00000000417cf000
.equ code_machine_80                    , 0x00000000411e4000
.equ __section_code_machine_80          , 0x00000000417d0000
.equ code_machine_81                    , 0x00000000411e5000
.equ __section_code_machine_81          , 0x00000000417d1000
.equ code_machine_82                    , 0x00000000411e6000
.equ __section_code_machine_82          , 0x00000000417d2000
.equ code_machine_83                    , 0x00000000411e7000
.equ __section_code_machine_83          , 0x00000000417d3000
.equ code_machine_84                    , 0x00000000411e8000
.equ __section_code_machine_84          , 0x00000000417d4000
.equ code_machine_85                    , 0x00000000411e9000
.equ __section_code_machine_85          , 0x00000000417d5000
.equ code_machine_86                    , 0x00000000411ea000
.equ __section_code_machine_86          , 0x00000000417d6000
.equ code_machine_87                    , 0x00000000411eb000
.equ __section_code_machine_87          , 0x00000000417d7000
.equ code_machine_88                    , 0x00000000411ec000
.equ __section_code_machine_88          , 0x00000000417d8000
.equ code_machine_89                    , 0x00000000411ed000
.equ __section_code_machine_89          , 0x00000000417d9000
.equ code_machine_90                    , 0x00000000411ee000
.equ __section_code_machine_90          , 0x00000000417da000
.equ code_machine_91                    , 0x00000000411ef000
.equ __section_code_machine_91          , 0x00000000417db000
.equ code_machine_92                    , 0x00000000411f0000
.equ __section_code_machine_92          , 0x00000000417dc000
.equ code_machine_93                    , 0x00000000411f1000
.equ __section_code_machine_93          , 0x00000000417dd000
.equ code_machine_94                    , 0x00000000411f2000
.equ __section_code_machine_94          , 0x00000000417de000
.equ code_machine_95                    , 0x00000000411f3000
.equ __section_code_machine_95          , 0x00000000417df000
.equ code_machine_96                    , 0x00000000411f4000
.equ __section_code_machine_96          , 0x00000000417e0000
.equ code_machine_97                    , 0x00000000411f5000
.equ __section_code_machine_97          , 0x00000000417e1000
.equ code_machine_98                    , 0x00000000411f6000
.equ __section_code_machine_98          , 0x00000000417e2000
.equ code_machine_99                    , 0x00000000411f7000
.equ __section_code_machine_99          , 0x00000000417e3000
.equ code_machine_100                   , 0x00000000411f8000
.equ __section_code_machine_100         , 0x00000000417e4000
.equ code_machine_101                   , 0x00000000411f9000
.equ __section_code_machine_101         , 0x00000000417e5000
.equ code_machine_102                   , 0x00000000411fa000
.equ __section_code_machine_102         , 0x00000000417e6000
.equ code_machine_103                   , 0x00000000411fb000
.equ __section_code_machine_103         , 0x00000000417e7000
.equ code_machine_104                   , 0x00000000411fc000
.equ __section_code_machine_104         , 0x00000000417e8000
.equ code_machine_105                   , 0x00000000411fd000
.equ __section_code_machine_105         , 0x00000000417e9000
.equ code_machine_106                   , 0x00000000411fe000
.equ __section_code_machine_106         , 0x00000000417ea000
.equ code_machine_107                   , 0x00000000411ff000
.equ __section_code_machine_107         , 0x00000000417eb000
.equ code_machine_108                   , 0x0000000041200000
.equ __section_code_machine_108         , 0x00000000417ec000
.equ code_machine_109                   , 0x0000000041201000
.equ __section_code_machine_109         , 0x00000000417ed000
.equ code_machine_110                   , 0x0000000041202000
.equ __section_code_machine_110         , 0x00000000417ee000
.equ code_machine_111                   , 0x0000000041203000
.equ __section_code_machine_111         , 0x00000000417ef000
.equ code_machine_112                   , 0x0000000041204000
.equ __section_code_machine_112         , 0x00000000417f0000
.equ code_machine_113                   , 0x0000000041205000
.equ __section_code_machine_113         , 0x00000000417f1000
.equ code_machine_114                   , 0x0000000041206000
.equ __section_code_machine_114         , 0x00000000417f2000
.equ code_machine_115                   , 0x0000000041207000
.equ __section_code_machine_115         , 0x00000000417f3000
.equ code_machine_116                   , 0x0000000041208000
.equ __section_code_machine_116         , 0x00000000417f4000
.equ code_machine_117                   , 0x0000000041209000
.equ __section_code_machine_117         , 0x00000000417f5000
.equ code_machine_118                   , 0x000000004120a000
.equ __section_code_machine_118         , 0x00000000417f6000
.equ code_machine_119                   , 0x000000004120b000
.equ __section_code_machine_119         , 0x00000000417f7000
.equ code_machine_120                   , 0x000000004120c000
.equ __section_code_machine_120         , 0x00000000417f8000
.equ code_machine_121                   , 0x000000004120d000
.equ __section_code_machine_121         , 0x00000000417f9000
.equ code_machine_122                   , 0x000000004120e000
.equ __section_code_machine_122         , 0x00000000417fa000
.equ code_machine_123                   , 0x000000004120f000
.equ __section_code_machine_123         , 0x00000000417fb000
.equ code_machine_124                   , 0x0000000041210000
.equ __section_code_machine_124         , 0x00000000417fc000
.equ code_machine_125                   , 0x0000000041211000
.equ __section_code_machine_125         , 0x00000000417fd000
.equ code_machine_126                   , 0x0000000041212000
.equ __section_code_machine_126         , 0x00000000417fe000
.equ code_machine_127                   , 0x0000000041213000
.equ __section_code_machine_127         , 0x00000000417ff000
.equ csr_machine_0                      , 0x0000000041214000
.equ __section_csr_machine_0            , 0x0000000041800000
.equ csr_super_0                        , 0x0000000041215000
.equ __section_csr_super_0              , 0x0000000041801000
.equ data                               , 0x000000ef5c7e0000
.equ __section_data                     , 0x000000004155c000
.equ __section_data_1                   , 0x000000ef5c7e1000
.equ __section_data_1_phys              , 0x000000004155d000
.equ os_data                            , 0xffffa2eedc3a4000
.equ __section_os_data                  , 0x00000000415aa000
.equ __section_os_data_1                , 0xffffa2eedc3a5000
.equ __section_os_data_1_phys           , 0x00000000415ab000
.equ hart_context                       , 0x00003799335d2000
.equ __section_hart_context             , 0x0000000041581000
.equ hart_stack_0                       , 0x000000000b37e000
.equ __section_hart_stack_0             , 0x0000000041251000
.equ io_htif                            , 0x0000000041040000
.equ io_htif_phys                       , 0x0000000041040000
.equ map_os_sptbr                       , 0x000000004157c000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage                     , 0x0000739d7d2fa000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage_phys                , 0x0000000041580000
# ;#page_mapping(lin_name=SID_EXCEP_01_EQZ_RS1_NZ_stack, phys_name=SID_EXCEP_01_EQZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_EQZ_RS1_NZ_stack      , 0x00000000000fb000
# ;#page_mapping(lin_name=SID_EXCEP_01_EQZ_RS1_NZ_stack, phys_name=SID_EXCEP_01_EQZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_EQZ_RS1_NZ_stack_phys , 0x00000000415a6000
# ;#page_mapping(lin_name=SID_EXCEP_01_EQZ_RS1_Z_stack, phys_name=SID_EXCEP_01_EQZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_EQZ_RS1_Z_stack       , 0x000000233adae000
# ;#page_mapping(lin_name=SID_EXCEP_01_EQZ_RS1_Z_stack, phys_name=SID_EXCEP_01_EQZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_EQZ_RS1_Z_stack_phys  , 0x0000000041599000
# ;#page_mapping(lin_name=SID_EXCEP_01_NEZ_RS1_NZ_stack, phys_name=SID_EXCEP_01_NEZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_NEZ_RS1_NZ_stack      , 0x0000000001654000
# ;#page_mapping(lin_name=SID_EXCEP_01_NEZ_RS1_NZ_stack, phys_name=SID_EXCEP_01_NEZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_NEZ_RS1_NZ_stack_phys , 0x000000004123b000
# ;#page_mapping(lin_name=SID_EXCEP_01_NEZ_RS1_Z_stack, phys_name=SID_EXCEP_01_NEZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_NEZ_RS1_Z_stack       , 0x00000000374d7000
# ;#page_mapping(lin_name=SID_EXCEP_01_NEZ_RS1_Z_stack, phys_name=SID_EXCEP_01_NEZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_01_NEZ_RS1_Z_stack_phys  , 0x000000004124e000
# ;#page_mapping(lin_name=SID_EXCEP_02_EQZ_RS1_NZ_stack, phys_name=SID_EXCEP_02_EQZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_EQZ_RS1_NZ_stack      , 0x0000000000005000
# ;#page_mapping(lin_name=SID_EXCEP_02_EQZ_RS1_NZ_stack, phys_name=SID_EXCEP_02_EQZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_EQZ_RS1_NZ_stack_phys , 0x0000000041248000
# ;#page_mapping(lin_name=SID_EXCEP_02_EQZ_RS1_Z_stack, phys_name=SID_EXCEP_02_EQZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_EQZ_RS1_Z_stack       , 0x0000000000009000
# ;#page_mapping(lin_name=SID_EXCEP_02_EQZ_RS1_Z_stack, phys_name=SID_EXCEP_02_EQZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_EQZ_RS1_Z_stack_phys  , 0x0000000041587000
# ;#page_mapping(lin_name=SID_EXCEP_02_NEZ_RS1_Z_stack, phys_name=SID_EXCEP_02_NEZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_NEZ_RS1_Z_stack       , 0x0000000000188000
# ;#page_mapping(lin_name=SID_EXCEP_02_NEZ_RS1_Z_stack, phys_name=SID_EXCEP_02_NEZ_RS1_Z_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_NEZ_RS1_Z_stack_phys  , 0x0000000041582000
# ;#page_mapping(lin_name=SID_EXCEP_02_NEZ_RS1_NZ_stack, phys_name=SID_EXCEP_02_NEZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_NEZ_RS1_NZ_stack      , 0x00000000001b9000
# ;#page_mapping(lin_name=SID_EXCEP_02_NEZ_RS1_NZ_stack, phys_name=SID_EXCEP_02_NEZ_RS1_NZ_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_02_NEZ_RS1_NZ_stack_phys , 0x0000000044404000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_ADD_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_ADD_stack , 0x0000000000d81000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_ADD_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_ADD_stack_phys, 0x000000004124c000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_ADD_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_ADD_stack , 0x000000233adac000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_ADD_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_ADD_stack_phys, 0x000000004317e000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_SUB_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_SUB_stack , 0x0000000230c21000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_SUB_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_SUB_stack_phys, 0x00000000412d5000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_SUB_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_SUB_stack , 0x0000000039f10000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_SUB_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_SUB_stack_phys, 0x0000000041583000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_SUB_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_SUB_stack , 0x00000511815ad000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_SUB_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_SUB_stack_phys, 0x000000004123d000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_SUB_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_SUB_stack , 0x000000050b456000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_SUB_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_SUB_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_SUB_stack_phys, 0x0000000041261000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_ADD_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_ADD_stack , 0x000000000039f000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_ADD_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_ADD_stack_phys, 0x000000004124f000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_ADD_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_ADD_stack , 0x000000000607a000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_ADD_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_ADD_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_ADD_stack_phys, 0x0000000041249000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_AND_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_AND_stack , 0x000000001cc52000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_AND_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_AND_stack_phys, 0x0000000044728000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_AND_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_AND_stack , 0x00000171b5ff4000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_AND_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_AND_stack_phys, 0x0000000044975000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_XOR_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_XOR_stack , 0x000000000001d000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_XOR_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_PASSING_XOR_stack_phys, 0x00000000415e5000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_XOR_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_XOR_stack , 0x000000003e6e6000
# ;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_XOR_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_EQZ_FAILING_XOR_stack_phys, 0x000000004123e000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_AND_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_AND_stack , 0x00000000ae0ba000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_AND_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_AND_stack_phys, 0x00000000419a6000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_AND_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_AND_stack , 0x0000000000e68000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_AND_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_AND_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_AND_stack_phys, 0x000000004122a000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_XOR_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_XOR_stack , 0x0000010737737000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_XOR_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_PASSING_XOR_stack_phys, 0x0000000041250000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_XOR_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_XOR_stack , 0x000000084c5dd000
# ;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_XOR_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_XOR_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_NEZ_FAILING_XOR_stack_phys, 0x0000000041802000
# ;#page_mapping(lin_name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack, phys_name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_2_1_MUX_SELECT_0_stack, 0x0000000001a90000
# ;#page_mapping(lin_name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack, phys_name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_2_1_MUX_SELECT_0_stack_phys, 0x0000000041253000
# ;#page_mapping(lin_name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack, phys_name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_2_1_MUX_SELECT_1_stack, 0x000000000002f000
# ;#page_mapping(lin_name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack, phys_name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_EXCEP_04_2_1_MUX_SELECT_1_stack_phys, 0x000000004156c000

# PMA regions:
# Total PMA regions: 3
# PMA region 0: pma_region_0
.equ pma_region_0_base                  , 0x0000000041000000
.equ pma_region_0_size                  , 0x0000000000040000
.equ pma_region_0_end                   , 0x0000000041040000
#   type=memory, cacheability=noncacheable, combining=noncombining, rwx=rwx, amo_type=arithmetic, routing=coherent
# PMA region 1: pma_region_1
.equ pma_region_1_base                  , 0x0000000041040000
.equ pma_region_1_size                  , 0x0000000000001000
.equ pma_region_1_end                   , 0x0000000041041000
#   type=io, cacheability=cacheable, combining=noncombining, rwx=rwx, amo_type=arithmetic, routing=coherent
# PMA region 2: pma_region_2
.equ pma_region_2_base                  , 0x0000000041041000
.equ pma_region_2_size                  , 0x0000000004000000
.equ pma_region_2_end                   , 0x0000000045041000
#   type=memory, cacheability=noncacheable, combining=noncombining, rwx=rwx, amo_type=arithmetic, routing=coherent

# Physical address equates for sections:
.equ runtime_pa                         , 0x0000000041000000
.equ runtime_s_pa                       , 0x0000000041010000
.equ runtime_s_1_pa                     , 0x0000000041011000
.equ runtime_s_2_pa                     , 0x0000000041012000
.equ runtime_s_3_pa                     , 0x0000000041013000
.equ code_pa                            , 0x0000000041600000
.equ code_super_0_pa                    , 0x0000000041680000
.equ code_super_1_pa                    , 0x0000000041681000
.equ code_super_2_pa                    , 0x0000000041682000
.equ code_super_3_pa                    , 0x0000000041683000
.equ code_super_4_pa                    , 0x0000000041684000
.equ code_super_5_pa                    , 0x0000000041685000
.equ code_super_6_pa                    , 0x0000000041686000
.equ code_super_7_pa                    , 0x0000000041687000
.equ code_super_8_pa                    , 0x0000000041688000
.equ code_super_9_pa                    , 0x0000000041689000
.equ code_super_10_pa                   , 0x000000004168a000
.equ code_super_11_pa                   , 0x000000004168b000
.equ code_super_12_pa                   , 0x000000004168c000
.equ code_super_13_pa                   , 0x000000004168d000
.equ code_super_14_pa                   , 0x000000004168e000
.equ code_super_15_pa                   , 0x000000004168f000
.equ code_super_16_pa                   , 0x0000000041690000
.equ code_super_17_pa                   , 0x0000000041691000
.equ code_super_18_pa                   , 0x0000000041692000
.equ code_super_19_pa                   , 0x0000000041693000
.equ code_super_20_pa                   , 0x0000000041694000
.equ code_super_21_pa                   , 0x0000000041695000
.equ code_super_22_pa                   , 0x0000000041696000
.equ code_super_23_pa                   , 0x0000000041697000
.equ code_super_24_pa                   , 0x0000000041698000
.equ code_super_25_pa                   , 0x0000000041699000
.equ code_super_26_pa                   , 0x000000004169a000
.equ code_super_27_pa                   , 0x000000004169b000
.equ code_super_28_pa                   , 0x000000004169c000
.equ code_super_29_pa                   , 0x000000004169d000
.equ code_super_30_pa                   , 0x000000004169e000
.equ code_super_31_pa                   , 0x000000004169f000
.equ code_super_32_pa                   , 0x00000000416a0000
.equ code_super_33_pa                   , 0x00000000416a1000
.equ code_super_34_pa                   , 0x00000000416a2000
.equ code_super_35_pa                   , 0x00000000416a3000
.equ code_super_36_pa                   , 0x00000000416a4000
.equ code_super_37_pa                   , 0x00000000416a5000
.equ code_super_38_pa                   , 0x00000000416a6000
.equ code_super_39_pa                   , 0x00000000416a7000
.equ code_super_40_pa                   , 0x00000000416a8000
.equ code_super_41_pa                   , 0x00000000416a9000
.equ code_super_42_pa                   , 0x00000000416aa000
.equ code_super_43_pa                   , 0x00000000416ab000
.equ code_super_44_pa                   , 0x00000000416ac000
.equ code_super_45_pa                   , 0x00000000416ad000
.equ code_super_46_pa                   , 0x00000000416ae000
.equ code_super_47_pa                   , 0x00000000416af000
.equ code_super_48_pa                   , 0x00000000416b0000
.equ code_super_49_pa                   , 0x00000000416b1000
.equ code_super_50_pa                   , 0x00000000416b2000
.equ code_super_51_pa                   , 0x00000000416b3000
.equ code_super_52_pa                   , 0x00000000416b4000
.equ code_super_53_pa                   , 0x00000000416b5000
.equ code_super_54_pa                   , 0x00000000416b6000
.equ code_super_55_pa                   , 0x00000000416b7000
.equ code_super_56_pa                   , 0x00000000416b8000
.equ code_super_57_pa                   , 0x00000000416b9000
.equ code_super_58_pa                   , 0x00000000416ba000
.equ code_super_59_pa                   , 0x00000000416bb000
.equ code_super_60_pa                   , 0x00000000416bc000
.equ code_super_61_pa                   , 0x00000000416bd000
.equ code_super_62_pa                   , 0x00000000416be000
.equ code_super_63_pa                   , 0x00000000416bf000
.equ code_super_64_pa                   , 0x00000000416c0000
.equ code_super_65_pa                   , 0x00000000416c1000
.equ code_super_66_pa                   , 0x00000000416c2000
.equ code_super_67_pa                   , 0x00000000416c3000
.equ code_super_68_pa                   , 0x00000000416c4000
.equ code_super_69_pa                   , 0x00000000416c5000
.equ code_super_70_pa                   , 0x00000000416c6000
.equ code_super_71_pa                   , 0x00000000416c7000
.equ code_super_72_pa                   , 0x00000000416c8000
.equ code_super_73_pa                   , 0x00000000416c9000
.equ code_super_74_pa                   , 0x00000000416ca000
.equ code_super_75_pa                   , 0x00000000416cb000
.equ code_super_76_pa                   , 0x00000000416cc000
.equ code_super_77_pa                   , 0x00000000416cd000
.equ code_super_78_pa                   , 0x00000000416ce000
.equ code_super_79_pa                   , 0x00000000416cf000
.equ code_super_80_pa                   , 0x00000000416d0000
.equ code_super_81_pa                   , 0x00000000416d1000
.equ code_super_82_pa                   , 0x00000000416d2000
.equ code_super_83_pa                   , 0x00000000416d3000
.equ code_super_84_pa                   , 0x00000000416d4000
.equ code_super_85_pa                   , 0x00000000416d5000
.equ code_super_86_pa                   , 0x00000000416d6000
.equ code_super_87_pa                   , 0x00000000416d7000
.equ code_super_88_pa                   , 0x00000000416d8000
.equ code_super_89_pa                   , 0x00000000416d9000
.equ code_super_90_pa                   , 0x00000000416da000
.equ code_super_91_pa                   , 0x00000000416db000
.equ code_super_92_pa                   , 0x00000000416dc000
.equ code_super_93_pa                   , 0x00000000416dd000
.equ code_super_94_pa                   , 0x00000000416de000
.equ code_super_95_pa                   , 0x00000000416df000
.equ code_super_96_pa                   , 0x00000000416e0000
.equ code_super_97_pa                   , 0x00000000416e1000
.equ code_super_98_pa                   , 0x00000000416e2000
.equ code_super_99_pa                   , 0x00000000416e3000
.equ code_super_100_pa                  , 0x00000000416e4000
.equ code_super_101_pa                  , 0x00000000416e5000
.equ code_super_102_pa                  , 0x00000000416e6000
.equ code_super_103_pa                  , 0x00000000416e7000
.equ code_super_104_pa                  , 0x00000000416e8000
.equ code_super_105_pa                  , 0x00000000416e9000
.equ code_super_106_pa                  , 0x00000000416ea000
.equ code_super_107_pa                  , 0x00000000416eb000
.equ code_super_108_pa                  , 0x00000000416ec000
.equ code_super_109_pa                  , 0x00000000416ed000
.equ code_super_110_pa                  , 0x00000000416ee000
.equ code_super_111_pa                  , 0x00000000416ef000
.equ code_super_112_pa                  , 0x00000000416f0000
.equ code_super_113_pa                  , 0x00000000416f1000
.equ code_super_114_pa                  , 0x00000000416f2000
.equ code_super_115_pa                  , 0x00000000416f3000
.equ code_super_116_pa                  , 0x00000000416f4000
.equ code_super_117_pa                  , 0x00000000416f5000
.equ code_super_118_pa                  , 0x00000000416f6000
.equ code_super_119_pa                  , 0x00000000416f7000
.equ code_super_120_pa                  , 0x00000000416f8000
.equ code_super_121_pa                  , 0x00000000416f9000
.equ code_super_122_pa                  , 0x00000000416fa000
.equ code_super_123_pa                  , 0x00000000416fb000
.equ code_super_124_pa                  , 0x00000000416fc000
.equ code_super_125_pa                  , 0x00000000416fd000
.equ code_super_126_pa                  , 0x00000000416fe000
.equ code_super_127_pa                  , 0x00000000416ff000
.equ code_user_0_pa                     , 0x0000000041700000
.equ code_user_1_pa                     , 0x0000000041701000
.equ code_user_2_pa                     , 0x0000000041702000
.equ code_user_3_pa                     , 0x0000000041703000
.equ code_user_4_pa                     , 0x0000000041704000
.equ code_user_5_pa                     , 0x0000000041705000
.equ code_user_6_pa                     , 0x0000000041706000
.equ code_user_7_pa                     , 0x0000000041707000
.equ code_user_8_pa                     , 0x0000000041708000
.equ code_user_9_pa                     , 0x0000000041709000
.equ code_user_10_pa                    , 0x000000004170a000
.equ code_user_11_pa                    , 0x000000004170b000
.equ code_user_12_pa                    , 0x000000004170c000
.equ code_user_13_pa                    , 0x000000004170d000
.equ code_user_14_pa                    , 0x000000004170e000
.equ code_user_15_pa                    , 0x000000004170f000
.equ code_user_16_pa                    , 0x0000000041710000
.equ code_user_17_pa                    , 0x0000000041711000
.equ code_user_18_pa                    , 0x0000000041712000
.equ code_user_19_pa                    , 0x0000000041713000
.equ code_user_20_pa                    , 0x0000000041714000
.equ code_user_21_pa                    , 0x0000000041715000
.equ code_user_22_pa                    , 0x0000000041716000
.equ code_user_23_pa                    , 0x0000000041717000
.equ code_user_24_pa                    , 0x0000000041718000
.equ code_user_25_pa                    , 0x0000000041719000
.equ code_user_26_pa                    , 0x000000004171a000
.equ code_user_27_pa                    , 0x000000004171b000
.equ code_user_28_pa                    , 0x000000004171c000
.equ code_user_29_pa                    , 0x000000004171d000
.equ code_user_30_pa                    , 0x000000004171e000
.equ code_user_31_pa                    , 0x000000004171f000
.equ code_user_32_pa                    , 0x0000000041720000
.equ code_user_33_pa                    , 0x0000000041721000
.equ code_user_34_pa                    , 0x0000000041722000
.equ code_user_35_pa                    , 0x0000000041723000
.equ code_user_36_pa                    , 0x0000000041724000
.equ code_user_37_pa                    , 0x0000000041725000
.equ code_user_38_pa                    , 0x0000000041726000
.equ code_user_39_pa                    , 0x0000000041727000
.equ code_user_40_pa                    , 0x0000000041728000
.equ code_user_41_pa                    , 0x0000000041729000
.equ code_user_42_pa                    , 0x000000004172a000
.equ code_user_43_pa                    , 0x000000004172b000
.equ code_user_44_pa                    , 0x000000004172c000
.equ code_user_45_pa                    , 0x000000004172d000
.equ code_user_46_pa                    , 0x000000004172e000
.equ code_user_47_pa                    , 0x000000004172f000
.equ code_user_48_pa                    , 0x0000000041730000
.equ code_user_49_pa                    , 0x0000000041731000
.equ code_user_50_pa                    , 0x0000000041732000
.equ code_user_51_pa                    , 0x0000000041733000
.equ code_user_52_pa                    , 0x0000000041734000
.equ code_user_53_pa                    , 0x0000000041735000
.equ code_user_54_pa                    , 0x0000000041736000
.equ code_user_55_pa                    , 0x0000000041737000
.equ code_user_56_pa                    , 0x0000000041738000
.equ code_user_57_pa                    , 0x0000000041739000
.equ code_user_58_pa                    , 0x000000004173a000
.equ code_user_59_pa                    , 0x000000004173b000
.equ code_user_60_pa                    , 0x000000004173c000
.equ code_user_61_pa                    , 0x000000004173d000
.equ code_user_62_pa                    , 0x000000004173e000
.equ code_user_63_pa                    , 0x000000004173f000
.equ code_user_64_pa                    , 0x0000000041740000
.equ code_user_65_pa                    , 0x0000000041741000
.equ code_user_66_pa                    , 0x0000000041742000
.equ code_user_67_pa                    , 0x0000000041743000
.equ code_user_68_pa                    , 0x0000000041744000
.equ code_user_69_pa                    , 0x0000000041745000
.equ code_user_70_pa                    , 0x0000000041746000
.equ code_user_71_pa                    , 0x0000000041747000
.equ code_user_72_pa                    , 0x0000000041748000
.equ code_user_73_pa                    , 0x0000000041749000
.equ code_user_74_pa                    , 0x000000004174a000
.equ code_user_75_pa                    , 0x000000004174b000
.equ code_user_76_pa                    , 0x000000004174c000
.equ code_user_77_pa                    , 0x000000004174d000
.equ code_user_78_pa                    , 0x000000004174e000
.equ code_user_79_pa                    , 0x000000004174f000
.equ code_user_80_pa                    , 0x0000000041750000
.equ code_user_81_pa                    , 0x0000000041751000
.equ code_user_82_pa                    , 0x0000000041752000
.equ code_user_83_pa                    , 0x0000000041753000
.equ code_user_84_pa                    , 0x0000000041754000
.equ code_user_85_pa                    , 0x0000000041755000
.equ code_user_86_pa                    , 0x0000000041756000
.equ code_user_87_pa                    , 0x0000000041757000
.equ code_user_88_pa                    , 0x0000000041758000
.equ code_user_89_pa                    , 0x0000000041759000
.equ code_user_90_pa                    , 0x000000004175a000
.equ code_user_91_pa                    , 0x000000004175b000
.equ code_user_92_pa                    , 0x000000004175c000
.equ code_user_93_pa                    , 0x000000004175d000
.equ code_user_94_pa                    , 0x000000004175e000
.equ code_user_95_pa                    , 0x000000004175f000
.equ code_user_96_pa                    , 0x0000000041760000
.equ code_user_97_pa                    , 0x0000000041761000
.equ code_user_98_pa                    , 0x0000000041762000
.equ code_user_99_pa                    , 0x0000000041763000
.equ code_user_100_pa                   , 0x0000000041764000
.equ code_user_101_pa                   , 0x0000000041765000
.equ code_user_102_pa                   , 0x0000000041766000
.equ code_user_103_pa                   , 0x0000000041767000
.equ code_user_104_pa                   , 0x0000000041768000
.equ code_user_105_pa                   , 0x0000000041769000
.equ code_user_106_pa                   , 0x000000004176a000
.equ code_user_107_pa                   , 0x000000004176b000
.equ code_user_108_pa                   , 0x000000004176c000
.equ code_user_109_pa                   , 0x000000004176d000
.equ code_user_110_pa                   , 0x000000004176e000
.equ code_user_111_pa                   , 0x000000004176f000
.equ code_user_112_pa                   , 0x0000000041770000
.equ code_user_113_pa                   , 0x0000000041771000
.equ code_user_114_pa                   , 0x0000000041772000
.equ code_user_115_pa                   , 0x0000000041773000
.equ code_user_116_pa                   , 0x0000000041774000
.equ code_user_117_pa                   , 0x0000000041775000
.equ code_user_118_pa                   , 0x0000000041776000
.equ code_user_119_pa                   , 0x0000000041777000
.equ code_user_120_pa                   , 0x0000000041778000
.equ code_user_121_pa                   , 0x0000000041779000
.equ code_user_122_pa                   , 0x000000004177a000
.equ code_user_123_pa                   , 0x000000004177b000
.equ code_user_124_pa                   , 0x000000004177c000
.equ code_user_125_pa                   , 0x000000004177d000
.equ code_user_126_pa                   , 0x000000004177e000
.equ code_user_127_pa                   , 0x000000004177f000
.equ code_machine_0_pa                  , 0x0000000041194000
.equ code_machine_1_pa                  , 0x0000000041195000
.equ code_machine_2_pa                  , 0x0000000041196000
.equ code_machine_3_pa                  , 0x0000000041197000
.equ code_machine_4_pa                  , 0x0000000041198000
.equ code_machine_5_pa                  , 0x0000000041199000
.equ code_machine_6_pa                  , 0x000000004119a000
.equ code_machine_7_pa                  , 0x000000004119b000
.equ code_machine_8_pa                  , 0x000000004119c000
.equ code_machine_9_pa                  , 0x000000004119d000
.equ code_machine_10_pa                 , 0x000000004119e000
.equ code_machine_11_pa                 , 0x000000004119f000
.equ code_machine_12_pa                 , 0x00000000411a0000
.equ code_machine_13_pa                 , 0x00000000411a1000
.equ code_machine_14_pa                 , 0x00000000411a2000
.equ code_machine_15_pa                 , 0x00000000411a3000
.equ code_machine_16_pa                 , 0x00000000411a4000
.equ code_machine_17_pa                 , 0x00000000411a5000
.equ code_machine_18_pa                 , 0x00000000411a6000
.equ code_machine_19_pa                 , 0x00000000411a7000
.equ code_machine_20_pa                 , 0x00000000411a8000
.equ code_machine_21_pa                 , 0x00000000411a9000
.equ code_machine_22_pa                 , 0x00000000411aa000
.equ code_machine_23_pa                 , 0x00000000411ab000
.equ code_machine_24_pa                 , 0x00000000411ac000
.equ code_machine_25_pa                 , 0x00000000411ad000
.equ code_machine_26_pa                 , 0x00000000411ae000
.equ code_machine_27_pa                 , 0x00000000411af000
.equ code_machine_28_pa                 , 0x00000000411b0000
.equ code_machine_29_pa                 , 0x00000000411b1000
.equ code_machine_30_pa                 , 0x00000000411b2000
.equ code_machine_31_pa                 , 0x00000000411b3000
.equ code_machine_32_pa                 , 0x00000000411b4000
.equ code_machine_33_pa                 , 0x00000000411b5000
.equ code_machine_34_pa                 , 0x00000000411b6000
.equ code_machine_35_pa                 , 0x00000000411b7000
.equ code_machine_36_pa                 , 0x00000000411b8000
.equ code_machine_37_pa                 , 0x00000000411b9000
.equ code_machine_38_pa                 , 0x00000000411ba000
.equ code_machine_39_pa                 , 0x00000000411bb000
.equ code_machine_40_pa                 , 0x00000000411bc000
.equ code_machine_41_pa                 , 0x00000000411bd000
.equ code_machine_42_pa                 , 0x00000000411be000
.equ code_machine_43_pa                 , 0x00000000411bf000
.equ code_machine_44_pa                 , 0x00000000411c0000
.equ code_machine_45_pa                 , 0x00000000411c1000
.equ code_machine_46_pa                 , 0x00000000411c2000
.equ code_machine_47_pa                 , 0x00000000411c3000
.equ code_machine_48_pa                 , 0x00000000411c4000
.equ code_machine_49_pa                 , 0x00000000411c5000
.equ code_machine_50_pa                 , 0x00000000411c6000
.equ code_machine_51_pa                 , 0x00000000411c7000
.equ code_machine_52_pa                 , 0x00000000411c8000
.equ code_machine_53_pa                 , 0x00000000411c9000
.equ code_machine_54_pa                 , 0x00000000411ca000
.equ code_machine_55_pa                 , 0x00000000411cb000
.equ code_machine_56_pa                 , 0x00000000411cc000
.equ code_machine_57_pa                 , 0x00000000411cd000
.equ code_machine_58_pa                 , 0x00000000411ce000
.equ code_machine_59_pa                 , 0x00000000411cf000
.equ code_machine_60_pa                 , 0x00000000411d0000
.equ code_machine_61_pa                 , 0x00000000411d1000
.equ code_machine_62_pa                 , 0x00000000411d2000
.equ code_machine_63_pa                 , 0x00000000411d3000
.equ code_machine_64_pa                 , 0x00000000411d4000
.equ code_machine_65_pa                 , 0x00000000411d5000
.equ code_machine_66_pa                 , 0x00000000411d6000
.equ code_machine_67_pa                 , 0x00000000411d7000
.equ code_machine_68_pa                 , 0x00000000411d8000
.equ code_machine_69_pa                 , 0x00000000411d9000
.equ code_machine_70_pa                 , 0x00000000411da000
.equ code_machine_71_pa                 , 0x00000000411db000
.equ code_machine_72_pa                 , 0x00000000411dc000
.equ code_machine_73_pa                 , 0x00000000411dd000
.equ code_machine_74_pa                 , 0x00000000411de000
.equ code_machine_75_pa                 , 0x00000000411df000
.equ code_machine_76_pa                 , 0x00000000411e0000
.equ code_machine_77_pa                 , 0x00000000411e1000
.equ code_machine_78_pa                 , 0x00000000411e2000
.equ code_machine_79_pa                 , 0x00000000411e3000
.equ code_machine_80_pa                 , 0x00000000411e4000
.equ code_machine_81_pa                 , 0x00000000411e5000
.equ code_machine_82_pa                 , 0x00000000411e6000
.equ code_machine_83_pa                 , 0x00000000411e7000
.equ code_machine_84_pa                 , 0x00000000411e8000
.equ code_machine_85_pa                 , 0x00000000411e9000
.equ code_machine_86_pa                 , 0x00000000411ea000
.equ code_machine_87_pa                 , 0x00000000411eb000
.equ code_machine_88_pa                 , 0x00000000411ec000
.equ code_machine_89_pa                 , 0x00000000411ed000
.equ code_machine_90_pa                 , 0x00000000411ee000
.equ code_machine_91_pa                 , 0x00000000411ef000
.equ code_machine_92_pa                 , 0x00000000411f0000
.equ code_machine_93_pa                 , 0x00000000411f1000
.equ code_machine_94_pa                 , 0x00000000411f2000
.equ code_machine_95_pa                 , 0x00000000411f3000
.equ code_machine_96_pa                 , 0x00000000411f4000
.equ code_machine_97_pa                 , 0x00000000411f5000
.equ code_machine_98_pa                 , 0x00000000411f6000
.equ code_machine_99_pa                 , 0x00000000411f7000
.equ code_machine_100_pa                , 0x00000000411f8000
.equ code_machine_101_pa                , 0x00000000411f9000
.equ code_machine_102_pa                , 0x00000000411fa000
.equ code_machine_103_pa                , 0x00000000411fb000
.equ code_machine_104_pa                , 0x00000000411fc000
.equ code_machine_105_pa                , 0x00000000411fd000
.equ code_machine_106_pa                , 0x00000000411fe000
.equ code_machine_107_pa                , 0x00000000411ff000
.equ code_machine_108_pa                , 0x0000000041200000
.equ code_machine_109_pa                , 0x0000000041201000
.equ code_machine_110_pa                , 0x0000000041202000
.equ code_machine_111_pa                , 0x0000000041203000
.equ code_machine_112_pa                , 0x0000000041204000
.equ code_machine_113_pa                , 0x0000000041205000
.equ code_machine_114_pa                , 0x0000000041206000
.equ code_machine_115_pa                , 0x0000000041207000
.equ code_machine_116_pa                , 0x0000000041208000
.equ code_machine_117_pa                , 0x0000000041209000
.equ code_machine_118_pa                , 0x000000004120a000
.equ code_machine_119_pa                , 0x000000004120b000
.equ code_machine_120_pa                , 0x000000004120c000
.equ code_machine_121_pa                , 0x000000004120d000
.equ code_machine_122_pa                , 0x000000004120e000
.equ code_machine_123_pa                , 0x000000004120f000
.equ code_machine_124_pa                , 0x0000000041210000
.equ code_machine_125_pa                , 0x0000000041211000
.equ code_machine_126_pa                , 0x0000000041212000
.equ code_machine_127_pa                , 0x0000000041213000
.equ csr_machine_0_pa                   , 0x0000000041214000
.equ csr_super_0_pa                     , 0x0000000041801000
.equ data_pa                            , 0x000000004155c000
.equ os_data_pa                         , 0x00000000415aa000
.equ hart_context_pa                    , 0x0000000041581000
.equ hart_stack_0_pa                    , 0x0000000041251000
.equ io_htif_pa                         , 0x0000000041040000
.equ tp_csr_storage_pa                  , 0x0000000041580000
.equ SID_EXCEP_01_EQZ_RS1_NZ_stack_pa   , 0x00000000415a6000
.equ SID_EXCEP_01_EQZ_RS1_Z_stack_pa    , 0x0000000041599000
.equ SID_EXCEP_01_NEZ_RS1_NZ_stack_pa   , 0x000000004123b000
.equ SID_EXCEP_01_NEZ_RS1_Z_stack_pa    , 0x000000004124e000
.equ SID_EXCEP_02_EQZ_RS1_NZ_stack_pa   , 0x0000000041248000
.equ SID_EXCEP_02_EQZ_RS1_Z_stack_pa    , 0x0000000041587000
.equ SID_EXCEP_02_NEZ_RS1_Z_stack_pa    , 0x0000000041582000
.equ SID_EXCEP_02_NEZ_RS1_NZ_stack_pa   , 0x0000000044404000
.equ SID_EXCEP_04_EQZ_PASSING_ADD_stack_pa, 0x000000004124c000
.equ SID_EXCEP_04_EQZ_FAILING_ADD_stack_pa, 0x000000004317e000
.equ SID_EXCEP_04_NEZ_PASSING_SUB_stack_pa, 0x00000000412d5000
.equ SID_EXCEP_04_NEZ_FAILING_SUB_stack_pa, 0x0000000041583000
.equ SID_EXCEP_04_EQZ_PASSING_SUB_stack_pa, 0x000000004123d000
.equ SID_EXCEP_04_EQZ_FAILING_SUB_stack_pa, 0x0000000041261000
.equ SID_EXCEP_04_NEZ_PASSING_ADD_stack_pa, 0x000000004124f000
.equ SID_EXCEP_04_NEZ_FAILING_ADD_stack_pa, 0x0000000041249000
.equ SID_EXCEP_04_EQZ_PASSING_AND_stack_pa, 0x0000000044728000
.equ SID_EXCEP_04_EQZ_FAILING_AND_stack_pa, 0x0000000044975000
.equ SID_EXCEP_04_EQZ_PASSING_XOR_stack_pa, 0x00000000415e5000
.equ SID_EXCEP_04_EQZ_FAILING_XOR_stack_pa, 0x000000004123e000
.equ SID_EXCEP_04_NEZ_PASSING_AND_stack_pa, 0x00000000419a6000
.equ SID_EXCEP_04_NEZ_FAILING_AND_stack_pa, 0x000000004122a000
.equ SID_EXCEP_04_NEZ_PASSING_XOR_stack_pa, 0x0000000041250000
.equ SID_EXCEP_04_NEZ_FAILING_XOR_stack_pa, 0x0000000041802000
.equ SID_EXCEP_04_2_1_MUX_SELECT_0_stack_pa, 0x0000000041253000
.equ SID_EXCEP_04_2_1_MUX_SELECT_1_stack_pa, 0x000000004156c000

# Macros equates
.equ CHECK_EXCP_MODE_MACHINE, 1
.equ CHECK_EXCP_MODE_HS, 2
.equ CHECK_EXCP_MODE_VS, 3

# TrapHandler equates
.equ trap_handler_m__TRAP_HANDLER_PANIC_CAUSE, 11

# TrapHandler equates
.equ trap_handler_s__TRAP_HANDLER_PANIC_CAUSE, 11

# OpSys equates


# OS Pointers
.equ passed_addr,                        os_data + 0
.equ passed_addr_pa,                     os_data_pa + 0
.equ failed_addr,                        os_data + 8
.equ failed_addr_pa,                     os_data_pa + 8
.equ end_test_addr,                      os_data + 16
.equ end_test_addr_pa,                   os_data_pa + 16
.equ os_passed_addr,                     os_data + 24
.equ os_passed_addr_pa,                  os_data_pa + 24
.equ os_failed_addr,                     os_data + 32
.equ os_failed_addr_pa,                  os_data_pa + 32
.equ os_end_test_addr,                   os_data + 40
.equ os_end_test_addr_pa,                os_data_pa + 40

# RVCP string equates
.equ rvcp_prefix_str,                    os_data + 48
.equ rvcp_prefix_str_pa,                 os_data_pa + 48
.equ rvcp_testname_str,                  os_data + 65
.equ rvcp_testname_str_pa,               os_data_pa + 65
.equ rvcp_passed_str,                    os_data + 77
.equ rvcp_passed_str_pa,                 os_data_pa + 77
.equ rvcp_failed_str,                    os_data + 84
.equ rvcp_failed_str_pa,                 os_data_pa + 84
.equ rvcp_space_str,                     os_data + 91
.equ rvcp_space_str_pa,                  os_data_pa + 91
.equ rvcp_newline_str,                   os_data + 93
.equ rvcp_newline_str_pa,                os_data_pa + 93

# Runtime Variables (VA)
.equ excp_ignored_count,                 os_data + 96
.equ machine_flags,                      os_data + 104
.equ user_flags,                         os_data + 112
.equ super_flags,                        os_data + 120
.equ machine_area,                       os_data + 128
.equ user_area,                          os_data + 136
.equ super_area,                         os_data + 144
.equ zero_data,                          os_data + 152
.equ machine_csr_jump_table_flags,       os_data + 160
.equ super_csr_jump_table_flags,         os_data + 168
.equ pte_access_flags,                   os_data + 176
.equ num_harts_ended,                    os_data + 200
.equ num_hard_fails,                     os_data + 208

# Runtime Variables (PA)
.equ excp_ignored_count_pa,              os_data_pa + 96
.equ machine_flags_pa,                   os_data_pa + 104
.equ user_flags_pa,                      os_data_pa + 112
.equ super_flags_pa,                     os_data_pa + 120
.equ machine_area_pa,                    os_data_pa + 128
.equ user_area_pa,                       os_data_pa + 136
.equ super_area_pa,                      os_data_pa + 144
.equ zero_data_pa,                       os_data_pa + 152
.equ machine_csr_jump_table_flags_pa,    os_data_pa + 160
.equ super_csr_jump_table_flags_pa,      os_data_pa + 168
.equ pte_access_flags_pa,                os_data_pa + 176
.equ num_harts_ended_pa,                 os_data_pa + 200
.equ num_hard_fails_pa,                  os_data_pa + 208

# Hart context PA equates
.equ hart_context_0_pa, hart_context_pa + 0

# Single Hart Equates
.equ mhartid,                            hart_context + 16
.equ check_excp,                         hart_context + 24
.equ check_excp_expected_pc,             hart_context + 32
.equ check_excp_actual_pc,               hart_context + 40
.equ check_excp_return_pc,               hart_context + 48
.equ check_excp_skip_pc_check,           hart_context + 56
.equ check_excp_expected_tval,           hart_context + 64
.equ check_excp_expected_htval,          hart_context + 72
.equ check_excp_expected_cause,          hart_context + 80
.equ check_excp_actual_cause,            hart_context + 88
.equ check_excp_gva_check,               hart_context + 96
.equ check_excp_expected_mode,           hart_context + 104
.equ check_excp_re_execute,              hart_context + 112
.equ gpr_save_area,                      hart_context + 120
.equ os_save_ecall_fn_epc,               hart_context + 376
.equ scheduler__saved_stvec,             hart_context + 384
.equ current_test_index,                 hart_context + 392
.equ num_runs,                           hart_context + 400



# Exception causes:
.equ INSTRUCTION_ADDRESS_MISALIGNED     , 0
.equ INSTRUCTION_ACCESS_FAULT           , 1
.equ ILLEGAL_INSTRUCTION                , 2
.equ BREAKPOINT                         , 3
.equ LOAD_ADDRESS_MISALIGNED            , 4
.equ LOAD_ACCESS_FAULT                  , 5
.equ STORE_ADDRESS_MISALIGNED           , 6
.equ STORE_ACCESS_FAULT                 , 7
.equ ECALL_FROM_USER                    , 8
.equ ECALL_FROM_SUPER                   , 9
.equ ECALL_FROM_VS                      , 10
.equ ECALL_FROM_MACHINE                 , 11
.equ INSTRUCTION_PAGE_FAULT             , 12
.equ LOAD_PAGE_FAULT                    , 13
.equ STORE_PAGE_FAULT                   , 15
.equ INSTRUCTION_GUEST_PAGE_FAULT       , 20
.equ LOAD_GUEST_PAGE_FAULT              , 21
.equ VIRTUAL_INSTRUCTION                , 22
.equ STORE_GUEST_PAGE_FAULT             , 23

# Expected Interrupt causes:
.equ EXPECT_SSI, 1
.equ EXPECT_MSI, 3
.equ EXPECT_STI, 5
.equ EXPECT_MTI, 7
.equ EXPECT_SEI, 9
.equ EXPECT_MEI, 11
.equ EXPECT_COI, 13

# XLEN
.equ XLEN, 64

.equ ECALL            , ECALL_FROM_SUPER


.equ DONT_USE_STACK, 1


.equ PMA_ENABLED, 0

.equ MISA_BITS, 0

# Feature-specific equates:
