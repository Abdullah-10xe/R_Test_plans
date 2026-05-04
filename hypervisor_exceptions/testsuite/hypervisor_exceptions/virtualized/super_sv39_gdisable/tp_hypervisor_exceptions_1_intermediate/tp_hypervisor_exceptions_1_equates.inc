# Test configuration:
.equ PRIV_MODE_MACHINE                  , 0
.equ PRIV_MODE_SUPER                    , 1
.equ PRIV_MODE_USER                     , 0
.equ SECURE_MODE                        , 0
.equ ENV_BARE_METAL                     , 0
.equ ENV_VIRTUALIZED                    , 1
.equ PAGING_MODE_DISABLE                , 0
.equ PAGING_MODE_SV32                   , 0
.equ PAGING_MODE_SV39                   , 1
.equ PAGING_MODE_SV48                   , 0
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
.equ code                               , 0x00000000410140b0
.equ __section_code                     , 0x0000000043800000
.equ __section__code_1                  , 0x0000000041015000
.equ __section__code_1_phys             , 0x0000000043801000
.equ __section__code_2                  , 0x0000000041016000
.equ __section__code_2_phys             , 0x0000000043802000
.equ __section__code_3                  , 0x0000000041017000
.equ __section__code_3_phys             , 0x0000000043803000
.equ __section__code_4                  , 0x0000000041018000
.equ __section__code_4_phys             , 0x0000000043804000
.equ __section__code_5                  , 0x0000000041019000
.equ __section__code_5_phys             , 0x0000000043805000
.equ __section__code_6                  , 0x000000004101a000
.equ __section__code_6_phys             , 0x0000000043806000
.equ __section__code_7                  , 0x000000004101b000
.equ __section__code_7_phys             , 0x0000000043807000
.equ __section__code_8                  , 0x000000004101c000
.equ __section__code_8_phys             , 0x0000000043808000
.equ __section__code_9                  , 0x000000004101d000
.equ __section__code_9_phys             , 0x0000000043809000
.equ __section__code_10                 , 0x000000004101e000
.equ __section__code_10_phys            , 0x000000004380a000
.equ __section__code_11                 , 0x000000004101f000
.equ __section__code_11_phys            , 0x000000004380b000
.equ __section__code_12                 , 0x0000000041020000
.equ __section__code_12_phys            , 0x000000004380c000
.equ __section__code_13                 , 0x0000000041021000
.equ __section__code_13_phys            , 0x000000004380d000
.equ __section__code_14                 , 0x0000000041022000
.equ __section__code_14_phys            , 0x000000004380e000
.equ __section__code_15                 , 0x0000000041023000
.equ __section__code_15_phys            , 0x000000004380f000
.equ __section__code_16                 , 0x0000000041024000
.equ __section__code_16_phys            , 0x0000000043810000
.equ __section__code_17                 , 0x0000000041025000
.equ __section__code_17_phys            , 0x0000000043811000
.equ __section__code_18                 , 0x0000000041026000
.equ __section__code_18_phys            , 0x0000000043812000
.equ __section__code_19                 , 0x0000000041027000
.equ __section__code_19_phys            , 0x0000000043813000
.equ __section__code_20                 , 0x0000000041028000
.equ __section__code_20_phys            , 0x0000000043814000
.equ __section__code_21                 , 0x0000000041029000
.equ __section__code_21_phys            , 0x0000000043815000
.equ __section__code_22                 , 0x000000004102a000
.equ __section__code_22_phys            , 0x0000000043816000
.equ __section__code_23                 , 0x000000004102b000
.equ __section__code_23_phys            , 0x0000000043817000
.equ __section__code_24                 , 0x000000004102c000
.equ __section__code_24_phys            , 0x0000000043818000
.equ __section__code_25                 , 0x000000004102d000
.equ __section__code_25_phys            , 0x0000000043819000
.equ __section__code_26                 , 0x000000004102e000
.equ __section__code_26_phys            , 0x000000004381a000
.equ __section__code_27                 , 0x000000004102f000
.equ __section__code_27_phys            , 0x000000004381b000
.equ __section__code_28                 , 0x0000000041030000
.equ __section__code_28_phys            , 0x000000004381c000
.equ __section__code_29                 , 0x0000000041031000
.equ __section__code_29_phys            , 0x000000004381d000
.equ __section__code_30                 , 0x0000000041032000
.equ __section__code_30_phys            , 0x000000004381e000
.equ __section__code_31                 , 0x0000000041033000
.equ __section__code_31_phys            , 0x000000004381f000
.equ __section__code_32                 , 0x0000000041034000
.equ __section__code_32_phys            , 0x0000000043820000
.equ __section__code_33                 , 0x0000000041035000
.equ __section__code_33_phys            , 0x0000000043821000
.equ __section__code_34                 , 0x0000000041036000
.equ __section__code_34_phys            , 0x0000000043822000
.equ __section__code_35                 , 0x0000000041037000
.equ __section__code_35_phys            , 0x0000000043823000
.equ __section__code_36                 , 0x0000000041038000
.equ __section__code_36_phys            , 0x0000000043824000
.equ __section__code_37                 , 0x0000000041039000
.equ __section__code_37_phys            , 0x0000000043825000
.equ __section__code_38                 , 0x000000004103a000
.equ __section__code_38_phys            , 0x0000000043826000
.equ __section__code_39                 , 0x000000004103b000
.equ __section__code_39_phys            , 0x0000000043827000
.equ __section__code_40                 , 0x000000004103c000
.equ __section__code_40_phys            , 0x0000000043828000
.equ __section__code_41                 , 0x000000004103d000
.equ __section__code_41_phys            , 0x0000000043829000
.equ __section__code_42                 , 0x000000004103e000
.equ __section__code_42_phys            , 0x000000004382a000
.equ __section__code_43                 , 0x000000004103f000
.equ __section__code_43_phys            , 0x000000004382b000
.equ __section__code_44                 , 0x0000000041040000
.equ __section__code_44_phys            , 0x000000004382c000
.equ __section__code_45                 , 0x0000000041041000
.equ __section__code_45_phys            , 0x000000004382d000
.equ __section__code_46                 , 0x0000000041042000
.equ __section__code_46_phys            , 0x000000004382e000
.equ __section__code_47                 , 0x0000000041043000
.equ __section__code_47_phys            , 0x000000004382f000
.equ __section__code_48                 , 0x0000000041044000
.equ __section__code_48_phys            , 0x0000000043830000
.equ __section__code_49                 , 0x0000000041045000
.equ __section__code_49_phys            , 0x0000000043831000
.equ __section__code_50                 , 0x0000000041046000
.equ __section__code_50_phys            , 0x0000000043832000
.equ __section__code_51                 , 0x0000000041047000
.equ __section__code_51_phys            , 0x0000000043833000
.equ __section__code_52                 , 0x0000000041048000
.equ __section__code_52_phys            , 0x0000000043834000
.equ __section__code_53                 , 0x0000000041049000
.equ __section__code_53_phys            , 0x0000000043835000
.equ __section__code_54                 , 0x000000004104a000
.equ __section__code_54_phys            , 0x0000000043836000
.equ __section__code_55                 , 0x000000004104b000
.equ __section__code_55_phys            , 0x0000000043837000
.equ __section__code_56                 , 0x000000004104c000
.equ __section__code_56_phys            , 0x0000000043838000
.equ __section__code_57                 , 0x000000004104d000
.equ __section__code_57_phys            , 0x0000000043839000
.equ __section__code_58                 , 0x000000004104e000
.equ __section__code_58_phys            , 0x000000004383a000
.equ __section__code_59                 , 0x000000004104f000
.equ __section__code_59_phys            , 0x000000004383b000
.equ __section__code_60                 , 0x0000000041050000
.equ __section__code_60_phys            , 0x000000004383c000
.equ __section__code_61                 , 0x0000000041051000
.equ __section__code_61_phys            , 0x000000004383d000
.equ __section__code_62                 , 0x0000000041052000
.equ __section__code_62_phys            , 0x000000004383e000
.equ __section__code_63                 , 0x0000000041053000
.equ __section__code_63_phys            , 0x000000004383f000
.equ __section__code_64                 , 0x0000000041054000
.equ __section__code_64_phys            , 0x0000000043840000
.equ __section__code_65                 , 0x0000000041055000
.equ __section__code_65_phys            , 0x0000000043841000
.equ __section__code_66                 , 0x0000000041056000
.equ __section__code_66_phys            , 0x0000000043842000
.equ __section__code_67                 , 0x0000000041057000
.equ __section__code_67_phys            , 0x0000000043843000
.equ __section__code_68                 , 0x0000000041058000
.equ __section__code_68_phys            , 0x0000000043844000
.equ __section__code_69                 , 0x0000000041059000
.equ __section__code_69_phys            , 0x0000000043845000
.equ __section__code_70                 , 0x000000004105a000
.equ __section__code_70_phys            , 0x0000000043846000
.equ __section__code_71                 , 0x000000004105b000
.equ __section__code_71_phys            , 0x0000000043847000
.equ __section__code_72                 , 0x000000004105c000
.equ __section__code_72_phys            , 0x0000000043848000
.equ __section__code_73                 , 0x000000004105d000
.equ __section__code_73_phys            , 0x0000000043849000
.equ __section__code_74                 , 0x000000004105e000
.equ __section__code_74_phys            , 0x000000004384a000
.equ __section__code_75                 , 0x000000004105f000
.equ __section__code_75_phys            , 0x000000004384b000
.equ __section__code_76                 , 0x0000000041060000
.equ __section__code_76_phys            , 0x000000004384c000
.equ __section__code_77                 , 0x0000000041061000
.equ __section__code_77_phys            , 0x000000004384d000
.equ __section__code_78                 , 0x0000000041062000
.equ __section__code_78_phys            , 0x000000004384e000
.equ __section__code_79                 , 0x0000000041063000
.equ __section__code_79_phys            , 0x000000004384f000
.equ __section__code_80                 , 0x0000000041064000
.equ __section__code_80_phys            , 0x0000000043850000
.equ __section__code_81                 , 0x0000000041065000
.equ __section__code_81_phys            , 0x0000000043851000
.equ __section__code_82                 , 0x0000000041066000
.equ __section__code_82_phys            , 0x0000000043852000
.equ __section__code_83                 , 0x0000000041067000
.equ __section__code_83_phys            , 0x0000000043853000
.equ __section__code_84                 , 0x0000000041068000
.equ __section__code_84_phys            , 0x0000000043854000
.equ __section__code_85                 , 0x0000000041069000
.equ __section__code_85_phys            , 0x0000000043855000
.equ __section__code_86                 , 0x000000004106a000
.equ __section__code_86_phys            , 0x0000000043856000
.equ __section__code_87                 , 0x000000004106b000
.equ __section__code_87_phys            , 0x0000000043857000
.equ __section__code_88                 , 0x000000004106c000
.equ __section__code_88_phys            , 0x0000000043858000
.equ __section__code_89                 , 0x000000004106d000
.equ __section__code_89_phys            , 0x0000000043859000
.equ __section__code_90                 , 0x000000004106e000
.equ __section__code_90_phys            , 0x000000004385a000
.equ __section__code_91                 , 0x000000004106f000
.equ __section__code_91_phys            , 0x000000004385b000
.equ __section__code_92                 , 0x0000000041070000
.equ __section__code_92_phys            , 0x000000004385c000
.equ __section__code_93                 , 0x0000000041071000
.equ __section__code_93_phys            , 0x000000004385d000
.equ __section__code_94                 , 0x0000000041072000
.equ __section__code_94_phys            , 0x000000004385e000
.equ __section__code_95                 , 0x0000000041073000
.equ __section__code_95_phys            , 0x000000004385f000
.equ __section__code_96                 , 0x0000000041074000
.equ __section__code_96_phys            , 0x0000000043860000
.equ __section__code_97                 , 0x0000000041075000
.equ __section__code_97_phys            , 0x0000000043861000
.equ __section__code_98                 , 0x0000000041076000
.equ __section__code_98_phys            , 0x0000000043862000
.equ __section__code_99                 , 0x0000000041077000
.equ __section__code_99_phys            , 0x0000000043863000
.equ __section__code_100                , 0x0000000041078000
.equ __section__code_100_phys           , 0x0000000043864000
.equ __section__code_101                , 0x0000000041079000
.equ __section__code_101_phys           , 0x0000000043865000
.equ __section__code_102                , 0x000000004107a000
.equ __section__code_102_phys           , 0x0000000043866000
.equ __section__code_103                , 0x000000004107b000
.equ __section__code_103_phys           , 0x0000000043867000
.equ __section__code_104                , 0x000000004107c000
.equ __section__code_104_phys           , 0x0000000043868000
.equ __section__code_105                , 0x000000004107d000
.equ __section__code_105_phys           , 0x0000000043869000
.equ __section__code_106                , 0x000000004107e000
.equ __section__code_106_phys           , 0x000000004386a000
.equ __section__code_107                , 0x000000004107f000
.equ __section__code_107_phys           , 0x000000004386b000
.equ __section__code_108                , 0x0000000041080000
.equ __section__code_108_phys           , 0x000000004386c000
.equ __section__code_109                , 0x0000000041081000
.equ __section__code_109_phys           , 0x000000004386d000
.equ __section__code_110                , 0x0000000041082000
.equ __section__code_110_phys           , 0x000000004386e000
.equ __section__code_111                , 0x0000000041083000
.equ __section__code_111_phys           , 0x000000004386f000
.equ __section__code_112                , 0x0000000041084000
.equ __section__code_112_phys           , 0x0000000043870000
.equ __section__code_113                , 0x0000000041085000
.equ __section__code_113_phys           , 0x0000000043871000
.equ __section__code_114                , 0x0000000041086000
.equ __section__code_114_phys           , 0x0000000043872000
.equ __section__code_115                , 0x0000000041087000
.equ __section__code_115_phys           , 0x0000000043873000
.equ __section__code_116                , 0x0000000041088000
.equ __section__code_116_phys           , 0x0000000043874000
.equ __section__code_117                , 0x0000000041089000
.equ __section__code_117_phys           , 0x0000000043875000
.equ __section__code_118                , 0x000000004108a000
.equ __section__code_118_phys           , 0x0000000043876000
.equ __section__code_119                , 0x000000004108b000
.equ __section__code_119_phys           , 0x0000000043877000
.equ __section__code_120                , 0x000000004108c000
.equ __section__code_120_phys           , 0x0000000043878000
.equ __section__code_121                , 0x000000004108d000
.equ __section__code_121_phys           , 0x0000000043879000
.equ __section__code_122                , 0x000000004108e000
.equ __section__code_122_phys           , 0x000000004387a000
.equ __section__code_123                , 0x000000004108f000
.equ __section__code_123_phys           , 0x000000004387b000
.equ __section__code_124                , 0x0000000041090000
.equ __section__code_124_phys           , 0x000000004387c000
.equ __section__code_125                , 0x0000000041091000
.equ __section__code_125_phys           , 0x000000004387d000
.equ __section__code_126                , 0x0000000041092000
.equ __section__code_126_phys           , 0x000000004387e000
.equ __section__code_127                , 0x0000000041093000
.equ __section__code_127_phys           , 0x000000004387f000
.equ code_super_0                       , 0x0000000041094000
.equ __section_code_super_0             , 0x0000000043880000
.equ code_super_1                       , 0x0000000041095000
.equ __section_code_super_1             , 0x0000000043881000
.equ code_super_2                       , 0x0000000041096000
.equ __section_code_super_2             , 0x0000000043882000
.equ code_super_3                       , 0x0000000041097000
.equ __section_code_super_3             , 0x0000000043883000
.equ code_super_4                       , 0x0000000041098000
.equ __section_code_super_4             , 0x0000000043884000
.equ code_super_5                       , 0x0000000041099000
.equ __section_code_super_5             , 0x0000000043885000
.equ code_super_6                       , 0x000000004109a000
.equ __section_code_super_6             , 0x0000000043886000
.equ code_super_7                       , 0x000000004109b000
.equ __section_code_super_7             , 0x0000000043887000
.equ code_super_8                       , 0x000000004109c000
.equ __section_code_super_8             , 0x0000000043888000
.equ code_super_9                       , 0x000000004109d000
.equ __section_code_super_9             , 0x0000000043889000
.equ code_super_10                      , 0x000000004109e000
.equ __section_code_super_10            , 0x000000004388a000
.equ code_super_11                      , 0x000000004109f000
.equ __section_code_super_11            , 0x000000004388b000
.equ code_super_12                      , 0x00000000410a0000
.equ __section_code_super_12            , 0x000000004388c000
.equ code_super_13                      , 0x00000000410a1000
.equ __section_code_super_13            , 0x000000004388d000
.equ code_super_14                      , 0x00000000410a2000
.equ __section_code_super_14            , 0x000000004388e000
.equ code_super_15                      , 0x00000000410a3000
.equ __section_code_super_15            , 0x000000004388f000
.equ code_super_16                      , 0x00000000410a4000
.equ __section_code_super_16            , 0x0000000043890000
.equ code_super_17                      , 0x00000000410a5000
.equ __section_code_super_17            , 0x0000000043891000
.equ code_super_18                      , 0x00000000410a6000
.equ __section_code_super_18            , 0x0000000043892000
.equ code_super_19                      , 0x00000000410a7000
.equ __section_code_super_19            , 0x0000000043893000
.equ code_super_20                      , 0x00000000410a8000
.equ __section_code_super_20            , 0x0000000043894000
.equ code_super_21                      , 0x00000000410a9000
.equ __section_code_super_21            , 0x0000000043895000
.equ code_super_22                      , 0x00000000410aa000
.equ __section_code_super_22            , 0x0000000043896000
.equ code_super_23                      , 0x00000000410ab000
.equ __section_code_super_23            , 0x0000000043897000
.equ code_super_24                      , 0x00000000410ac000
.equ __section_code_super_24            , 0x0000000043898000
.equ code_super_25                      , 0x00000000410ad000
.equ __section_code_super_25            , 0x0000000043899000
.equ code_super_26                      , 0x00000000410ae000
.equ __section_code_super_26            , 0x000000004389a000
.equ code_super_27                      , 0x00000000410af000
.equ __section_code_super_27            , 0x000000004389b000
.equ code_super_28                      , 0x00000000410b0000
.equ __section_code_super_28            , 0x000000004389c000
.equ code_super_29                      , 0x00000000410b1000
.equ __section_code_super_29            , 0x000000004389d000
.equ code_super_30                      , 0x00000000410b2000
.equ __section_code_super_30            , 0x000000004389e000
.equ code_super_31                      , 0x00000000410b3000
.equ __section_code_super_31            , 0x000000004389f000
.equ code_super_32                      , 0x00000000410b4000
.equ __section_code_super_32            , 0x00000000438a0000
.equ code_super_33                      , 0x00000000410b5000
.equ __section_code_super_33            , 0x00000000438a1000
.equ code_super_34                      , 0x00000000410b6000
.equ __section_code_super_34            , 0x00000000438a2000
.equ code_super_35                      , 0x00000000410b7000
.equ __section_code_super_35            , 0x00000000438a3000
.equ code_super_36                      , 0x00000000410b8000
.equ __section_code_super_36            , 0x00000000438a4000
.equ code_super_37                      , 0x00000000410b9000
.equ __section_code_super_37            , 0x00000000438a5000
.equ code_super_38                      , 0x00000000410ba000
.equ __section_code_super_38            , 0x00000000438a6000
.equ code_super_39                      , 0x00000000410bb000
.equ __section_code_super_39            , 0x00000000438a7000
.equ code_super_40                      , 0x00000000410bc000
.equ __section_code_super_40            , 0x00000000438a8000
.equ code_super_41                      , 0x00000000410bd000
.equ __section_code_super_41            , 0x00000000438a9000
.equ code_super_42                      , 0x00000000410be000
.equ __section_code_super_42            , 0x00000000438aa000
.equ code_super_43                      , 0x00000000410bf000
.equ __section_code_super_43            , 0x00000000438ab000
.equ code_super_44                      , 0x00000000410c0000
.equ __section_code_super_44            , 0x00000000438ac000
.equ code_super_45                      , 0x00000000410c1000
.equ __section_code_super_45            , 0x00000000438ad000
.equ code_super_46                      , 0x00000000410c2000
.equ __section_code_super_46            , 0x00000000438ae000
.equ code_super_47                      , 0x00000000410c3000
.equ __section_code_super_47            , 0x00000000438af000
.equ code_super_48                      , 0x00000000410c4000
.equ __section_code_super_48            , 0x00000000438b0000
.equ code_super_49                      , 0x00000000410c5000
.equ __section_code_super_49            , 0x00000000438b1000
.equ code_super_50                      , 0x00000000410c6000
.equ __section_code_super_50            , 0x00000000438b2000
.equ code_super_51                      , 0x00000000410c7000
.equ __section_code_super_51            , 0x00000000438b3000
.equ code_super_52                      , 0x00000000410c8000
.equ __section_code_super_52            , 0x00000000438b4000
.equ code_super_53                      , 0x00000000410c9000
.equ __section_code_super_53            , 0x00000000438b5000
.equ code_super_54                      , 0x00000000410ca000
.equ __section_code_super_54            , 0x00000000438b6000
.equ code_super_55                      , 0x00000000410cb000
.equ __section_code_super_55            , 0x00000000438b7000
.equ code_super_56                      , 0x00000000410cc000
.equ __section_code_super_56            , 0x00000000438b8000
.equ code_super_57                      , 0x00000000410cd000
.equ __section_code_super_57            , 0x00000000438b9000
.equ code_super_58                      , 0x00000000410ce000
.equ __section_code_super_58            , 0x00000000438ba000
.equ code_super_59                      , 0x00000000410cf000
.equ __section_code_super_59            , 0x00000000438bb000
.equ code_super_60                      , 0x00000000410d0000
.equ __section_code_super_60            , 0x00000000438bc000
.equ code_super_61                      , 0x00000000410d1000
.equ __section_code_super_61            , 0x00000000438bd000
.equ code_super_62                      , 0x00000000410d2000
.equ __section_code_super_62            , 0x00000000438be000
.equ code_super_63                      , 0x00000000410d3000
.equ __section_code_super_63            , 0x00000000438bf000
.equ code_super_64                      , 0x00000000410d4000
.equ __section_code_super_64            , 0x00000000438c0000
.equ code_super_65                      , 0x00000000410d5000
.equ __section_code_super_65            , 0x00000000438c1000
.equ code_super_66                      , 0x00000000410d6000
.equ __section_code_super_66            , 0x00000000438c2000
.equ code_super_67                      , 0x00000000410d7000
.equ __section_code_super_67            , 0x00000000438c3000
.equ code_super_68                      , 0x00000000410d8000
.equ __section_code_super_68            , 0x00000000438c4000
.equ code_super_69                      , 0x00000000410d9000
.equ __section_code_super_69            , 0x00000000438c5000
.equ code_super_70                      , 0x00000000410da000
.equ __section_code_super_70            , 0x00000000438c6000
.equ code_super_71                      , 0x00000000410db000
.equ __section_code_super_71            , 0x00000000438c7000
.equ code_super_72                      , 0x00000000410dc000
.equ __section_code_super_72            , 0x00000000438c8000
.equ code_super_73                      , 0x00000000410dd000
.equ __section_code_super_73            , 0x00000000438c9000
.equ code_super_74                      , 0x00000000410de000
.equ __section_code_super_74            , 0x00000000438ca000
.equ code_super_75                      , 0x00000000410df000
.equ __section_code_super_75            , 0x00000000438cb000
.equ code_super_76                      , 0x00000000410e0000
.equ __section_code_super_76            , 0x00000000438cc000
.equ code_super_77                      , 0x00000000410e1000
.equ __section_code_super_77            , 0x00000000438cd000
.equ code_super_78                      , 0x00000000410e2000
.equ __section_code_super_78            , 0x00000000438ce000
.equ code_super_79                      , 0x00000000410e3000
.equ __section_code_super_79            , 0x00000000438cf000
.equ code_super_80                      , 0x00000000410e4000
.equ __section_code_super_80            , 0x00000000438d0000
.equ code_super_81                      , 0x00000000410e5000
.equ __section_code_super_81            , 0x00000000438d1000
.equ code_super_82                      , 0x00000000410e6000
.equ __section_code_super_82            , 0x00000000438d2000
.equ code_super_83                      , 0x00000000410e7000
.equ __section_code_super_83            , 0x00000000438d3000
.equ code_super_84                      , 0x00000000410e8000
.equ __section_code_super_84            , 0x00000000438d4000
.equ code_super_85                      , 0x00000000410e9000
.equ __section_code_super_85            , 0x00000000438d5000
.equ code_super_86                      , 0x00000000410ea000
.equ __section_code_super_86            , 0x00000000438d6000
.equ code_super_87                      , 0x00000000410eb000
.equ __section_code_super_87            , 0x00000000438d7000
.equ code_super_88                      , 0x00000000410ec000
.equ __section_code_super_88            , 0x00000000438d8000
.equ code_super_89                      , 0x00000000410ed000
.equ __section_code_super_89            , 0x00000000438d9000
.equ code_super_90                      , 0x00000000410ee000
.equ __section_code_super_90            , 0x00000000438da000
.equ code_super_91                      , 0x00000000410ef000
.equ __section_code_super_91            , 0x00000000438db000
.equ code_super_92                      , 0x00000000410f0000
.equ __section_code_super_92            , 0x00000000438dc000
.equ code_super_93                      , 0x00000000410f1000
.equ __section_code_super_93            , 0x00000000438dd000
.equ code_super_94                      , 0x00000000410f2000
.equ __section_code_super_94            , 0x00000000438de000
.equ code_super_95                      , 0x00000000410f3000
.equ __section_code_super_95            , 0x00000000438df000
.equ code_super_96                      , 0x00000000410f4000
.equ __section_code_super_96            , 0x00000000438e0000
.equ code_super_97                      , 0x00000000410f5000
.equ __section_code_super_97            , 0x00000000438e1000
.equ code_super_98                      , 0x00000000410f6000
.equ __section_code_super_98            , 0x00000000438e2000
.equ code_super_99                      , 0x00000000410f7000
.equ __section_code_super_99            , 0x00000000438e3000
.equ code_super_100                     , 0x00000000410f8000
.equ __section_code_super_100           , 0x00000000438e4000
.equ code_super_101                     , 0x00000000410f9000
.equ __section_code_super_101           , 0x00000000438e5000
.equ code_super_102                     , 0x00000000410fa000
.equ __section_code_super_102           , 0x00000000438e6000
.equ code_super_103                     , 0x00000000410fb000
.equ __section_code_super_103           , 0x00000000438e7000
.equ code_super_104                     , 0x00000000410fc000
.equ __section_code_super_104           , 0x00000000438e8000
.equ code_super_105                     , 0x00000000410fd000
.equ __section_code_super_105           , 0x00000000438e9000
.equ code_super_106                     , 0x00000000410fe000
.equ __section_code_super_106           , 0x00000000438ea000
.equ code_super_107                     , 0x00000000410ff000
.equ __section_code_super_107           , 0x00000000438eb000
.equ code_super_108                     , 0x0000000041100000
.equ __section_code_super_108           , 0x00000000438ec000
.equ code_super_109                     , 0x0000000041101000
.equ __section_code_super_109           , 0x00000000438ed000
.equ code_super_110                     , 0x0000000041102000
.equ __section_code_super_110           , 0x00000000438ee000
.equ code_super_111                     , 0x0000000041103000
.equ __section_code_super_111           , 0x00000000438ef000
.equ code_super_112                     , 0x0000000041104000
.equ __section_code_super_112           , 0x00000000438f0000
.equ code_super_113                     , 0x0000000041105000
.equ __section_code_super_113           , 0x00000000438f1000
.equ code_super_114                     , 0x0000000041106000
.equ __section_code_super_114           , 0x00000000438f2000
.equ code_super_115                     , 0x0000000041107000
.equ __section_code_super_115           , 0x00000000438f3000
.equ code_super_116                     , 0x0000000041108000
.equ __section_code_super_116           , 0x00000000438f4000
.equ code_super_117                     , 0x0000000041109000
.equ __section_code_super_117           , 0x00000000438f5000
.equ code_super_118                     , 0x000000004110a000
.equ __section_code_super_118           , 0x00000000438f6000
.equ code_super_119                     , 0x000000004110b000
.equ __section_code_super_119           , 0x00000000438f7000
.equ code_super_120                     , 0x000000004110c000
.equ __section_code_super_120           , 0x00000000438f8000
.equ code_super_121                     , 0x000000004110d000
.equ __section_code_super_121           , 0x00000000438f9000
.equ code_super_122                     , 0x000000004110e000
.equ __section_code_super_122           , 0x00000000438fa000
.equ code_super_123                     , 0x000000004110f000
.equ __section_code_super_123           , 0x00000000438fb000
.equ code_super_124                     , 0x0000000041110000
.equ __section_code_super_124           , 0x00000000438fc000
.equ code_super_125                     , 0x0000000041111000
.equ __section_code_super_125           , 0x00000000438fd000
.equ code_super_126                     , 0x0000000041112000
.equ __section_code_super_126           , 0x00000000438fe000
.equ code_super_127                     , 0x0000000041113000
.equ __section_code_super_127           , 0x00000000438ff000
.equ code_user_0                        , 0x0000000041114000
.equ __section_code_user_0              , 0x0000000043900000
.equ code_user_1                        , 0x0000000041115000
.equ __section_code_user_1              , 0x0000000043901000
.equ code_user_2                        , 0x0000000041116000
.equ __section_code_user_2              , 0x0000000043902000
.equ code_user_3                        , 0x0000000041117000
.equ __section_code_user_3              , 0x0000000043903000
.equ code_user_4                        , 0x0000000041118000
.equ __section_code_user_4              , 0x0000000043904000
.equ code_user_5                        , 0x0000000041119000
.equ __section_code_user_5              , 0x0000000043905000
.equ code_user_6                        , 0x000000004111a000
.equ __section_code_user_6              , 0x0000000043906000
.equ code_user_7                        , 0x000000004111b000
.equ __section_code_user_7              , 0x0000000043907000
.equ code_user_8                        , 0x000000004111c000
.equ __section_code_user_8              , 0x0000000043908000
.equ code_user_9                        , 0x000000004111d000
.equ __section_code_user_9              , 0x0000000043909000
.equ code_user_10                       , 0x000000004111e000
.equ __section_code_user_10             , 0x000000004390a000
.equ code_user_11                       , 0x000000004111f000
.equ __section_code_user_11             , 0x000000004390b000
.equ code_user_12                       , 0x0000000041120000
.equ __section_code_user_12             , 0x000000004390c000
.equ code_user_13                       , 0x0000000041121000
.equ __section_code_user_13             , 0x000000004390d000
.equ code_user_14                       , 0x0000000041122000
.equ __section_code_user_14             , 0x000000004390e000
.equ code_user_15                       , 0x0000000041123000
.equ __section_code_user_15             , 0x000000004390f000
.equ code_user_16                       , 0x0000000041124000
.equ __section_code_user_16             , 0x0000000043910000
.equ code_user_17                       , 0x0000000041125000
.equ __section_code_user_17             , 0x0000000043911000
.equ code_user_18                       , 0x0000000041126000
.equ __section_code_user_18             , 0x0000000043912000
.equ code_user_19                       , 0x0000000041127000
.equ __section_code_user_19             , 0x0000000043913000
.equ code_user_20                       , 0x0000000041128000
.equ __section_code_user_20             , 0x0000000043914000
.equ code_user_21                       , 0x0000000041129000
.equ __section_code_user_21             , 0x0000000043915000
.equ code_user_22                       , 0x000000004112a000
.equ __section_code_user_22             , 0x0000000043916000
.equ code_user_23                       , 0x000000004112b000
.equ __section_code_user_23             , 0x0000000043917000
.equ code_user_24                       , 0x000000004112c000
.equ __section_code_user_24             , 0x0000000043918000
.equ code_user_25                       , 0x000000004112d000
.equ __section_code_user_25             , 0x0000000043919000
.equ code_user_26                       , 0x000000004112e000
.equ __section_code_user_26             , 0x000000004391a000
.equ code_user_27                       , 0x000000004112f000
.equ __section_code_user_27             , 0x000000004391b000
.equ code_user_28                       , 0x0000000041130000
.equ __section_code_user_28             , 0x000000004391c000
.equ code_user_29                       , 0x0000000041131000
.equ __section_code_user_29             , 0x000000004391d000
.equ code_user_30                       , 0x0000000041132000
.equ __section_code_user_30             , 0x000000004391e000
.equ code_user_31                       , 0x0000000041133000
.equ __section_code_user_31             , 0x000000004391f000
.equ code_user_32                       , 0x0000000041134000
.equ __section_code_user_32             , 0x0000000043920000
.equ code_user_33                       , 0x0000000041135000
.equ __section_code_user_33             , 0x0000000043921000
.equ code_user_34                       , 0x0000000041136000
.equ __section_code_user_34             , 0x0000000043922000
.equ code_user_35                       , 0x0000000041137000
.equ __section_code_user_35             , 0x0000000043923000
.equ code_user_36                       , 0x0000000041138000
.equ __section_code_user_36             , 0x0000000043924000
.equ code_user_37                       , 0x0000000041139000
.equ __section_code_user_37             , 0x0000000043925000
.equ code_user_38                       , 0x000000004113a000
.equ __section_code_user_38             , 0x0000000043926000
.equ code_user_39                       , 0x000000004113b000
.equ __section_code_user_39             , 0x0000000043927000
.equ code_user_40                       , 0x000000004113c000
.equ __section_code_user_40             , 0x0000000043928000
.equ code_user_41                       , 0x000000004113d000
.equ __section_code_user_41             , 0x0000000043929000
.equ code_user_42                       , 0x000000004113e000
.equ __section_code_user_42             , 0x000000004392a000
.equ code_user_43                       , 0x000000004113f000
.equ __section_code_user_43             , 0x000000004392b000
.equ code_user_44                       , 0x0000000041140000
.equ __section_code_user_44             , 0x000000004392c000
.equ code_user_45                       , 0x0000000041141000
.equ __section_code_user_45             , 0x000000004392d000
.equ code_user_46                       , 0x0000000041142000
.equ __section_code_user_46             , 0x000000004392e000
.equ code_user_47                       , 0x0000000041143000
.equ __section_code_user_47             , 0x000000004392f000
.equ code_user_48                       , 0x0000000041144000
.equ __section_code_user_48             , 0x0000000043930000
.equ code_user_49                       , 0x0000000041145000
.equ __section_code_user_49             , 0x0000000043931000
.equ code_user_50                       , 0x0000000041146000
.equ __section_code_user_50             , 0x0000000043932000
.equ code_user_51                       , 0x0000000041147000
.equ __section_code_user_51             , 0x0000000043933000
.equ code_user_52                       , 0x0000000041148000
.equ __section_code_user_52             , 0x0000000043934000
.equ code_user_53                       , 0x0000000041149000
.equ __section_code_user_53             , 0x0000000043935000
.equ code_user_54                       , 0x000000004114a000
.equ __section_code_user_54             , 0x0000000043936000
.equ code_user_55                       , 0x000000004114b000
.equ __section_code_user_55             , 0x0000000043937000
.equ code_user_56                       , 0x000000004114c000
.equ __section_code_user_56             , 0x0000000043938000
.equ code_user_57                       , 0x000000004114d000
.equ __section_code_user_57             , 0x0000000043939000
.equ code_user_58                       , 0x000000004114e000
.equ __section_code_user_58             , 0x000000004393a000
.equ code_user_59                       , 0x000000004114f000
.equ __section_code_user_59             , 0x000000004393b000
.equ code_user_60                       , 0x0000000041150000
.equ __section_code_user_60             , 0x000000004393c000
.equ code_user_61                       , 0x0000000041151000
.equ __section_code_user_61             , 0x000000004393d000
.equ code_user_62                       , 0x0000000041152000
.equ __section_code_user_62             , 0x000000004393e000
.equ code_user_63                       , 0x0000000041153000
.equ __section_code_user_63             , 0x000000004393f000
.equ code_user_64                       , 0x0000000041154000
.equ __section_code_user_64             , 0x0000000043940000
.equ code_user_65                       , 0x0000000041155000
.equ __section_code_user_65             , 0x0000000043941000
.equ code_user_66                       , 0x0000000041156000
.equ __section_code_user_66             , 0x0000000043942000
.equ code_user_67                       , 0x0000000041157000
.equ __section_code_user_67             , 0x0000000043943000
.equ code_user_68                       , 0x0000000041158000
.equ __section_code_user_68             , 0x0000000043944000
.equ code_user_69                       , 0x0000000041159000
.equ __section_code_user_69             , 0x0000000043945000
.equ code_user_70                       , 0x000000004115a000
.equ __section_code_user_70             , 0x0000000043946000
.equ code_user_71                       , 0x000000004115b000
.equ __section_code_user_71             , 0x0000000043947000
.equ code_user_72                       , 0x000000004115c000
.equ __section_code_user_72             , 0x0000000043948000
.equ code_user_73                       , 0x000000004115d000
.equ __section_code_user_73             , 0x0000000043949000
.equ code_user_74                       , 0x000000004115e000
.equ __section_code_user_74             , 0x000000004394a000
.equ code_user_75                       , 0x000000004115f000
.equ __section_code_user_75             , 0x000000004394b000
.equ code_user_76                       , 0x0000000041160000
.equ __section_code_user_76             , 0x000000004394c000
.equ code_user_77                       , 0x0000000041161000
.equ __section_code_user_77             , 0x000000004394d000
.equ code_user_78                       , 0x0000000041162000
.equ __section_code_user_78             , 0x000000004394e000
.equ code_user_79                       , 0x0000000041163000
.equ __section_code_user_79             , 0x000000004394f000
.equ code_user_80                       , 0x0000000041164000
.equ __section_code_user_80             , 0x0000000043950000
.equ code_user_81                       , 0x0000000041165000
.equ __section_code_user_81             , 0x0000000043951000
.equ code_user_82                       , 0x0000000041166000
.equ __section_code_user_82             , 0x0000000043952000
.equ code_user_83                       , 0x0000000041167000
.equ __section_code_user_83             , 0x0000000043953000
.equ code_user_84                       , 0x0000000041168000
.equ __section_code_user_84             , 0x0000000043954000
.equ code_user_85                       , 0x0000000041169000
.equ __section_code_user_85             , 0x0000000043955000
.equ code_user_86                       , 0x000000004116a000
.equ __section_code_user_86             , 0x0000000043956000
.equ code_user_87                       , 0x000000004116b000
.equ __section_code_user_87             , 0x0000000043957000
.equ code_user_88                       , 0x000000004116c000
.equ __section_code_user_88             , 0x0000000043958000
.equ code_user_89                       , 0x000000004116d000
.equ __section_code_user_89             , 0x0000000043959000
.equ code_user_90                       , 0x000000004116e000
.equ __section_code_user_90             , 0x000000004395a000
.equ code_user_91                       , 0x000000004116f000
.equ __section_code_user_91             , 0x000000004395b000
.equ code_user_92                       , 0x0000000041170000
.equ __section_code_user_92             , 0x000000004395c000
.equ code_user_93                       , 0x0000000041171000
.equ __section_code_user_93             , 0x000000004395d000
.equ code_user_94                       , 0x0000000041172000
.equ __section_code_user_94             , 0x000000004395e000
.equ code_user_95                       , 0x0000000041173000
.equ __section_code_user_95             , 0x000000004395f000
.equ code_user_96                       , 0x0000000041174000
.equ __section_code_user_96             , 0x0000000043960000
.equ code_user_97                       , 0x0000000041175000
.equ __section_code_user_97             , 0x0000000043961000
.equ code_user_98                       , 0x0000000041176000
.equ __section_code_user_98             , 0x0000000043962000
.equ code_user_99                       , 0x0000000041177000
.equ __section_code_user_99             , 0x0000000043963000
.equ code_user_100                      , 0x0000000041178000
.equ __section_code_user_100            , 0x0000000043964000
.equ code_user_101                      , 0x0000000041179000
.equ __section_code_user_101            , 0x0000000043965000
.equ code_user_102                      , 0x000000004117a000
.equ __section_code_user_102            , 0x0000000043966000
.equ code_user_103                      , 0x000000004117b000
.equ __section_code_user_103            , 0x0000000043967000
.equ code_user_104                      , 0x000000004117c000
.equ __section_code_user_104            , 0x0000000043968000
.equ code_user_105                      , 0x000000004117d000
.equ __section_code_user_105            , 0x0000000043969000
.equ code_user_106                      , 0x000000004117e000
.equ __section_code_user_106            , 0x000000004396a000
.equ code_user_107                      , 0x000000004117f000
.equ __section_code_user_107            , 0x000000004396b000
.equ code_user_108                      , 0x0000000041180000
.equ __section_code_user_108            , 0x000000004396c000
.equ code_user_109                      , 0x0000000041181000
.equ __section_code_user_109            , 0x000000004396d000
.equ code_user_110                      , 0x0000000041182000
.equ __section_code_user_110            , 0x000000004396e000
.equ code_user_111                      , 0x0000000041183000
.equ __section_code_user_111            , 0x000000004396f000
.equ code_user_112                      , 0x0000000041184000
.equ __section_code_user_112            , 0x0000000043970000
.equ code_user_113                      , 0x0000000041185000
.equ __section_code_user_113            , 0x0000000043971000
.equ code_user_114                      , 0x0000000041186000
.equ __section_code_user_114            , 0x0000000043972000
.equ code_user_115                      , 0x0000000041187000
.equ __section_code_user_115            , 0x0000000043973000
.equ code_user_116                      , 0x0000000041188000
.equ __section_code_user_116            , 0x0000000043974000
.equ code_user_117                      , 0x0000000041189000
.equ __section_code_user_117            , 0x0000000043975000
.equ code_user_118                      , 0x000000004118a000
.equ __section_code_user_118            , 0x0000000043976000
.equ code_user_119                      , 0x000000004118b000
.equ __section_code_user_119            , 0x0000000043977000
.equ code_user_120                      , 0x000000004118c000
.equ __section_code_user_120            , 0x0000000043978000
.equ code_user_121                      , 0x000000004118d000
.equ __section_code_user_121            , 0x0000000043979000
.equ code_user_122                      , 0x000000004118e000
.equ __section_code_user_122            , 0x000000004397a000
.equ code_user_123                      , 0x000000004118f000
.equ __section_code_user_123            , 0x000000004397b000
.equ code_user_124                      , 0x0000000041190000
.equ __section_code_user_124            , 0x000000004397c000
.equ code_user_125                      , 0x0000000041191000
.equ __section_code_user_125            , 0x000000004397d000
.equ code_user_126                      , 0x0000000041192000
.equ __section_code_user_126            , 0x000000004397e000
.equ code_user_127                      , 0x0000000041193000
.equ __section_code_user_127            , 0x000000004397f000
.equ code_machine_0                     , 0x0000000041194000
.equ __section_code_machine_0           , 0x0000000043980000
.equ code_machine_1                     , 0x0000000041195000
.equ __section_code_machine_1           , 0x0000000043981000
.equ code_machine_2                     , 0x0000000041196000
.equ __section_code_machine_2           , 0x0000000043982000
.equ code_machine_3                     , 0x0000000041197000
.equ __section_code_machine_3           , 0x0000000043983000
.equ code_machine_4                     , 0x0000000041198000
.equ __section_code_machine_4           , 0x0000000043984000
.equ code_machine_5                     , 0x0000000041199000
.equ __section_code_machine_5           , 0x0000000043985000
.equ code_machine_6                     , 0x000000004119a000
.equ __section_code_machine_6           , 0x0000000043986000
.equ code_machine_7                     , 0x000000004119b000
.equ __section_code_machine_7           , 0x0000000043987000
.equ code_machine_8                     , 0x000000004119c000
.equ __section_code_machine_8           , 0x0000000043988000
.equ code_machine_9                     , 0x000000004119d000
.equ __section_code_machine_9           , 0x0000000043989000
.equ code_machine_10                    , 0x000000004119e000
.equ __section_code_machine_10          , 0x000000004398a000
.equ code_machine_11                    , 0x000000004119f000
.equ __section_code_machine_11          , 0x000000004398b000
.equ code_machine_12                    , 0x00000000411a0000
.equ __section_code_machine_12          , 0x000000004398c000
.equ code_machine_13                    , 0x00000000411a1000
.equ __section_code_machine_13          , 0x000000004398d000
.equ code_machine_14                    , 0x00000000411a2000
.equ __section_code_machine_14          , 0x000000004398e000
.equ code_machine_15                    , 0x00000000411a3000
.equ __section_code_machine_15          , 0x000000004398f000
.equ code_machine_16                    , 0x00000000411a4000
.equ __section_code_machine_16          , 0x0000000043990000
.equ code_machine_17                    , 0x00000000411a5000
.equ __section_code_machine_17          , 0x0000000043991000
.equ code_machine_18                    , 0x00000000411a6000
.equ __section_code_machine_18          , 0x0000000043992000
.equ code_machine_19                    , 0x00000000411a7000
.equ __section_code_machine_19          , 0x0000000043993000
.equ code_machine_20                    , 0x00000000411a8000
.equ __section_code_machine_20          , 0x0000000043994000
.equ code_machine_21                    , 0x00000000411a9000
.equ __section_code_machine_21          , 0x0000000043995000
.equ code_machine_22                    , 0x00000000411aa000
.equ __section_code_machine_22          , 0x0000000043996000
.equ code_machine_23                    , 0x00000000411ab000
.equ __section_code_machine_23          , 0x0000000043997000
.equ code_machine_24                    , 0x00000000411ac000
.equ __section_code_machine_24          , 0x0000000043998000
.equ code_machine_25                    , 0x00000000411ad000
.equ __section_code_machine_25          , 0x0000000043999000
.equ code_machine_26                    , 0x00000000411ae000
.equ __section_code_machine_26          , 0x000000004399a000
.equ code_machine_27                    , 0x00000000411af000
.equ __section_code_machine_27          , 0x000000004399b000
.equ code_machine_28                    , 0x00000000411b0000
.equ __section_code_machine_28          , 0x000000004399c000
.equ code_machine_29                    , 0x00000000411b1000
.equ __section_code_machine_29          , 0x000000004399d000
.equ code_machine_30                    , 0x00000000411b2000
.equ __section_code_machine_30          , 0x000000004399e000
.equ code_machine_31                    , 0x00000000411b3000
.equ __section_code_machine_31          , 0x000000004399f000
.equ code_machine_32                    , 0x00000000411b4000
.equ __section_code_machine_32          , 0x00000000439a0000
.equ code_machine_33                    , 0x00000000411b5000
.equ __section_code_machine_33          , 0x00000000439a1000
.equ code_machine_34                    , 0x00000000411b6000
.equ __section_code_machine_34          , 0x00000000439a2000
.equ code_machine_35                    , 0x00000000411b7000
.equ __section_code_machine_35          , 0x00000000439a3000
.equ code_machine_36                    , 0x00000000411b8000
.equ __section_code_machine_36          , 0x00000000439a4000
.equ code_machine_37                    , 0x00000000411b9000
.equ __section_code_machine_37          , 0x00000000439a5000
.equ code_machine_38                    , 0x00000000411ba000
.equ __section_code_machine_38          , 0x00000000439a6000
.equ code_machine_39                    , 0x00000000411bb000
.equ __section_code_machine_39          , 0x00000000439a7000
.equ code_machine_40                    , 0x00000000411bc000
.equ __section_code_machine_40          , 0x00000000439a8000
.equ code_machine_41                    , 0x00000000411bd000
.equ __section_code_machine_41          , 0x00000000439a9000
.equ code_machine_42                    , 0x00000000411be000
.equ __section_code_machine_42          , 0x00000000439aa000
.equ code_machine_43                    , 0x00000000411bf000
.equ __section_code_machine_43          , 0x00000000439ab000
.equ code_machine_44                    , 0x00000000411c0000
.equ __section_code_machine_44          , 0x00000000439ac000
.equ code_machine_45                    , 0x00000000411c1000
.equ __section_code_machine_45          , 0x00000000439ad000
.equ code_machine_46                    , 0x00000000411c2000
.equ __section_code_machine_46          , 0x00000000439ae000
.equ code_machine_47                    , 0x00000000411c3000
.equ __section_code_machine_47          , 0x00000000439af000
.equ code_machine_48                    , 0x00000000411c4000
.equ __section_code_machine_48          , 0x00000000439b0000
.equ code_machine_49                    , 0x00000000411c5000
.equ __section_code_machine_49          , 0x00000000439b1000
.equ code_machine_50                    , 0x00000000411c6000
.equ __section_code_machine_50          , 0x00000000439b2000
.equ code_machine_51                    , 0x00000000411c7000
.equ __section_code_machine_51          , 0x00000000439b3000
.equ code_machine_52                    , 0x00000000411c8000
.equ __section_code_machine_52          , 0x00000000439b4000
.equ code_machine_53                    , 0x00000000411c9000
.equ __section_code_machine_53          , 0x00000000439b5000
.equ code_machine_54                    , 0x00000000411ca000
.equ __section_code_machine_54          , 0x00000000439b6000
.equ code_machine_55                    , 0x00000000411cb000
.equ __section_code_machine_55          , 0x00000000439b7000
.equ code_machine_56                    , 0x00000000411cc000
.equ __section_code_machine_56          , 0x00000000439b8000
.equ code_machine_57                    , 0x00000000411cd000
.equ __section_code_machine_57          , 0x00000000439b9000
.equ code_machine_58                    , 0x00000000411ce000
.equ __section_code_machine_58          , 0x00000000439ba000
.equ code_machine_59                    , 0x00000000411cf000
.equ __section_code_machine_59          , 0x00000000439bb000
.equ code_machine_60                    , 0x00000000411d0000
.equ __section_code_machine_60          , 0x00000000439bc000
.equ code_machine_61                    , 0x00000000411d1000
.equ __section_code_machine_61          , 0x00000000439bd000
.equ code_machine_62                    , 0x00000000411d2000
.equ __section_code_machine_62          , 0x00000000439be000
.equ code_machine_63                    , 0x00000000411d3000
.equ __section_code_machine_63          , 0x00000000439bf000
.equ code_machine_64                    , 0x00000000411d4000
.equ __section_code_machine_64          , 0x00000000439c0000
.equ code_machine_65                    , 0x00000000411d5000
.equ __section_code_machine_65          , 0x00000000439c1000
.equ code_machine_66                    , 0x00000000411d6000
.equ __section_code_machine_66          , 0x00000000439c2000
.equ code_machine_67                    , 0x00000000411d7000
.equ __section_code_machine_67          , 0x00000000439c3000
.equ code_machine_68                    , 0x00000000411d8000
.equ __section_code_machine_68          , 0x00000000439c4000
.equ code_machine_69                    , 0x00000000411d9000
.equ __section_code_machine_69          , 0x00000000439c5000
.equ code_machine_70                    , 0x00000000411da000
.equ __section_code_machine_70          , 0x00000000439c6000
.equ code_machine_71                    , 0x00000000411db000
.equ __section_code_machine_71          , 0x00000000439c7000
.equ code_machine_72                    , 0x00000000411dc000
.equ __section_code_machine_72          , 0x00000000439c8000
.equ code_machine_73                    , 0x00000000411dd000
.equ __section_code_machine_73          , 0x00000000439c9000
.equ code_machine_74                    , 0x00000000411de000
.equ __section_code_machine_74          , 0x00000000439ca000
.equ code_machine_75                    , 0x00000000411df000
.equ __section_code_machine_75          , 0x00000000439cb000
.equ code_machine_76                    , 0x00000000411e0000
.equ __section_code_machine_76          , 0x00000000439cc000
.equ code_machine_77                    , 0x00000000411e1000
.equ __section_code_machine_77          , 0x00000000439cd000
.equ code_machine_78                    , 0x00000000411e2000
.equ __section_code_machine_78          , 0x00000000439ce000
.equ code_machine_79                    , 0x00000000411e3000
.equ __section_code_machine_79          , 0x00000000439cf000
.equ code_machine_80                    , 0x00000000411e4000
.equ __section_code_machine_80          , 0x00000000439d0000
.equ code_machine_81                    , 0x00000000411e5000
.equ __section_code_machine_81          , 0x00000000439d1000
.equ code_machine_82                    , 0x00000000411e6000
.equ __section_code_machine_82          , 0x00000000439d2000
.equ code_machine_83                    , 0x00000000411e7000
.equ __section_code_machine_83          , 0x00000000439d3000
.equ code_machine_84                    , 0x00000000411e8000
.equ __section_code_machine_84          , 0x00000000439d4000
.equ code_machine_85                    , 0x00000000411e9000
.equ __section_code_machine_85          , 0x00000000439d5000
.equ code_machine_86                    , 0x00000000411ea000
.equ __section_code_machine_86          , 0x00000000439d6000
.equ code_machine_87                    , 0x00000000411eb000
.equ __section_code_machine_87          , 0x00000000439d7000
.equ code_machine_88                    , 0x00000000411ec000
.equ __section_code_machine_88          , 0x00000000439d8000
.equ code_machine_89                    , 0x00000000411ed000
.equ __section_code_machine_89          , 0x00000000439d9000
.equ code_machine_90                    , 0x00000000411ee000
.equ __section_code_machine_90          , 0x00000000439da000
.equ code_machine_91                    , 0x00000000411ef000
.equ __section_code_machine_91          , 0x00000000439db000
.equ code_machine_92                    , 0x00000000411f0000
.equ __section_code_machine_92          , 0x00000000439dc000
.equ code_machine_93                    , 0x00000000411f1000
.equ __section_code_machine_93          , 0x00000000439dd000
.equ code_machine_94                    , 0x00000000411f2000
.equ __section_code_machine_94          , 0x00000000439de000
.equ code_machine_95                    , 0x00000000411f3000
.equ __section_code_machine_95          , 0x00000000439df000
.equ code_machine_96                    , 0x00000000411f4000
.equ __section_code_machine_96          , 0x00000000439e0000
.equ code_machine_97                    , 0x00000000411f5000
.equ __section_code_machine_97          , 0x00000000439e1000
.equ code_machine_98                    , 0x00000000411f6000
.equ __section_code_machine_98          , 0x00000000439e2000
.equ code_machine_99                    , 0x00000000411f7000
.equ __section_code_machine_99          , 0x00000000439e3000
.equ code_machine_100                   , 0x00000000411f8000
.equ __section_code_machine_100         , 0x00000000439e4000
.equ code_machine_101                   , 0x00000000411f9000
.equ __section_code_machine_101         , 0x00000000439e5000
.equ code_machine_102                   , 0x00000000411fa000
.equ __section_code_machine_102         , 0x00000000439e6000
.equ code_machine_103                   , 0x00000000411fb000
.equ __section_code_machine_103         , 0x00000000439e7000
.equ code_machine_104                   , 0x00000000411fc000
.equ __section_code_machine_104         , 0x00000000439e8000
.equ code_machine_105                   , 0x00000000411fd000
.equ __section_code_machine_105         , 0x00000000439e9000
.equ code_machine_106                   , 0x00000000411fe000
.equ __section_code_machine_106         , 0x00000000439ea000
.equ code_machine_107                   , 0x00000000411ff000
.equ __section_code_machine_107         , 0x00000000439eb000
.equ code_machine_108                   , 0x0000000041200000
.equ __section_code_machine_108         , 0x00000000439ec000
.equ code_machine_109                   , 0x0000000041201000
.equ __section_code_machine_109         , 0x00000000439ed000
.equ code_machine_110                   , 0x0000000041202000
.equ __section_code_machine_110         , 0x00000000439ee000
.equ code_machine_111                   , 0x0000000041203000
.equ __section_code_machine_111         , 0x00000000439ef000
.equ code_machine_112                   , 0x0000000041204000
.equ __section_code_machine_112         , 0x00000000439f0000
.equ code_machine_113                   , 0x0000000041205000
.equ __section_code_machine_113         , 0x00000000439f1000
.equ code_machine_114                   , 0x0000000041206000
.equ __section_code_machine_114         , 0x00000000439f2000
.equ code_machine_115                   , 0x0000000041207000
.equ __section_code_machine_115         , 0x00000000439f3000
.equ code_machine_116                   , 0x0000000041208000
.equ __section_code_machine_116         , 0x00000000439f4000
.equ code_machine_117                   , 0x0000000041209000
.equ __section_code_machine_117         , 0x00000000439f5000
.equ code_machine_118                   , 0x000000004120a000
.equ __section_code_machine_118         , 0x00000000439f6000
.equ code_machine_119                   , 0x000000004120b000
.equ __section_code_machine_119         , 0x00000000439f7000
.equ code_machine_120                   , 0x000000004120c000
.equ __section_code_machine_120         , 0x00000000439f8000
.equ code_machine_121                   , 0x000000004120d000
.equ __section_code_machine_121         , 0x00000000439f9000
.equ code_machine_122                   , 0x000000004120e000
.equ __section_code_machine_122         , 0x00000000439fa000
.equ code_machine_123                   , 0x000000004120f000
.equ __section_code_machine_123         , 0x00000000439fb000
.equ code_machine_124                   , 0x0000000041210000
.equ __section_code_machine_124         , 0x00000000439fc000
.equ code_machine_125                   , 0x0000000041211000
.equ __section_code_machine_125         , 0x00000000439fd000
.equ code_machine_126                   , 0x0000000041212000
.equ __section_code_machine_126         , 0x00000000439fe000
.equ code_machine_127                   , 0x0000000041213000
.equ __section_code_machine_127         , 0x00000000439ff000
.equ csr_machine_0                      , 0x0000000041214000
.equ __section_csr_machine_0            , 0x0000000043a00000
.equ csr_super_0                        , 0x0000000041215000
.equ __section_csr_super_0              , 0x0000000043a01000
.equ data                               , 0x0000000f0f510000
.equ __section_data                     , 0x0000000044f8e000
.equ __section_data_1                   , 0x0000000f0f511000
.equ __section_data_1_phys              , 0x0000000044f8f000
.equ os_data                            , 0x0000000000004000
.equ __section_os_data                  , 0x0000000043ac0000
.equ __section_os_data_1                , 0x0000000000005000
.equ __section_os_data_1_phys           , 0x0000000043ac1000
.equ hart_context                       , 0x00000004eb1d9000
.equ __section_hart_context             , 0x000000004432a000
.equ hart_stack_0                       , 0x0000000060583000
.equ __section_hart_stack_0             , 0x000000004501c000
.equ io_htif                            , 0x0000000041040000
.equ io_htif_phys                       , 0x0000000041040000
.equ map_os_sptbr                       , 0x0000000043676000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0                               , 0x0000000000099000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0_phys                          , 0x0000000044fbf000
# ;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem1                               , 0x000000000ef05000
# ;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem1_phys                          , 0x0000000045021000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2                               , 0x0000000000391000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2_phys                          , 0x0000000044fc8000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3                               , 0x000000003f713000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3_phys                          , 0x000000004470c000
# ;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem4                               , 0x000000000ef03000
# ;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem4_phys                          , 0x000000004501f000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5                               , 0xffffffc675b5c000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5_phys                          , 0x0000000044fae000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6                               , 0x000000000fcbd000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6_phys                          , 0x0000000045020000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7                               , 0xffffffebcb4e2000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7_phys                          , 0x0000000044fc1000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage                     , 0x0000000000f2a000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage_phys                , 0x0000000043ac2000
# ;#page_mapping(lin_name=SID_HEXCEP_05_stack, phys_name=SID_HEXCEP_05_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_05_stack                , 0x0000000141adf000
# ;#page_mapping(lin_name=SID_HEXCEP_05_stack, phys_name=SID_HEXCEP_05_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_05_stack_phys           , 0x0000000044ff3000
# ;#page_mapping(lin_name=SID_HEXCEP_07_vs_mode_stack, phys_name=SID_HEXCEP_07_vs_mode_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_07_vs_mode_stack        , 0x0000000000ff4000
# ;#page_mapping(lin_name=SID_HEXCEP_07_vs_mode_stack, phys_name=SID_HEXCEP_07_vs_mode_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_07_vs_mode_stack_phys   , 0x0000000044456000
# ;#page_mapping(lin_name=SID_HEXCEP_08_stack, phys_name=SID_HEXCEP_08_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_08_stack                , 0x00000000003c6000
# ;#page_mapping(lin_name=SID_HEXCEP_08_stack, phys_name=SID_HEXCEP_08_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_08_stack_phys           , 0x000000004503a000
# ;#page_mapping(lin_name=SID_HEXCEP_09_mret_in_vs_vu_stack, phys_name=SID_HEXCEP_09_mret_in_vs_vu_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_mret_in_vs_vu_stack  , 0x00000000038c8000
# ;#page_mapping(lin_name=SID_HEXCEP_09_mret_in_vs_vu_stack, phys_name=SID_HEXCEP_09_mret_in_vs_vu_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_mret_in_vs_vu_stack_phys, 0x0000000043a02000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sret_vtsr1_vs_stack, phys_name=SID_HEXCEP_09_sret_vtsr1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack  , 0x00000000076a4000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sret_vtsr1_vs_stack, phys_name=SID_HEXCEP_09_sret_vtsr1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack_phys, 0x0000000045026000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack, 0x00000000408f8000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys, 0x0000000044fc0000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack, 0x000000006a53d000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys, 0x0000000043a1d000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_vvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_vvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_vvma_vs_stack , 0x0000000002636000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_vvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_vvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_vvma_vs_stack_phys, 0x00000000414e6000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_gvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_gvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_gvma_vs_stack , 0x000000372c572000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_gvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_gvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_gvma_vs_stack_phys, 0x0000000043a2c000
# ;#page_mapping(lin_name=SID_HEXCEP_10_stack, phys_name=SID_HEXCEP_10_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_10_stack                , 0x0000000000097000
# ;#page_mapping(lin_name=SID_HEXCEP_10_stack, phys_name=SID_HEXCEP_10_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_10_stack_phys           , 0x00000000435b3000
# ;#page_mapping(lin_name=SID_HEXCEP_11_stack, phys_name=SID_HEXCEP_11_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_11_stack                , 0x000000028a1d6000
# ;#page_mapping(lin_name=SID_HEXCEP_11_stack, phys_name=SID_HEXCEP_11_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_11_stack_phys           , 0x0000000044faf000
# ;#page_mapping(lin_name=SID_HEXCEP_16_fs0_both_stack, phys_name=SID_HEXCEP_16_fs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_fs0_both_stack       , 0x00000000018cf000
# ;#page_mapping(lin_name=SID_HEXCEP_16_fs0_both_stack, phys_name=SID_HEXCEP_16_fs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_fs0_both_stack_phys  , 0x000000004503c000
# ;#page_mapping(lin_name=SID_HEXCEP_16_vsstatus_fs0_stack, phys_name=SID_HEXCEP_16_vsstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_vsstatus_fs0_stack   , 0x000000000066f000
# ;#page_mapping(lin_name=SID_HEXCEP_16_vsstatus_fs0_stack, phys_name=SID_HEXCEP_16_vsstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_vsstatus_fs0_stack_phys, 0x0000000043617000
# ;#page_mapping(lin_name=SID_HEXCEP_16_sstatus_fs0_stack, phys_name=SID_HEXCEP_16_sstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_sstatus_fs0_stack    , 0x000000032ba14000
# ;#page_mapping(lin_name=SID_HEXCEP_16_sstatus_fs0_stack, phys_name=SID_HEXCEP_16_sstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_sstatus_fs0_stack_phys, 0x000000004450f000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vs0_both_stack, phys_name=SID_HEXCEP_17_vs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vs0_both_stack       , 0x000000003f715000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vs0_both_stack, phys_name=SID_HEXCEP_17_vs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vs0_both_stack_phys  , 0x0000000045018000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vsstatus_vs0_stack, phys_name=SID_HEXCEP_17_vsstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vsstatus_vs0_stack   , 0x0000000000016000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vsstatus_vs0_stack, phys_name=SID_HEXCEP_17_vsstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vsstatus_vs0_stack_phys, 0x0000000041216000
# ;#page_mapping(lin_name=SID_HEXCEP_17_sstatus_vs0_stack, phys_name=SID_HEXCEP_17_sstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_sstatus_vs0_stack    , 0x0000000007b38000
# ;#page_mapping(lin_name=SID_HEXCEP_17_sstatus_vs0_stack, phys_name=SID_HEXCEP_17_sstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_sstatus_vs0_stack_phys, 0x0000000044fc3000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_stack, phys_name=SID_HEXCEP_19_misaligned_amo_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_stack , 0x0000000000024000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_stack, phys_name=SID_HEXCEP_19_misaligned_amo_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_stack_phys, 0x0000000043a22000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_stack, phys_name=SID_HEXCEP_19_misaligned_lr_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_stack  , 0x00000000001d9000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_stack, phys_name=SID_HEXCEP_19_misaligned_lr_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_stack_phys, 0x0000000044fc5000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_stack, phys_name=SID_HEXCEP_19_misaligned_sc_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_stack  , 0x0000000478126000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_stack, phys_name=SID_HEXCEP_19_misaligned_sc_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_stack_phys, 0x0000000043a03000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_amo_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack, 0x000000368a80f000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_amo_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack_phys, 0x0000000043a20000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_lr_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack, 0x00000000003ed000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_lr_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack_phys, 0x0000000044fc6000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_sc_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack, 0x0000000000033000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_sc_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack_phys, 0x0000000044fb3000

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
.equ code_pa                            , 0x0000000043800000
.equ code_super_0_pa                    , 0x0000000043880000
.equ code_super_1_pa                    , 0x0000000043881000
.equ code_super_2_pa                    , 0x0000000043882000
.equ code_super_3_pa                    , 0x0000000043883000
.equ code_super_4_pa                    , 0x0000000043884000
.equ code_super_5_pa                    , 0x0000000043885000
.equ code_super_6_pa                    , 0x0000000043886000
.equ code_super_7_pa                    , 0x0000000043887000
.equ code_super_8_pa                    , 0x0000000043888000
.equ code_super_9_pa                    , 0x0000000043889000
.equ code_super_10_pa                   , 0x000000004388a000
.equ code_super_11_pa                   , 0x000000004388b000
.equ code_super_12_pa                   , 0x000000004388c000
.equ code_super_13_pa                   , 0x000000004388d000
.equ code_super_14_pa                   , 0x000000004388e000
.equ code_super_15_pa                   , 0x000000004388f000
.equ code_super_16_pa                   , 0x0000000043890000
.equ code_super_17_pa                   , 0x0000000043891000
.equ code_super_18_pa                   , 0x0000000043892000
.equ code_super_19_pa                   , 0x0000000043893000
.equ code_super_20_pa                   , 0x0000000043894000
.equ code_super_21_pa                   , 0x0000000043895000
.equ code_super_22_pa                   , 0x0000000043896000
.equ code_super_23_pa                   , 0x0000000043897000
.equ code_super_24_pa                   , 0x0000000043898000
.equ code_super_25_pa                   , 0x0000000043899000
.equ code_super_26_pa                   , 0x000000004389a000
.equ code_super_27_pa                   , 0x000000004389b000
.equ code_super_28_pa                   , 0x000000004389c000
.equ code_super_29_pa                   , 0x000000004389d000
.equ code_super_30_pa                   , 0x000000004389e000
.equ code_super_31_pa                   , 0x000000004389f000
.equ code_super_32_pa                   , 0x00000000438a0000
.equ code_super_33_pa                   , 0x00000000438a1000
.equ code_super_34_pa                   , 0x00000000438a2000
.equ code_super_35_pa                   , 0x00000000438a3000
.equ code_super_36_pa                   , 0x00000000438a4000
.equ code_super_37_pa                   , 0x00000000438a5000
.equ code_super_38_pa                   , 0x00000000438a6000
.equ code_super_39_pa                   , 0x00000000438a7000
.equ code_super_40_pa                   , 0x00000000438a8000
.equ code_super_41_pa                   , 0x00000000438a9000
.equ code_super_42_pa                   , 0x00000000438aa000
.equ code_super_43_pa                   , 0x00000000438ab000
.equ code_super_44_pa                   , 0x00000000438ac000
.equ code_super_45_pa                   , 0x00000000438ad000
.equ code_super_46_pa                   , 0x00000000438ae000
.equ code_super_47_pa                   , 0x00000000438af000
.equ code_super_48_pa                   , 0x00000000438b0000
.equ code_super_49_pa                   , 0x00000000438b1000
.equ code_super_50_pa                   , 0x00000000438b2000
.equ code_super_51_pa                   , 0x00000000438b3000
.equ code_super_52_pa                   , 0x00000000438b4000
.equ code_super_53_pa                   , 0x00000000438b5000
.equ code_super_54_pa                   , 0x00000000438b6000
.equ code_super_55_pa                   , 0x00000000438b7000
.equ code_super_56_pa                   , 0x00000000438b8000
.equ code_super_57_pa                   , 0x00000000438b9000
.equ code_super_58_pa                   , 0x00000000438ba000
.equ code_super_59_pa                   , 0x00000000438bb000
.equ code_super_60_pa                   , 0x00000000438bc000
.equ code_super_61_pa                   , 0x00000000438bd000
.equ code_super_62_pa                   , 0x00000000438be000
.equ code_super_63_pa                   , 0x00000000438bf000
.equ code_super_64_pa                   , 0x00000000438c0000
.equ code_super_65_pa                   , 0x00000000438c1000
.equ code_super_66_pa                   , 0x00000000438c2000
.equ code_super_67_pa                   , 0x00000000438c3000
.equ code_super_68_pa                   , 0x00000000438c4000
.equ code_super_69_pa                   , 0x00000000438c5000
.equ code_super_70_pa                   , 0x00000000438c6000
.equ code_super_71_pa                   , 0x00000000438c7000
.equ code_super_72_pa                   , 0x00000000438c8000
.equ code_super_73_pa                   , 0x00000000438c9000
.equ code_super_74_pa                   , 0x00000000438ca000
.equ code_super_75_pa                   , 0x00000000438cb000
.equ code_super_76_pa                   , 0x00000000438cc000
.equ code_super_77_pa                   , 0x00000000438cd000
.equ code_super_78_pa                   , 0x00000000438ce000
.equ code_super_79_pa                   , 0x00000000438cf000
.equ code_super_80_pa                   , 0x00000000438d0000
.equ code_super_81_pa                   , 0x00000000438d1000
.equ code_super_82_pa                   , 0x00000000438d2000
.equ code_super_83_pa                   , 0x00000000438d3000
.equ code_super_84_pa                   , 0x00000000438d4000
.equ code_super_85_pa                   , 0x00000000438d5000
.equ code_super_86_pa                   , 0x00000000438d6000
.equ code_super_87_pa                   , 0x00000000438d7000
.equ code_super_88_pa                   , 0x00000000438d8000
.equ code_super_89_pa                   , 0x00000000438d9000
.equ code_super_90_pa                   , 0x00000000438da000
.equ code_super_91_pa                   , 0x00000000438db000
.equ code_super_92_pa                   , 0x00000000438dc000
.equ code_super_93_pa                   , 0x00000000438dd000
.equ code_super_94_pa                   , 0x00000000438de000
.equ code_super_95_pa                   , 0x00000000438df000
.equ code_super_96_pa                   , 0x00000000438e0000
.equ code_super_97_pa                   , 0x00000000438e1000
.equ code_super_98_pa                   , 0x00000000438e2000
.equ code_super_99_pa                   , 0x00000000438e3000
.equ code_super_100_pa                  , 0x00000000438e4000
.equ code_super_101_pa                  , 0x00000000438e5000
.equ code_super_102_pa                  , 0x00000000438e6000
.equ code_super_103_pa                  , 0x00000000438e7000
.equ code_super_104_pa                  , 0x00000000438e8000
.equ code_super_105_pa                  , 0x00000000438e9000
.equ code_super_106_pa                  , 0x00000000438ea000
.equ code_super_107_pa                  , 0x00000000438eb000
.equ code_super_108_pa                  , 0x00000000438ec000
.equ code_super_109_pa                  , 0x00000000438ed000
.equ code_super_110_pa                  , 0x00000000438ee000
.equ code_super_111_pa                  , 0x00000000438ef000
.equ code_super_112_pa                  , 0x00000000438f0000
.equ code_super_113_pa                  , 0x00000000438f1000
.equ code_super_114_pa                  , 0x00000000438f2000
.equ code_super_115_pa                  , 0x00000000438f3000
.equ code_super_116_pa                  , 0x00000000438f4000
.equ code_super_117_pa                  , 0x00000000438f5000
.equ code_super_118_pa                  , 0x00000000438f6000
.equ code_super_119_pa                  , 0x00000000438f7000
.equ code_super_120_pa                  , 0x00000000438f8000
.equ code_super_121_pa                  , 0x00000000438f9000
.equ code_super_122_pa                  , 0x00000000438fa000
.equ code_super_123_pa                  , 0x00000000438fb000
.equ code_super_124_pa                  , 0x00000000438fc000
.equ code_super_125_pa                  , 0x00000000438fd000
.equ code_super_126_pa                  , 0x00000000438fe000
.equ code_super_127_pa                  , 0x00000000438ff000
.equ code_user_0_pa                     , 0x0000000043900000
.equ code_user_1_pa                     , 0x0000000043901000
.equ code_user_2_pa                     , 0x0000000043902000
.equ code_user_3_pa                     , 0x0000000043903000
.equ code_user_4_pa                     , 0x0000000043904000
.equ code_user_5_pa                     , 0x0000000043905000
.equ code_user_6_pa                     , 0x0000000043906000
.equ code_user_7_pa                     , 0x0000000043907000
.equ code_user_8_pa                     , 0x0000000043908000
.equ code_user_9_pa                     , 0x0000000043909000
.equ code_user_10_pa                    , 0x000000004390a000
.equ code_user_11_pa                    , 0x000000004390b000
.equ code_user_12_pa                    , 0x000000004390c000
.equ code_user_13_pa                    , 0x000000004390d000
.equ code_user_14_pa                    , 0x000000004390e000
.equ code_user_15_pa                    , 0x000000004390f000
.equ code_user_16_pa                    , 0x0000000043910000
.equ code_user_17_pa                    , 0x0000000043911000
.equ code_user_18_pa                    , 0x0000000043912000
.equ code_user_19_pa                    , 0x0000000043913000
.equ code_user_20_pa                    , 0x0000000043914000
.equ code_user_21_pa                    , 0x0000000043915000
.equ code_user_22_pa                    , 0x0000000043916000
.equ code_user_23_pa                    , 0x0000000043917000
.equ code_user_24_pa                    , 0x0000000043918000
.equ code_user_25_pa                    , 0x0000000043919000
.equ code_user_26_pa                    , 0x000000004391a000
.equ code_user_27_pa                    , 0x000000004391b000
.equ code_user_28_pa                    , 0x000000004391c000
.equ code_user_29_pa                    , 0x000000004391d000
.equ code_user_30_pa                    , 0x000000004391e000
.equ code_user_31_pa                    , 0x000000004391f000
.equ code_user_32_pa                    , 0x0000000043920000
.equ code_user_33_pa                    , 0x0000000043921000
.equ code_user_34_pa                    , 0x0000000043922000
.equ code_user_35_pa                    , 0x0000000043923000
.equ code_user_36_pa                    , 0x0000000043924000
.equ code_user_37_pa                    , 0x0000000043925000
.equ code_user_38_pa                    , 0x0000000043926000
.equ code_user_39_pa                    , 0x0000000043927000
.equ code_user_40_pa                    , 0x0000000043928000
.equ code_user_41_pa                    , 0x0000000043929000
.equ code_user_42_pa                    , 0x000000004392a000
.equ code_user_43_pa                    , 0x000000004392b000
.equ code_user_44_pa                    , 0x000000004392c000
.equ code_user_45_pa                    , 0x000000004392d000
.equ code_user_46_pa                    , 0x000000004392e000
.equ code_user_47_pa                    , 0x000000004392f000
.equ code_user_48_pa                    , 0x0000000043930000
.equ code_user_49_pa                    , 0x0000000043931000
.equ code_user_50_pa                    , 0x0000000043932000
.equ code_user_51_pa                    , 0x0000000043933000
.equ code_user_52_pa                    , 0x0000000043934000
.equ code_user_53_pa                    , 0x0000000043935000
.equ code_user_54_pa                    , 0x0000000043936000
.equ code_user_55_pa                    , 0x0000000043937000
.equ code_user_56_pa                    , 0x0000000043938000
.equ code_user_57_pa                    , 0x0000000043939000
.equ code_user_58_pa                    , 0x000000004393a000
.equ code_user_59_pa                    , 0x000000004393b000
.equ code_user_60_pa                    , 0x000000004393c000
.equ code_user_61_pa                    , 0x000000004393d000
.equ code_user_62_pa                    , 0x000000004393e000
.equ code_user_63_pa                    , 0x000000004393f000
.equ code_user_64_pa                    , 0x0000000043940000
.equ code_user_65_pa                    , 0x0000000043941000
.equ code_user_66_pa                    , 0x0000000043942000
.equ code_user_67_pa                    , 0x0000000043943000
.equ code_user_68_pa                    , 0x0000000043944000
.equ code_user_69_pa                    , 0x0000000043945000
.equ code_user_70_pa                    , 0x0000000043946000
.equ code_user_71_pa                    , 0x0000000043947000
.equ code_user_72_pa                    , 0x0000000043948000
.equ code_user_73_pa                    , 0x0000000043949000
.equ code_user_74_pa                    , 0x000000004394a000
.equ code_user_75_pa                    , 0x000000004394b000
.equ code_user_76_pa                    , 0x000000004394c000
.equ code_user_77_pa                    , 0x000000004394d000
.equ code_user_78_pa                    , 0x000000004394e000
.equ code_user_79_pa                    , 0x000000004394f000
.equ code_user_80_pa                    , 0x0000000043950000
.equ code_user_81_pa                    , 0x0000000043951000
.equ code_user_82_pa                    , 0x0000000043952000
.equ code_user_83_pa                    , 0x0000000043953000
.equ code_user_84_pa                    , 0x0000000043954000
.equ code_user_85_pa                    , 0x0000000043955000
.equ code_user_86_pa                    , 0x0000000043956000
.equ code_user_87_pa                    , 0x0000000043957000
.equ code_user_88_pa                    , 0x0000000043958000
.equ code_user_89_pa                    , 0x0000000043959000
.equ code_user_90_pa                    , 0x000000004395a000
.equ code_user_91_pa                    , 0x000000004395b000
.equ code_user_92_pa                    , 0x000000004395c000
.equ code_user_93_pa                    , 0x000000004395d000
.equ code_user_94_pa                    , 0x000000004395e000
.equ code_user_95_pa                    , 0x000000004395f000
.equ code_user_96_pa                    , 0x0000000043960000
.equ code_user_97_pa                    , 0x0000000043961000
.equ code_user_98_pa                    , 0x0000000043962000
.equ code_user_99_pa                    , 0x0000000043963000
.equ code_user_100_pa                   , 0x0000000043964000
.equ code_user_101_pa                   , 0x0000000043965000
.equ code_user_102_pa                   , 0x0000000043966000
.equ code_user_103_pa                   , 0x0000000043967000
.equ code_user_104_pa                   , 0x0000000043968000
.equ code_user_105_pa                   , 0x0000000043969000
.equ code_user_106_pa                   , 0x000000004396a000
.equ code_user_107_pa                   , 0x000000004396b000
.equ code_user_108_pa                   , 0x000000004396c000
.equ code_user_109_pa                   , 0x000000004396d000
.equ code_user_110_pa                   , 0x000000004396e000
.equ code_user_111_pa                   , 0x000000004396f000
.equ code_user_112_pa                   , 0x0000000043970000
.equ code_user_113_pa                   , 0x0000000043971000
.equ code_user_114_pa                   , 0x0000000043972000
.equ code_user_115_pa                   , 0x0000000043973000
.equ code_user_116_pa                   , 0x0000000043974000
.equ code_user_117_pa                   , 0x0000000043975000
.equ code_user_118_pa                   , 0x0000000043976000
.equ code_user_119_pa                   , 0x0000000043977000
.equ code_user_120_pa                   , 0x0000000043978000
.equ code_user_121_pa                   , 0x0000000043979000
.equ code_user_122_pa                   , 0x000000004397a000
.equ code_user_123_pa                   , 0x000000004397b000
.equ code_user_124_pa                   , 0x000000004397c000
.equ code_user_125_pa                   , 0x000000004397d000
.equ code_user_126_pa                   , 0x000000004397e000
.equ code_user_127_pa                   , 0x000000004397f000
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
.equ csr_super_0_pa                     , 0x0000000043a01000
.equ data_pa                            , 0x0000000044f8e000
.equ os_data_pa                         , 0x0000000043ac0000
.equ hart_context_pa                    , 0x000000004432a000
.equ hart_stack_0_pa                    , 0x000000004501c000
.equ io_htif_pa                         , 0x0000000041040000
.equ mem0_pa                            , 0x0000000044fbf000
.equ mem1_pa                            , 0x0000000045021000
.equ mem2_pa                            , 0x0000000044fc8000
.equ mem3_pa                            , 0x000000004470c000
.equ mem4_pa                            , 0x000000004501f000
.equ mem5_pa                            , 0x0000000044fae000
.equ mem6_pa                            , 0x0000000045020000
.equ mem7_pa                            , 0x0000000044fc1000
.equ tp_csr_storage_pa                  , 0x0000000043ac2000
.equ SID_HEXCEP_05_stack_pa             , 0x0000000044ff3000
.equ SID_HEXCEP_07_vs_mode_stack_pa     , 0x0000000044456000
.equ SID_HEXCEP_08_stack_pa             , 0x000000004503a000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack_pa, 0x0000000043a02000
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack_pa, 0x0000000045026000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_pa, 0x0000000044fc0000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_pa, 0x0000000043a1d000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack_pa, 0x00000000414e6000
.equ SID_HEXCEP_09_hinval_gvma_vs_stack_pa, 0x0000000043a2c000
.equ SID_HEXCEP_10_stack_pa             , 0x00000000435b3000
.equ SID_HEXCEP_11_stack_pa             , 0x0000000044faf000
.equ SID_HEXCEP_16_fs0_both_stack_pa    , 0x000000004503c000
.equ SID_HEXCEP_16_vsstatus_fs0_stack_pa, 0x0000000043617000
.equ SID_HEXCEP_16_sstatus_fs0_stack_pa , 0x000000004450f000
.equ SID_HEXCEP_17_vs0_both_stack_pa    , 0x0000000045018000
.equ SID_HEXCEP_17_vsstatus_vs0_stack_pa, 0x0000000041216000
.equ SID_HEXCEP_17_sstatus_vs0_stack_pa , 0x0000000044fc3000
.equ SID_HEXCEP_19_misaligned_amo_stack_pa, 0x0000000043a22000
.equ SID_HEXCEP_19_misaligned_lr_stack_pa, 0x0000000044fc5000
.equ SID_HEXCEP_19_misaligned_sc_stack_pa, 0x0000000043a03000
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack_pa, 0x0000000043a20000
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack_pa, 0x0000000044fc6000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack_pa, 0x0000000044fb3000

# Macros equates
.equ CHECK_EXCP_MODE_MACHINE, 1
.equ CHECK_EXCP_MODE_HS, 2
.equ CHECK_EXCP_MODE_VS, 3

# TrapHandler equates
.equ trap_handler_m__TRAP_HANDLER_PANIC_CAUSE, 11

# TrapHandler equates
.equ trap_handler_s__TRAP_HANDLER_PANIC_CAUSE, 11

# TrapHandler equates
.equ trap_handler_hs__TRAP_HANDLER_PANIC_CAUSE, 11

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
.equ rvcp_passed_str,                    os_data + 92
.equ rvcp_passed_str_pa,                 os_data_pa + 92
.equ rvcp_failed_str,                    os_data + 99
.equ rvcp_failed_str_pa,                 os_data_pa + 99
.equ rvcp_space_str,                     os_data + 106
.equ rvcp_space_str_pa,                  os_data_pa + 106
.equ rvcp_newline_str,                   os_data + 108
.equ rvcp_newline_str_pa,                os_data_pa + 108

# Runtime Variables (VA)
.equ excp_ignored_count,                 os_data + 112
.equ machine_flags,                      os_data + 120
.equ user_flags,                         os_data + 128
.equ super_flags,                        os_data + 136
.equ machine_area,                       os_data + 144
.equ user_area,                          os_data + 152
.equ super_area,                         os_data + 160
.equ zero_data,                          os_data + 168
.equ machine_csr_jump_table_flags,       os_data + 176
.equ super_csr_jump_table_flags,         os_data + 184
.equ pte_access_flags,                   os_data + 192
.equ num_harts_ended,                    os_data + 216
.equ num_hard_fails,                     os_data + 224

# Runtime Variables (PA)
.equ excp_ignored_count_pa,              os_data_pa + 112
.equ machine_flags_pa,                   os_data_pa + 120
.equ user_flags_pa,                      os_data_pa + 128
.equ super_flags_pa,                     os_data_pa + 136
.equ machine_area_pa,                    os_data_pa + 144
.equ user_area_pa,                       os_data_pa + 152
.equ super_area_pa,                      os_data_pa + 160
.equ zero_data_pa,                       os_data_pa + 168
.equ machine_csr_jump_table_flags_pa,    os_data_pa + 176
.equ super_csr_jump_table_flags_pa,      os_data_pa + 184
.equ pte_access_flags_pa,                os_data_pa + 192
.equ num_harts_ended_pa,                 os_data_pa + 216
.equ num_hard_fails_pa,                  os_data_pa + 224

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

.equ ECALL            , ECALL_FROM_VS


.equ DONT_USE_STACK, 1


.equ PMA_ENABLED, 0

.equ MISA_BITS, 0

# Feature-specific equates:
