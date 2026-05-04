# Test configuration:
.equ PRIV_MODE_MACHINE                  , 0
.equ PRIV_MODE_SUPER                    , 0
.equ PRIV_MODE_USER                     , 1
.equ SECURE_MODE                        , 0
.equ ENV_BARE_METAL                     , 1
.equ ENV_VIRTUALIZED                    , 0
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
.equ runtime_user                       , 0x0000000041010000
.equ runtime_user_phys                  , 0x0000000041010000
.equ runtime_s                          , 0x0000000041011000
.equ runtime_s_phys                     , 0x0000000041011000
.equ runtime_s_1                        , 0x0000000041012000
.equ runtime_s_1_phys                   , 0x0000000041012000
.equ runtime_s_2                        , 0x0000000041013000
.equ runtime_s_2_phys                   , 0x0000000041013000
.equ runtime_s_3                        , 0x0000000041014000
.equ runtime_s_3_phys                   , 0x0000000041014000
.equ code                               , 0x00000000410150d0
.equ __section_code                     , 0x0000000041800000
.equ __section__code_1                  , 0x0000000041016000
.equ __section__code_1_phys             , 0x0000000041801000
.equ __section__code_2                  , 0x0000000041017000
.equ __section__code_2_phys             , 0x0000000041802000
.equ __section__code_3                  , 0x0000000041018000
.equ __section__code_3_phys             , 0x0000000041803000
.equ __section__code_4                  , 0x0000000041019000
.equ __section__code_4_phys             , 0x0000000041804000
.equ __section__code_5                  , 0x000000004101a000
.equ __section__code_5_phys             , 0x0000000041805000
.equ __section__code_6                  , 0x000000004101b000
.equ __section__code_6_phys             , 0x0000000041806000
.equ __section__code_7                  , 0x000000004101c000
.equ __section__code_7_phys             , 0x0000000041807000
.equ __section__code_8                  , 0x000000004101d000
.equ __section__code_8_phys             , 0x0000000041808000
.equ __section__code_9                  , 0x000000004101e000
.equ __section__code_9_phys             , 0x0000000041809000
.equ __section__code_10                 , 0x000000004101f000
.equ __section__code_10_phys            , 0x000000004180a000
.equ __section__code_11                 , 0x0000000041020000
.equ __section__code_11_phys            , 0x000000004180b000
.equ __section__code_12                 , 0x0000000041021000
.equ __section__code_12_phys            , 0x000000004180c000
.equ __section__code_13                 , 0x0000000041022000
.equ __section__code_13_phys            , 0x000000004180d000
.equ __section__code_14                 , 0x0000000041023000
.equ __section__code_14_phys            , 0x000000004180e000
.equ __section__code_15                 , 0x0000000041024000
.equ __section__code_15_phys            , 0x000000004180f000
.equ __section__code_16                 , 0x0000000041025000
.equ __section__code_16_phys            , 0x0000000041810000
.equ __section__code_17                 , 0x0000000041026000
.equ __section__code_17_phys            , 0x0000000041811000
.equ __section__code_18                 , 0x0000000041027000
.equ __section__code_18_phys            , 0x0000000041812000
.equ __section__code_19                 , 0x0000000041028000
.equ __section__code_19_phys            , 0x0000000041813000
.equ __section__code_20                 , 0x0000000041029000
.equ __section__code_20_phys            , 0x0000000041814000
.equ __section__code_21                 , 0x000000004102a000
.equ __section__code_21_phys            , 0x0000000041815000
.equ __section__code_22                 , 0x000000004102b000
.equ __section__code_22_phys            , 0x0000000041816000
.equ __section__code_23                 , 0x000000004102c000
.equ __section__code_23_phys            , 0x0000000041817000
.equ __section__code_24                 , 0x000000004102d000
.equ __section__code_24_phys            , 0x0000000041818000
.equ __section__code_25                 , 0x000000004102e000
.equ __section__code_25_phys            , 0x0000000041819000
.equ __section__code_26                 , 0x000000004102f000
.equ __section__code_26_phys            , 0x000000004181a000
.equ __section__code_27                 , 0x0000000041030000
.equ __section__code_27_phys            , 0x000000004181b000
.equ __section__code_28                 , 0x0000000041031000
.equ __section__code_28_phys            , 0x000000004181c000
.equ __section__code_29                 , 0x0000000041032000
.equ __section__code_29_phys            , 0x000000004181d000
.equ __section__code_30                 , 0x0000000041033000
.equ __section__code_30_phys            , 0x000000004181e000
.equ __section__code_31                 , 0x0000000041034000
.equ __section__code_31_phys            , 0x000000004181f000
.equ __section__code_32                 , 0x0000000041035000
.equ __section__code_32_phys            , 0x0000000041820000
.equ __section__code_33                 , 0x0000000041036000
.equ __section__code_33_phys            , 0x0000000041821000
.equ __section__code_34                 , 0x0000000041037000
.equ __section__code_34_phys            , 0x0000000041822000
.equ __section__code_35                 , 0x0000000041038000
.equ __section__code_35_phys            , 0x0000000041823000
.equ __section__code_36                 , 0x0000000041039000
.equ __section__code_36_phys            , 0x0000000041824000
.equ __section__code_37                 , 0x000000004103a000
.equ __section__code_37_phys            , 0x0000000041825000
.equ __section__code_38                 , 0x000000004103b000
.equ __section__code_38_phys            , 0x0000000041826000
.equ __section__code_39                 , 0x000000004103c000
.equ __section__code_39_phys            , 0x0000000041827000
.equ __section__code_40                 , 0x000000004103d000
.equ __section__code_40_phys            , 0x0000000041828000
.equ __section__code_41                 , 0x000000004103e000
.equ __section__code_41_phys            , 0x0000000041829000
.equ __section__code_42                 , 0x000000004103f000
.equ __section__code_42_phys            , 0x000000004182a000
.equ __section__code_43                 , 0x0000000041040000
.equ __section__code_43_phys            , 0x000000004182b000
.equ __section__code_44                 , 0x0000000041041000
.equ __section__code_44_phys            , 0x000000004182c000
.equ __section__code_45                 , 0x0000000041042000
.equ __section__code_45_phys            , 0x000000004182d000
.equ __section__code_46                 , 0x0000000041043000
.equ __section__code_46_phys            , 0x000000004182e000
.equ __section__code_47                 , 0x0000000041044000
.equ __section__code_47_phys            , 0x000000004182f000
.equ __section__code_48                 , 0x0000000041045000
.equ __section__code_48_phys            , 0x0000000041830000
.equ __section__code_49                 , 0x0000000041046000
.equ __section__code_49_phys            , 0x0000000041831000
.equ __section__code_50                 , 0x0000000041047000
.equ __section__code_50_phys            , 0x0000000041832000
.equ __section__code_51                 , 0x0000000041048000
.equ __section__code_51_phys            , 0x0000000041833000
.equ __section__code_52                 , 0x0000000041049000
.equ __section__code_52_phys            , 0x0000000041834000
.equ __section__code_53                 , 0x000000004104a000
.equ __section__code_53_phys            , 0x0000000041835000
.equ __section__code_54                 , 0x000000004104b000
.equ __section__code_54_phys            , 0x0000000041836000
.equ __section__code_55                 , 0x000000004104c000
.equ __section__code_55_phys            , 0x0000000041837000
.equ __section__code_56                 , 0x000000004104d000
.equ __section__code_56_phys            , 0x0000000041838000
.equ __section__code_57                 , 0x000000004104e000
.equ __section__code_57_phys            , 0x0000000041839000
.equ __section__code_58                 , 0x000000004104f000
.equ __section__code_58_phys            , 0x000000004183a000
.equ __section__code_59                 , 0x0000000041050000
.equ __section__code_59_phys            , 0x000000004183b000
.equ __section__code_60                 , 0x0000000041051000
.equ __section__code_60_phys            , 0x000000004183c000
.equ __section__code_61                 , 0x0000000041052000
.equ __section__code_61_phys            , 0x000000004183d000
.equ __section__code_62                 , 0x0000000041053000
.equ __section__code_62_phys            , 0x000000004183e000
.equ __section__code_63                 , 0x0000000041054000
.equ __section__code_63_phys            , 0x000000004183f000
.equ __section__code_64                 , 0x0000000041055000
.equ __section__code_64_phys            , 0x0000000041840000
.equ __section__code_65                 , 0x0000000041056000
.equ __section__code_65_phys            , 0x0000000041841000
.equ __section__code_66                 , 0x0000000041057000
.equ __section__code_66_phys            , 0x0000000041842000
.equ __section__code_67                 , 0x0000000041058000
.equ __section__code_67_phys            , 0x0000000041843000
.equ __section__code_68                 , 0x0000000041059000
.equ __section__code_68_phys            , 0x0000000041844000
.equ __section__code_69                 , 0x000000004105a000
.equ __section__code_69_phys            , 0x0000000041845000
.equ __section__code_70                 , 0x000000004105b000
.equ __section__code_70_phys            , 0x0000000041846000
.equ __section__code_71                 , 0x000000004105c000
.equ __section__code_71_phys            , 0x0000000041847000
.equ __section__code_72                 , 0x000000004105d000
.equ __section__code_72_phys            , 0x0000000041848000
.equ __section__code_73                 , 0x000000004105e000
.equ __section__code_73_phys            , 0x0000000041849000
.equ __section__code_74                 , 0x000000004105f000
.equ __section__code_74_phys            , 0x000000004184a000
.equ __section__code_75                 , 0x0000000041060000
.equ __section__code_75_phys            , 0x000000004184b000
.equ __section__code_76                 , 0x0000000041061000
.equ __section__code_76_phys            , 0x000000004184c000
.equ __section__code_77                 , 0x0000000041062000
.equ __section__code_77_phys            , 0x000000004184d000
.equ __section__code_78                 , 0x0000000041063000
.equ __section__code_78_phys            , 0x000000004184e000
.equ __section__code_79                 , 0x0000000041064000
.equ __section__code_79_phys            , 0x000000004184f000
.equ __section__code_80                 , 0x0000000041065000
.equ __section__code_80_phys            , 0x0000000041850000
.equ __section__code_81                 , 0x0000000041066000
.equ __section__code_81_phys            , 0x0000000041851000
.equ __section__code_82                 , 0x0000000041067000
.equ __section__code_82_phys            , 0x0000000041852000
.equ __section__code_83                 , 0x0000000041068000
.equ __section__code_83_phys            , 0x0000000041853000
.equ __section__code_84                 , 0x0000000041069000
.equ __section__code_84_phys            , 0x0000000041854000
.equ __section__code_85                 , 0x000000004106a000
.equ __section__code_85_phys            , 0x0000000041855000
.equ __section__code_86                 , 0x000000004106b000
.equ __section__code_86_phys            , 0x0000000041856000
.equ __section__code_87                 , 0x000000004106c000
.equ __section__code_87_phys            , 0x0000000041857000
.equ __section__code_88                 , 0x000000004106d000
.equ __section__code_88_phys            , 0x0000000041858000
.equ __section__code_89                 , 0x000000004106e000
.equ __section__code_89_phys            , 0x0000000041859000
.equ __section__code_90                 , 0x000000004106f000
.equ __section__code_90_phys            , 0x000000004185a000
.equ __section__code_91                 , 0x0000000041070000
.equ __section__code_91_phys            , 0x000000004185b000
.equ __section__code_92                 , 0x0000000041071000
.equ __section__code_92_phys            , 0x000000004185c000
.equ __section__code_93                 , 0x0000000041072000
.equ __section__code_93_phys            , 0x000000004185d000
.equ __section__code_94                 , 0x0000000041073000
.equ __section__code_94_phys            , 0x000000004185e000
.equ __section__code_95                 , 0x0000000041074000
.equ __section__code_95_phys            , 0x000000004185f000
.equ __section__code_96                 , 0x0000000041075000
.equ __section__code_96_phys            , 0x0000000041860000
.equ __section__code_97                 , 0x0000000041076000
.equ __section__code_97_phys            , 0x0000000041861000
.equ __section__code_98                 , 0x0000000041077000
.equ __section__code_98_phys            , 0x0000000041862000
.equ __section__code_99                 , 0x0000000041078000
.equ __section__code_99_phys            , 0x0000000041863000
.equ __section__code_100                , 0x0000000041079000
.equ __section__code_100_phys           , 0x0000000041864000
.equ __section__code_101                , 0x000000004107a000
.equ __section__code_101_phys           , 0x0000000041865000
.equ __section__code_102                , 0x000000004107b000
.equ __section__code_102_phys           , 0x0000000041866000
.equ __section__code_103                , 0x000000004107c000
.equ __section__code_103_phys           , 0x0000000041867000
.equ __section__code_104                , 0x000000004107d000
.equ __section__code_104_phys           , 0x0000000041868000
.equ __section__code_105                , 0x000000004107e000
.equ __section__code_105_phys           , 0x0000000041869000
.equ __section__code_106                , 0x000000004107f000
.equ __section__code_106_phys           , 0x000000004186a000
.equ __section__code_107                , 0x0000000041080000
.equ __section__code_107_phys           , 0x000000004186b000
.equ __section__code_108                , 0x0000000041081000
.equ __section__code_108_phys           , 0x000000004186c000
.equ __section__code_109                , 0x0000000041082000
.equ __section__code_109_phys           , 0x000000004186d000
.equ __section__code_110                , 0x0000000041083000
.equ __section__code_110_phys           , 0x000000004186e000
.equ __section__code_111                , 0x0000000041084000
.equ __section__code_111_phys           , 0x000000004186f000
.equ __section__code_112                , 0x0000000041085000
.equ __section__code_112_phys           , 0x0000000041870000
.equ __section__code_113                , 0x0000000041086000
.equ __section__code_113_phys           , 0x0000000041871000
.equ __section__code_114                , 0x0000000041087000
.equ __section__code_114_phys           , 0x0000000041872000
.equ __section__code_115                , 0x0000000041088000
.equ __section__code_115_phys           , 0x0000000041873000
.equ __section__code_116                , 0x0000000041089000
.equ __section__code_116_phys           , 0x0000000041874000
.equ __section__code_117                , 0x000000004108a000
.equ __section__code_117_phys           , 0x0000000041875000
.equ __section__code_118                , 0x000000004108b000
.equ __section__code_118_phys           , 0x0000000041876000
.equ __section__code_119                , 0x000000004108c000
.equ __section__code_119_phys           , 0x0000000041877000
.equ __section__code_120                , 0x000000004108d000
.equ __section__code_120_phys           , 0x0000000041878000
.equ __section__code_121                , 0x000000004108e000
.equ __section__code_121_phys           , 0x0000000041879000
.equ __section__code_122                , 0x000000004108f000
.equ __section__code_122_phys           , 0x000000004187a000
.equ __section__code_123                , 0x0000000041090000
.equ __section__code_123_phys           , 0x000000004187b000
.equ __section__code_124                , 0x0000000041091000
.equ __section__code_124_phys           , 0x000000004187c000
.equ __section__code_125                , 0x0000000041092000
.equ __section__code_125_phys           , 0x000000004187d000
.equ __section__code_126                , 0x0000000041093000
.equ __section__code_126_phys           , 0x000000004187e000
.equ __section__code_127                , 0x0000000041094000
.equ __section__code_127_phys           , 0x000000004187f000
.equ __section__code_128                , 0x0000000041095000
.equ __section__code_128_phys           , 0x0000000041880000
.equ __section__code_129                , 0x0000000041096000
.equ __section__code_129_phys           , 0x0000000041881000
.equ __section__code_130                , 0x0000000041097000
.equ __section__code_130_phys           , 0x0000000041882000
.equ __section__code_131                , 0x0000000041098000
.equ __section__code_131_phys           , 0x0000000041883000
.equ __section__code_132                , 0x0000000041099000
.equ __section__code_132_phys           , 0x0000000041884000
.equ __section__code_133                , 0x000000004109a000
.equ __section__code_133_phys           , 0x0000000041885000
.equ __section__code_134                , 0x000000004109b000
.equ __section__code_134_phys           , 0x0000000041886000
.equ __section__code_135                , 0x000000004109c000
.equ __section__code_135_phys           , 0x0000000041887000
.equ __section__code_136                , 0x000000004109d000
.equ __section__code_136_phys           , 0x0000000041888000
.equ __section__code_137                , 0x000000004109e000
.equ __section__code_137_phys           , 0x0000000041889000
.equ __section__code_138                , 0x000000004109f000
.equ __section__code_138_phys           , 0x000000004188a000
.equ __section__code_139                , 0x00000000410a0000
.equ __section__code_139_phys           , 0x000000004188b000
.equ __section__code_140                , 0x00000000410a1000
.equ __section__code_140_phys           , 0x000000004188c000
.equ __section__code_141                , 0x00000000410a2000
.equ __section__code_141_phys           , 0x000000004188d000
.equ __section__code_142                , 0x00000000410a3000
.equ __section__code_142_phys           , 0x000000004188e000
.equ __section__code_143                , 0x00000000410a4000
.equ __section__code_143_phys           , 0x000000004188f000
.equ __section__code_144                , 0x00000000410a5000
.equ __section__code_144_phys           , 0x0000000041890000
.equ __section__code_145                , 0x00000000410a6000
.equ __section__code_145_phys           , 0x0000000041891000
.equ __section__code_146                , 0x00000000410a7000
.equ __section__code_146_phys           , 0x0000000041892000
.equ __section__code_147                , 0x00000000410a8000
.equ __section__code_147_phys           , 0x0000000041893000
.equ __section__code_148                , 0x00000000410a9000
.equ __section__code_148_phys           , 0x0000000041894000
.equ __section__code_149                , 0x00000000410aa000
.equ __section__code_149_phys           , 0x0000000041895000
.equ __section__code_150                , 0x00000000410ab000
.equ __section__code_150_phys           , 0x0000000041896000
.equ __section__code_151                , 0x00000000410ac000
.equ __section__code_151_phys           , 0x0000000041897000
.equ __section__code_152                , 0x00000000410ad000
.equ __section__code_152_phys           , 0x0000000041898000
.equ __section__code_153                , 0x00000000410ae000
.equ __section__code_153_phys           , 0x0000000041899000
.equ __section__code_154                , 0x00000000410af000
.equ __section__code_154_phys           , 0x000000004189a000
.equ __section__code_155                , 0x00000000410b0000
.equ __section__code_155_phys           , 0x000000004189b000
.equ __section__code_156                , 0x00000000410b1000
.equ __section__code_156_phys           , 0x000000004189c000
.equ __section__code_157                , 0x00000000410b2000
.equ __section__code_157_phys           , 0x000000004189d000
.equ __section__code_158                , 0x00000000410b3000
.equ __section__code_158_phys           , 0x000000004189e000
.equ __section__code_159                , 0x00000000410b4000
.equ __section__code_159_phys           , 0x000000004189f000
.equ __section__code_160                , 0x00000000410b5000
.equ __section__code_160_phys           , 0x00000000418a0000
.equ __section__code_161                , 0x00000000410b6000
.equ __section__code_161_phys           , 0x00000000418a1000
.equ __section__code_162                , 0x00000000410b7000
.equ __section__code_162_phys           , 0x00000000418a2000
.equ __section__code_163                , 0x00000000410b8000
.equ __section__code_163_phys           , 0x00000000418a3000
.equ __section__code_164                , 0x00000000410b9000
.equ __section__code_164_phys           , 0x00000000418a4000
.equ __section__code_165                , 0x00000000410ba000
.equ __section__code_165_phys           , 0x00000000418a5000
.equ __section__code_166                , 0x00000000410bb000
.equ __section__code_166_phys           , 0x00000000418a6000
.equ __section__code_167                , 0x00000000410bc000
.equ __section__code_167_phys           , 0x00000000418a7000
.equ __section__code_168                , 0x00000000410bd000
.equ __section__code_168_phys           , 0x00000000418a8000
.equ __section__code_169                , 0x00000000410be000
.equ __section__code_169_phys           , 0x00000000418a9000
.equ __section__code_170                , 0x00000000410bf000
.equ __section__code_170_phys           , 0x00000000418aa000
.equ __section__code_171                , 0x00000000410c0000
.equ __section__code_171_phys           , 0x00000000418ab000
.equ __section__code_172                , 0x00000000410c1000
.equ __section__code_172_phys           , 0x00000000418ac000
.equ __section__code_173                , 0x00000000410c2000
.equ __section__code_173_phys           , 0x00000000418ad000
.equ __section__code_174                , 0x00000000410c3000
.equ __section__code_174_phys           , 0x00000000418ae000
.equ __section__code_175                , 0x00000000410c4000
.equ __section__code_175_phys           , 0x00000000418af000
.equ __section__code_176                , 0x00000000410c5000
.equ __section__code_176_phys           , 0x00000000418b0000
.equ __section__code_177                , 0x00000000410c6000
.equ __section__code_177_phys           , 0x00000000418b1000
.equ __section__code_178                , 0x00000000410c7000
.equ __section__code_178_phys           , 0x00000000418b2000
.equ __section__code_179                , 0x00000000410c8000
.equ __section__code_179_phys           , 0x00000000418b3000
.equ __section__code_180                , 0x00000000410c9000
.equ __section__code_180_phys           , 0x00000000418b4000
.equ __section__code_181                , 0x00000000410ca000
.equ __section__code_181_phys           , 0x00000000418b5000
.equ __section__code_182                , 0x00000000410cb000
.equ __section__code_182_phys           , 0x00000000418b6000
.equ __section__code_183                , 0x00000000410cc000
.equ __section__code_183_phys           , 0x00000000418b7000
.equ __section__code_184                , 0x00000000410cd000
.equ __section__code_184_phys           , 0x00000000418b8000
.equ __section__code_185                , 0x00000000410ce000
.equ __section__code_185_phys           , 0x00000000418b9000
.equ __section__code_186                , 0x00000000410cf000
.equ __section__code_186_phys           , 0x00000000418ba000
.equ __section__code_187                , 0x00000000410d0000
.equ __section__code_187_phys           , 0x00000000418bb000
.equ __section__code_188                , 0x00000000410d1000
.equ __section__code_188_phys           , 0x00000000418bc000
.equ __section__code_189                , 0x00000000410d2000
.equ __section__code_189_phys           , 0x00000000418bd000
.equ __section__code_190                , 0x00000000410d3000
.equ __section__code_190_phys           , 0x00000000418be000
.equ __section__code_191                , 0x00000000410d4000
.equ __section__code_191_phys           , 0x00000000418bf000
.equ __section__code_192                , 0x00000000410d5000
.equ __section__code_192_phys           , 0x00000000418c0000
.equ __section__code_193                , 0x00000000410d6000
.equ __section__code_193_phys           , 0x00000000418c1000
.equ __section__code_194                , 0x00000000410d7000
.equ __section__code_194_phys           , 0x00000000418c2000
.equ __section__code_195                , 0x00000000410d8000
.equ __section__code_195_phys           , 0x00000000418c3000
.equ __section__code_196                , 0x00000000410d9000
.equ __section__code_196_phys           , 0x00000000418c4000
.equ __section__code_197                , 0x00000000410da000
.equ __section__code_197_phys           , 0x00000000418c5000
.equ __section__code_198                , 0x00000000410db000
.equ __section__code_198_phys           , 0x00000000418c6000
.equ __section__code_199                , 0x00000000410dc000
.equ __section__code_199_phys           , 0x00000000418c7000
.equ __section__code_200                , 0x00000000410dd000
.equ __section__code_200_phys           , 0x00000000418c8000
.equ __section__code_201                , 0x00000000410de000
.equ __section__code_201_phys           , 0x00000000418c9000
.equ __section__code_202                , 0x00000000410df000
.equ __section__code_202_phys           , 0x00000000418ca000
.equ __section__code_203                , 0x00000000410e0000
.equ __section__code_203_phys           , 0x00000000418cb000
.equ __section__code_204                , 0x00000000410e1000
.equ __section__code_204_phys           , 0x00000000418cc000
.equ __section__code_205                , 0x00000000410e2000
.equ __section__code_205_phys           , 0x00000000418cd000
.equ __section__code_206                , 0x00000000410e3000
.equ __section__code_206_phys           , 0x00000000418ce000
.equ __section__code_207                , 0x00000000410e4000
.equ __section__code_207_phys           , 0x00000000418cf000
.equ __section__code_208                , 0x00000000410e5000
.equ __section__code_208_phys           , 0x00000000418d0000
.equ __section__code_209                , 0x00000000410e6000
.equ __section__code_209_phys           , 0x00000000418d1000
.equ __section__code_210                , 0x00000000410e7000
.equ __section__code_210_phys           , 0x00000000418d2000
.equ __section__code_211                , 0x00000000410e8000
.equ __section__code_211_phys           , 0x00000000418d3000
.equ __section__code_212                , 0x00000000410e9000
.equ __section__code_212_phys           , 0x00000000418d4000
.equ __section__code_213                , 0x00000000410ea000
.equ __section__code_213_phys           , 0x00000000418d5000
.equ __section__code_214                , 0x00000000410eb000
.equ __section__code_214_phys           , 0x00000000418d6000
.equ __section__code_215                , 0x00000000410ec000
.equ __section__code_215_phys           , 0x00000000418d7000
.equ __section__code_216                , 0x00000000410ed000
.equ __section__code_216_phys           , 0x00000000418d8000
.equ __section__code_217                , 0x00000000410ee000
.equ __section__code_217_phys           , 0x00000000418d9000
.equ __section__code_218                , 0x00000000410ef000
.equ __section__code_218_phys           , 0x00000000418da000
.equ __section__code_219                , 0x00000000410f0000
.equ __section__code_219_phys           , 0x00000000418db000
.equ __section__code_220                , 0x00000000410f1000
.equ __section__code_220_phys           , 0x00000000418dc000
.equ __section__code_221                , 0x00000000410f2000
.equ __section__code_221_phys           , 0x00000000418dd000
.equ __section__code_222                , 0x00000000410f3000
.equ __section__code_222_phys           , 0x00000000418de000
.equ __section__code_223                , 0x00000000410f4000
.equ __section__code_223_phys           , 0x00000000418df000
.equ __section__code_224                , 0x00000000410f5000
.equ __section__code_224_phys           , 0x00000000418e0000
.equ __section__code_225                , 0x00000000410f6000
.equ __section__code_225_phys           , 0x00000000418e1000
.equ __section__code_226                , 0x00000000410f7000
.equ __section__code_226_phys           , 0x00000000418e2000
.equ __section__code_227                , 0x00000000410f8000
.equ __section__code_227_phys           , 0x00000000418e3000
.equ __section__code_228                , 0x00000000410f9000
.equ __section__code_228_phys           , 0x00000000418e4000
.equ __section__code_229                , 0x00000000410fa000
.equ __section__code_229_phys           , 0x00000000418e5000
.equ __section__code_230                , 0x00000000410fb000
.equ __section__code_230_phys           , 0x00000000418e6000
.equ __section__code_231                , 0x00000000410fc000
.equ __section__code_231_phys           , 0x00000000418e7000
.equ __section__code_232                , 0x00000000410fd000
.equ __section__code_232_phys           , 0x00000000418e8000
.equ __section__code_233                , 0x00000000410fe000
.equ __section__code_233_phys           , 0x00000000418e9000
.equ __section__code_234                , 0x00000000410ff000
.equ __section__code_234_phys           , 0x00000000418ea000
.equ __section__code_235                , 0x0000000041100000
.equ __section__code_235_phys           , 0x00000000418eb000
.equ __section__code_236                , 0x0000000041101000
.equ __section__code_236_phys           , 0x00000000418ec000
.equ __section__code_237                , 0x0000000041102000
.equ __section__code_237_phys           , 0x00000000418ed000
.equ __section__code_238                , 0x0000000041103000
.equ __section__code_238_phys           , 0x00000000418ee000
.equ __section__code_239                , 0x0000000041104000
.equ __section__code_239_phys           , 0x00000000418ef000
.equ __section__code_240                , 0x0000000041105000
.equ __section__code_240_phys           , 0x00000000418f0000
.equ __section__code_241                , 0x0000000041106000
.equ __section__code_241_phys           , 0x00000000418f1000
.equ __section__code_242                , 0x0000000041107000
.equ __section__code_242_phys           , 0x00000000418f2000
.equ __section__code_243                , 0x0000000041108000
.equ __section__code_243_phys           , 0x00000000418f3000
.equ __section__code_244                , 0x0000000041109000
.equ __section__code_244_phys           , 0x00000000418f4000
.equ __section__code_245                , 0x000000004110a000
.equ __section__code_245_phys           , 0x00000000418f5000
.equ __section__code_246                , 0x000000004110b000
.equ __section__code_246_phys           , 0x00000000418f6000
.equ __section__code_247                , 0x000000004110c000
.equ __section__code_247_phys           , 0x00000000418f7000
.equ __section__code_248                , 0x000000004110d000
.equ __section__code_248_phys           , 0x00000000418f8000
.equ __section__code_249                , 0x000000004110e000
.equ __section__code_249_phys           , 0x00000000418f9000
.equ __section__code_250                , 0x000000004110f000
.equ __section__code_250_phys           , 0x00000000418fa000
.equ __section__code_251                , 0x0000000041110000
.equ __section__code_251_phys           , 0x00000000418fb000
.equ __section__code_252                , 0x0000000041111000
.equ __section__code_252_phys           , 0x00000000418fc000
.equ __section__code_253                , 0x0000000041112000
.equ __section__code_253_phys           , 0x00000000418fd000
.equ __section__code_254                , 0x0000000041113000
.equ __section__code_254_phys           , 0x00000000418fe000
.equ __section__code_255                , 0x0000000041114000
.equ __section__code_255_phys           , 0x00000000418ff000
.equ __section__code_256                , 0x0000000041115000
.equ __section__code_256_phys           , 0x0000000041900000
.equ __section__code_257                , 0x0000000041116000
.equ __section__code_257_phys           , 0x0000000041901000
.equ __section__code_258                , 0x0000000041117000
.equ __section__code_258_phys           , 0x0000000041902000
.equ __section__code_259                , 0x0000000041118000
.equ __section__code_259_phys           , 0x0000000041903000
.equ __section__code_260                , 0x0000000041119000
.equ __section__code_260_phys           , 0x0000000041904000
.equ __section__code_261                , 0x000000004111a000
.equ __section__code_261_phys           , 0x0000000041905000
.equ __section__code_262                , 0x000000004111b000
.equ __section__code_262_phys           , 0x0000000041906000
.equ __section__code_263                , 0x000000004111c000
.equ __section__code_263_phys           , 0x0000000041907000
.equ __section__code_264                , 0x000000004111d000
.equ __section__code_264_phys           , 0x0000000041908000
.equ __section__code_265                , 0x000000004111e000
.equ __section__code_265_phys           , 0x0000000041909000
.equ __section__code_266                , 0x000000004111f000
.equ __section__code_266_phys           , 0x000000004190a000
.equ __section__code_267                , 0x0000000041120000
.equ __section__code_267_phys           , 0x000000004190b000
.equ __section__code_268                , 0x0000000041121000
.equ __section__code_268_phys           , 0x000000004190c000
.equ __section__code_269                , 0x0000000041122000
.equ __section__code_269_phys           , 0x000000004190d000
.equ __section__code_270                , 0x0000000041123000
.equ __section__code_270_phys           , 0x000000004190e000
.equ __section__code_271                , 0x0000000041124000
.equ __section__code_271_phys           , 0x000000004190f000
.equ __section__code_272                , 0x0000000041125000
.equ __section__code_272_phys           , 0x0000000041910000
.equ __section__code_273                , 0x0000000041126000
.equ __section__code_273_phys           , 0x0000000041911000
.equ __section__code_274                , 0x0000000041127000
.equ __section__code_274_phys           , 0x0000000041912000
.equ __section__code_275                , 0x0000000041128000
.equ __section__code_275_phys           , 0x0000000041913000
.equ __section__code_276                , 0x0000000041129000
.equ __section__code_276_phys           , 0x0000000041914000
.equ __section__code_277                , 0x000000004112a000
.equ __section__code_277_phys           , 0x0000000041915000
.equ __section__code_278                , 0x000000004112b000
.equ __section__code_278_phys           , 0x0000000041916000
.equ __section__code_279                , 0x000000004112c000
.equ __section__code_279_phys           , 0x0000000041917000
.equ __section__code_280                , 0x000000004112d000
.equ __section__code_280_phys           , 0x0000000041918000
.equ __section__code_281                , 0x000000004112e000
.equ __section__code_281_phys           , 0x0000000041919000
.equ __section__code_282                , 0x000000004112f000
.equ __section__code_282_phys           , 0x000000004191a000
.equ __section__code_283                , 0x0000000041130000
.equ __section__code_283_phys           , 0x000000004191b000
.equ __section__code_284                , 0x0000000041131000
.equ __section__code_284_phys           , 0x000000004191c000
.equ __section__code_285                , 0x0000000041132000
.equ __section__code_285_phys           , 0x000000004191d000
.equ __section__code_286                , 0x0000000041133000
.equ __section__code_286_phys           , 0x000000004191e000
.equ __section__code_287                , 0x0000000041134000
.equ __section__code_287_phys           , 0x000000004191f000
.equ __section__code_288                , 0x0000000041135000
.equ __section__code_288_phys           , 0x0000000041920000
.equ __section__code_289                , 0x0000000041136000
.equ __section__code_289_phys           , 0x0000000041921000
.equ __section__code_290                , 0x0000000041137000
.equ __section__code_290_phys           , 0x0000000041922000
.equ __section__code_291                , 0x0000000041138000
.equ __section__code_291_phys           , 0x0000000041923000
.equ __section__code_292                , 0x0000000041139000
.equ __section__code_292_phys           , 0x0000000041924000
.equ __section__code_293                , 0x000000004113a000
.equ __section__code_293_phys           , 0x0000000041925000
.equ __section__code_294                , 0x000000004113b000
.equ __section__code_294_phys           , 0x0000000041926000
.equ __section__code_295                , 0x000000004113c000
.equ __section__code_295_phys           , 0x0000000041927000
.equ __section__code_296                , 0x000000004113d000
.equ __section__code_296_phys           , 0x0000000041928000
.equ __section__code_297                , 0x000000004113e000
.equ __section__code_297_phys           , 0x0000000041929000
.equ __section__code_298                , 0x000000004113f000
.equ __section__code_298_phys           , 0x000000004192a000
.equ __section__code_299                , 0x0000000041140000
.equ __section__code_299_phys           , 0x000000004192b000
.equ __section__code_300                , 0x0000000041141000
.equ __section__code_300_phys           , 0x000000004192c000
.equ __section__code_301                , 0x0000000041142000
.equ __section__code_301_phys           , 0x000000004192d000
.equ __section__code_302                , 0x0000000041143000
.equ __section__code_302_phys           , 0x000000004192e000
.equ __section__code_303                , 0x0000000041144000
.equ __section__code_303_phys           , 0x000000004192f000
.equ __section__code_304                , 0x0000000041145000
.equ __section__code_304_phys           , 0x0000000041930000
.equ __section__code_305                , 0x0000000041146000
.equ __section__code_305_phys           , 0x0000000041931000
.equ __section__code_306                , 0x0000000041147000
.equ __section__code_306_phys           , 0x0000000041932000
.equ __section__code_307                , 0x0000000041148000
.equ __section__code_307_phys           , 0x0000000041933000
.equ __section__code_308                , 0x0000000041149000
.equ __section__code_308_phys           , 0x0000000041934000
.equ __section__code_309                , 0x000000004114a000
.equ __section__code_309_phys           , 0x0000000041935000
.equ __section__code_310                , 0x000000004114b000
.equ __section__code_310_phys           , 0x0000000041936000
.equ __section__code_311                , 0x000000004114c000
.equ __section__code_311_phys           , 0x0000000041937000
.equ __section__code_312                , 0x000000004114d000
.equ __section__code_312_phys           , 0x0000000041938000
.equ __section__code_313                , 0x000000004114e000
.equ __section__code_313_phys           , 0x0000000041939000
.equ __section__code_314                , 0x000000004114f000
.equ __section__code_314_phys           , 0x000000004193a000
.equ __section__code_315                , 0x0000000041150000
.equ __section__code_315_phys           , 0x000000004193b000
.equ __section__code_316                , 0x0000000041151000
.equ __section__code_316_phys           , 0x000000004193c000
.equ __section__code_317                , 0x0000000041152000
.equ __section__code_317_phys           , 0x000000004193d000
.equ __section__code_318                , 0x0000000041153000
.equ __section__code_318_phys           , 0x000000004193e000
.equ __section__code_319                , 0x0000000041154000
.equ __section__code_319_phys           , 0x000000004193f000
.equ __section__code_320                , 0x0000000041155000
.equ __section__code_320_phys           , 0x0000000041940000
.equ __section__code_321                , 0x0000000041156000
.equ __section__code_321_phys           , 0x0000000041941000
.equ __section__code_322                , 0x0000000041157000
.equ __section__code_322_phys           , 0x0000000041942000
.equ __section__code_323                , 0x0000000041158000
.equ __section__code_323_phys           , 0x0000000041943000
.equ __section__code_324                , 0x0000000041159000
.equ __section__code_324_phys           , 0x0000000041944000
.equ __section__code_325                , 0x000000004115a000
.equ __section__code_325_phys           , 0x0000000041945000
.equ __section__code_326                , 0x000000004115b000
.equ __section__code_326_phys           , 0x0000000041946000
.equ __section__code_327                , 0x000000004115c000
.equ __section__code_327_phys           , 0x0000000041947000
.equ __section__code_328                , 0x000000004115d000
.equ __section__code_328_phys           , 0x0000000041948000
.equ __section__code_329                , 0x000000004115e000
.equ __section__code_329_phys           , 0x0000000041949000
.equ __section__code_330                , 0x000000004115f000
.equ __section__code_330_phys           , 0x000000004194a000
.equ __section__code_331                , 0x0000000041160000
.equ __section__code_331_phys           , 0x000000004194b000
.equ __section__code_332                , 0x0000000041161000
.equ __section__code_332_phys           , 0x000000004194c000
.equ __section__code_333                , 0x0000000041162000
.equ __section__code_333_phys           , 0x000000004194d000
.equ __section__code_334                , 0x0000000041163000
.equ __section__code_334_phys           , 0x000000004194e000
.equ __section__code_335                , 0x0000000041164000
.equ __section__code_335_phys           , 0x000000004194f000
.equ __section__code_336                , 0x0000000041165000
.equ __section__code_336_phys           , 0x0000000041950000
.equ __section__code_337                , 0x0000000041166000
.equ __section__code_337_phys           , 0x0000000041951000
.equ __section__code_338                , 0x0000000041167000
.equ __section__code_338_phys           , 0x0000000041952000
.equ __section__code_339                , 0x0000000041168000
.equ __section__code_339_phys           , 0x0000000041953000
.equ __section__code_340                , 0x0000000041169000
.equ __section__code_340_phys           , 0x0000000041954000
.equ __section__code_341                , 0x000000004116a000
.equ __section__code_341_phys           , 0x0000000041955000
.equ __section__code_342                , 0x000000004116b000
.equ __section__code_342_phys           , 0x0000000041956000
.equ __section__code_343                , 0x000000004116c000
.equ __section__code_343_phys           , 0x0000000041957000
.equ __section__code_344                , 0x000000004116d000
.equ __section__code_344_phys           , 0x0000000041958000
.equ __section__code_345                , 0x000000004116e000
.equ __section__code_345_phys           , 0x0000000041959000
.equ __section__code_346                , 0x000000004116f000
.equ __section__code_346_phys           , 0x000000004195a000
.equ __section__code_347                , 0x0000000041170000
.equ __section__code_347_phys           , 0x000000004195b000
.equ __section__code_348                , 0x0000000041171000
.equ __section__code_348_phys           , 0x000000004195c000
.equ __section__code_349                , 0x0000000041172000
.equ __section__code_349_phys           , 0x000000004195d000
.equ __section__code_350                , 0x0000000041173000
.equ __section__code_350_phys           , 0x000000004195e000
.equ __section__code_351                , 0x0000000041174000
.equ __section__code_351_phys           , 0x000000004195f000
.equ __section__code_352                , 0x0000000041175000
.equ __section__code_352_phys           , 0x0000000041960000
.equ __section__code_353                , 0x0000000041176000
.equ __section__code_353_phys           , 0x0000000041961000
.equ __section__code_354                , 0x0000000041177000
.equ __section__code_354_phys           , 0x0000000041962000
.equ __section__code_355                , 0x0000000041178000
.equ __section__code_355_phys           , 0x0000000041963000
.equ __section__code_356                , 0x0000000041179000
.equ __section__code_356_phys           , 0x0000000041964000
.equ __section__code_357                , 0x000000004117a000
.equ __section__code_357_phys           , 0x0000000041965000
.equ __section__code_358                , 0x000000004117b000
.equ __section__code_358_phys           , 0x0000000041966000
.equ __section__code_359                , 0x000000004117c000
.equ __section__code_359_phys           , 0x0000000041967000
.equ __section__code_360                , 0x000000004117d000
.equ __section__code_360_phys           , 0x0000000041968000
.equ __section__code_361                , 0x000000004117e000
.equ __section__code_361_phys           , 0x0000000041969000
.equ __section__code_362                , 0x000000004117f000
.equ __section__code_362_phys           , 0x000000004196a000
.equ __section__code_363                , 0x0000000041180000
.equ __section__code_363_phys           , 0x000000004196b000
.equ __section__code_364                , 0x0000000041181000
.equ __section__code_364_phys           , 0x000000004196c000
.equ __section__code_365                , 0x0000000041182000
.equ __section__code_365_phys           , 0x000000004196d000
.equ __section__code_366                , 0x0000000041183000
.equ __section__code_366_phys           , 0x000000004196e000
.equ __section__code_367                , 0x0000000041184000
.equ __section__code_367_phys           , 0x000000004196f000
.equ __section__code_368                , 0x0000000041185000
.equ __section__code_368_phys           , 0x0000000041970000
.equ __section__code_369                , 0x0000000041186000
.equ __section__code_369_phys           , 0x0000000041971000
.equ __section__code_370                , 0x0000000041187000
.equ __section__code_370_phys           , 0x0000000041972000
.equ __section__code_371                , 0x0000000041188000
.equ __section__code_371_phys           , 0x0000000041973000
.equ __section__code_372                , 0x0000000041189000
.equ __section__code_372_phys           , 0x0000000041974000
.equ __section__code_373                , 0x000000004118a000
.equ __section__code_373_phys           , 0x0000000041975000
.equ __section__code_374                , 0x000000004118b000
.equ __section__code_374_phys           , 0x0000000041976000
.equ __section__code_375                , 0x000000004118c000
.equ __section__code_375_phys           , 0x0000000041977000
.equ __section__code_376                , 0x000000004118d000
.equ __section__code_376_phys           , 0x0000000041978000
.equ __section__code_377                , 0x000000004118e000
.equ __section__code_377_phys           , 0x0000000041979000
.equ __section__code_378                , 0x000000004118f000
.equ __section__code_378_phys           , 0x000000004197a000
.equ __section__code_379                , 0x0000000041190000
.equ __section__code_379_phys           , 0x000000004197b000
.equ __section__code_380                , 0x0000000041191000
.equ __section__code_380_phys           , 0x000000004197c000
.equ __section__code_381                , 0x0000000041192000
.equ __section__code_381_phys           , 0x000000004197d000
.equ __section__code_382                , 0x0000000041193000
.equ __section__code_382_phys           , 0x000000004197e000
.equ __section__code_383                , 0x0000000041194000
.equ __section__code_383_phys           , 0x000000004197f000
.equ __section__code_384                , 0x0000000041195000
.equ __section__code_384_phys           , 0x0000000041980000
.equ __section__code_385                , 0x0000000041196000
.equ __section__code_385_phys           , 0x0000000041981000
.equ __section__code_386                , 0x0000000041197000
.equ __section__code_386_phys           , 0x0000000041982000
.equ __section__code_387                , 0x0000000041198000
.equ __section__code_387_phys           , 0x0000000041983000
.equ __section__code_388                , 0x0000000041199000
.equ __section__code_388_phys           , 0x0000000041984000
.equ __section__code_389                , 0x000000004119a000
.equ __section__code_389_phys           , 0x0000000041985000
.equ __section__code_390                , 0x000000004119b000
.equ __section__code_390_phys           , 0x0000000041986000
.equ __section__code_391                , 0x000000004119c000
.equ __section__code_391_phys           , 0x0000000041987000
.equ __section__code_392                , 0x000000004119d000
.equ __section__code_392_phys           , 0x0000000041988000
.equ __section__code_393                , 0x000000004119e000
.equ __section__code_393_phys           , 0x0000000041989000
.equ __section__code_394                , 0x000000004119f000
.equ __section__code_394_phys           , 0x000000004198a000
.equ __section__code_395                , 0x00000000411a0000
.equ __section__code_395_phys           , 0x000000004198b000
.equ __section__code_396                , 0x00000000411a1000
.equ __section__code_396_phys           , 0x000000004198c000
.equ __section__code_397                , 0x00000000411a2000
.equ __section__code_397_phys           , 0x000000004198d000
.equ __section__code_398                , 0x00000000411a3000
.equ __section__code_398_phys           , 0x000000004198e000
.equ __section__code_399                , 0x00000000411a4000
.equ __section__code_399_phys           , 0x000000004198f000
.equ __section__code_400                , 0x00000000411a5000
.equ __section__code_400_phys           , 0x0000000041990000
.equ __section__code_401                , 0x00000000411a6000
.equ __section__code_401_phys           , 0x0000000041991000
.equ __section__code_402                , 0x00000000411a7000
.equ __section__code_402_phys           , 0x0000000041992000
.equ __section__code_403                , 0x00000000411a8000
.equ __section__code_403_phys           , 0x0000000041993000
.equ __section__code_404                , 0x00000000411a9000
.equ __section__code_404_phys           , 0x0000000041994000
.equ __section__code_405                , 0x00000000411aa000
.equ __section__code_405_phys           , 0x0000000041995000
.equ __section__code_406                , 0x00000000411ab000
.equ __section__code_406_phys           , 0x0000000041996000
.equ __section__code_407                , 0x00000000411ac000
.equ __section__code_407_phys           , 0x0000000041997000
.equ __section__code_408                , 0x00000000411ad000
.equ __section__code_408_phys           , 0x0000000041998000
.equ __section__code_409                , 0x00000000411ae000
.equ __section__code_409_phys           , 0x0000000041999000
.equ __section__code_410                , 0x00000000411af000
.equ __section__code_410_phys           , 0x000000004199a000
.equ __section__code_411                , 0x00000000411b0000
.equ __section__code_411_phys           , 0x000000004199b000
.equ __section__code_412                , 0x00000000411b1000
.equ __section__code_412_phys           , 0x000000004199c000
.equ __section__code_413                , 0x00000000411b2000
.equ __section__code_413_phys           , 0x000000004199d000
.equ __section__code_414                , 0x00000000411b3000
.equ __section__code_414_phys           , 0x000000004199e000
.equ __section__code_415                , 0x00000000411b4000
.equ __section__code_415_phys           , 0x000000004199f000
.equ __section__code_416                , 0x00000000411b5000
.equ __section__code_416_phys           , 0x00000000419a0000
.equ __section__code_417                , 0x00000000411b6000
.equ __section__code_417_phys           , 0x00000000419a1000
.equ __section__code_418                , 0x00000000411b7000
.equ __section__code_418_phys           , 0x00000000419a2000
.equ __section__code_419                , 0x00000000411b8000
.equ __section__code_419_phys           , 0x00000000419a3000
.equ __section__code_420                , 0x00000000411b9000
.equ __section__code_420_phys           , 0x00000000419a4000
.equ __section__code_421                , 0x00000000411ba000
.equ __section__code_421_phys           , 0x00000000419a5000
.equ __section__code_422                , 0x00000000411bb000
.equ __section__code_422_phys           , 0x00000000419a6000
.equ __section__code_423                , 0x00000000411bc000
.equ __section__code_423_phys           , 0x00000000419a7000
.equ __section__code_424                , 0x00000000411bd000
.equ __section__code_424_phys           , 0x00000000419a8000
.equ __section__code_425                , 0x00000000411be000
.equ __section__code_425_phys           , 0x00000000419a9000
.equ __section__code_426                , 0x00000000411bf000
.equ __section__code_426_phys           , 0x00000000419aa000
.equ __section__code_427                , 0x00000000411c0000
.equ __section__code_427_phys           , 0x00000000419ab000
.equ __section__code_428                , 0x00000000411c1000
.equ __section__code_428_phys           , 0x00000000419ac000
.equ __section__code_429                , 0x00000000411c2000
.equ __section__code_429_phys           , 0x00000000419ad000
.equ __section__code_430                , 0x00000000411c3000
.equ __section__code_430_phys           , 0x00000000419ae000
.equ __section__code_431                , 0x00000000411c4000
.equ __section__code_431_phys           , 0x00000000419af000
.equ __section__code_432                , 0x00000000411c5000
.equ __section__code_432_phys           , 0x00000000419b0000
.equ __section__code_433                , 0x00000000411c6000
.equ __section__code_433_phys           , 0x00000000419b1000
.equ __section__code_434                , 0x00000000411c7000
.equ __section__code_434_phys           , 0x00000000419b2000
.equ __section__code_435                , 0x00000000411c8000
.equ __section__code_435_phys           , 0x00000000419b3000
.equ __section__code_436                , 0x00000000411c9000
.equ __section__code_436_phys           , 0x00000000419b4000
.equ __section__code_437                , 0x00000000411ca000
.equ __section__code_437_phys           , 0x00000000419b5000
.equ __section__code_438                , 0x00000000411cb000
.equ __section__code_438_phys           , 0x00000000419b6000
.equ __section__code_439                , 0x00000000411cc000
.equ __section__code_439_phys           , 0x00000000419b7000
.equ __section__code_440                , 0x00000000411cd000
.equ __section__code_440_phys           , 0x00000000419b8000
.equ __section__code_441                , 0x00000000411ce000
.equ __section__code_441_phys           , 0x00000000419b9000
.equ __section__code_442                , 0x00000000411cf000
.equ __section__code_442_phys           , 0x00000000419ba000
.equ __section__code_443                , 0x00000000411d0000
.equ __section__code_443_phys           , 0x00000000419bb000
.equ __section__code_444                , 0x00000000411d1000
.equ __section__code_444_phys           , 0x00000000419bc000
.equ __section__code_445                , 0x00000000411d2000
.equ __section__code_445_phys           , 0x00000000419bd000
.equ __section__code_446                , 0x00000000411d3000
.equ __section__code_446_phys           , 0x00000000419be000
.equ __section__code_447                , 0x00000000411d4000
.equ __section__code_447_phys           , 0x00000000419bf000
.equ __section__code_448                , 0x00000000411d5000
.equ __section__code_448_phys           , 0x00000000419c0000
.equ __section__code_449                , 0x00000000411d6000
.equ __section__code_449_phys           , 0x00000000419c1000
.equ __section__code_450                , 0x00000000411d7000
.equ __section__code_450_phys           , 0x00000000419c2000
.equ __section__code_451                , 0x00000000411d8000
.equ __section__code_451_phys           , 0x00000000419c3000
.equ __section__code_452                , 0x00000000411d9000
.equ __section__code_452_phys           , 0x00000000419c4000
.equ __section__code_453                , 0x00000000411da000
.equ __section__code_453_phys           , 0x00000000419c5000
.equ __section__code_454                , 0x00000000411db000
.equ __section__code_454_phys           , 0x00000000419c6000
.equ __section__code_455                , 0x00000000411dc000
.equ __section__code_455_phys           , 0x00000000419c7000
.equ __section__code_456                , 0x00000000411dd000
.equ __section__code_456_phys           , 0x00000000419c8000
.equ __section__code_457                , 0x00000000411de000
.equ __section__code_457_phys           , 0x00000000419c9000
.equ __section__code_458                , 0x00000000411df000
.equ __section__code_458_phys           , 0x00000000419ca000
.equ __section__code_459                , 0x00000000411e0000
.equ __section__code_459_phys           , 0x00000000419cb000
.equ __section__code_460                , 0x00000000411e1000
.equ __section__code_460_phys           , 0x00000000419cc000
.equ __section__code_461                , 0x00000000411e2000
.equ __section__code_461_phys           , 0x00000000419cd000
.equ __section__code_462                , 0x00000000411e3000
.equ __section__code_462_phys           , 0x00000000419ce000
.equ __section__code_463                , 0x00000000411e4000
.equ __section__code_463_phys           , 0x00000000419cf000
.equ __section__code_464                , 0x00000000411e5000
.equ __section__code_464_phys           , 0x00000000419d0000
.equ __section__code_465                , 0x00000000411e6000
.equ __section__code_465_phys           , 0x00000000419d1000
.equ __section__code_466                , 0x00000000411e7000
.equ __section__code_466_phys           , 0x00000000419d2000
.equ __section__code_467                , 0x00000000411e8000
.equ __section__code_467_phys           , 0x00000000419d3000
.equ __section__code_468                , 0x00000000411e9000
.equ __section__code_468_phys           , 0x00000000419d4000
.equ __section__code_469                , 0x00000000411ea000
.equ __section__code_469_phys           , 0x00000000419d5000
.equ __section__code_470                , 0x00000000411eb000
.equ __section__code_470_phys           , 0x00000000419d6000
.equ __section__code_471                , 0x00000000411ec000
.equ __section__code_471_phys           , 0x00000000419d7000
.equ __section__code_472                , 0x00000000411ed000
.equ __section__code_472_phys           , 0x00000000419d8000
.equ __section__code_473                , 0x00000000411ee000
.equ __section__code_473_phys           , 0x00000000419d9000
.equ __section__code_474                , 0x00000000411ef000
.equ __section__code_474_phys           , 0x00000000419da000
.equ __section__code_475                , 0x00000000411f0000
.equ __section__code_475_phys           , 0x00000000419db000
.equ __section__code_476                , 0x00000000411f1000
.equ __section__code_476_phys           , 0x00000000419dc000
.equ __section__code_477                , 0x00000000411f2000
.equ __section__code_477_phys           , 0x00000000419dd000
.equ __section__code_478                , 0x00000000411f3000
.equ __section__code_478_phys           , 0x00000000419de000
.equ __section__code_479                , 0x00000000411f4000
.equ __section__code_479_phys           , 0x00000000419df000
.equ __section__code_480                , 0x00000000411f5000
.equ __section__code_480_phys           , 0x00000000419e0000
.equ __section__code_481                , 0x00000000411f6000
.equ __section__code_481_phys           , 0x00000000419e1000
.equ __section__code_482                , 0x00000000411f7000
.equ __section__code_482_phys           , 0x00000000419e2000
.equ __section__code_483                , 0x00000000411f8000
.equ __section__code_483_phys           , 0x00000000419e3000
.equ __section__code_484                , 0x00000000411f9000
.equ __section__code_484_phys           , 0x00000000419e4000
.equ __section__code_485                , 0x00000000411fa000
.equ __section__code_485_phys           , 0x00000000419e5000
.equ __section__code_486                , 0x00000000411fb000
.equ __section__code_486_phys           , 0x00000000419e6000
.equ __section__code_487                , 0x00000000411fc000
.equ __section__code_487_phys           , 0x00000000419e7000
.equ __section__code_488                , 0x00000000411fd000
.equ __section__code_488_phys           , 0x00000000419e8000
.equ __section__code_489                , 0x00000000411fe000
.equ __section__code_489_phys           , 0x00000000419e9000
.equ __section__code_490                , 0x00000000411ff000
.equ __section__code_490_phys           , 0x00000000419ea000
.equ __section__code_491                , 0x0000000041200000
.equ __section__code_491_phys           , 0x00000000419eb000
.equ __section__code_492                , 0x0000000041201000
.equ __section__code_492_phys           , 0x00000000419ec000
.equ __section__code_493                , 0x0000000041202000
.equ __section__code_493_phys           , 0x00000000419ed000
.equ __section__code_494                , 0x0000000041203000
.equ __section__code_494_phys           , 0x00000000419ee000
.equ __section__code_495                , 0x0000000041204000
.equ __section__code_495_phys           , 0x00000000419ef000
.equ __section__code_496                , 0x0000000041205000
.equ __section__code_496_phys           , 0x00000000419f0000
.equ __section__code_497                , 0x0000000041206000
.equ __section__code_497_phys           , 0x00000000419f1000
.equ __section__code_498                , 0x0000000041207000
.equ __section__code_498_phys           , 0x00000000419f2000
.equ __section__code_499                , 0x0000000041208000
.equ __section__code_499_phys           , 0x00000000419f3000
.equ code_super_0                       , 0x0000000041209000
.equ __section_code_super_0             , 0x00000000419f4000
.equ code_super_1                       , 0x000000004120a000
.equ __section_code_super_1             , 0x00000000419f5000
.equ code_super_2                       , 0x000000004120b000
.equ __section_code_super_2             , 0x00000000419f6000
.equ code_super_3                       , 0x000000004120c000
.equ __section_code_super_3             , 0x00000000419f7000
.equ code_super_4                       , 0x000000004120d000
.equ __section_code_super_4             , 0x00000000419f8000
.equ code_super_5                       , 0x000000004120e000
.equ __section_code_super_5             , 0x00000000419f9000
.equ code_super_6                       , 0x000000004120f000
.equ __section_code_super_6             , 0x00000000419fa000
.equ code_super_7                       , 0x0000000041210000
.equ __section_code_super_7             , 0x00000000419fb000
.equ code_super_8                       , 0x0000000041211000
.equ __section_code_super_8             , 0x00000000419fc000
.equ code_super_9                       , 0x0000000041212000
.equ __section_code_super_9             , 0x00000000419fd000
.equ code_super_10                      , 0x0000000041213000
.equ __section_code_super_10            , 0x00000000419fe000
.equ code_super_11                      , 0x0000000041214000
.equ __section_code_super_11            , 0x00000000419ff000
.equ code_super_12                      , 0x0000000041215000
.equ __section_code_super_12            , 0x0000000041a00000
.equ code_super_13                      , 0x0000000041216000
.equ __section_code_super_13            , 0x0000000041a01000
.equ code_super_14                      , 0x0000000041217000
.equ __section_code_super_14            , 0x0000000041a02000
.equ code_super_15                      , 0x0000000041218000
.equ __section_code_super_15            , 0x0000000041a03000
.equ code_super_16                      , 0x0000000041219000
.equ __section_code_super_16            , 0x0000000041a04000
.equ code_super_17                      , 0x000000004121a000
.equ __section_code_super_17            , 0x0000000041a05000
.equ code_super_18                      , 0x000000004121b000
.equ __section_code_super_18            , 0x0000000041a06000
.equ code_super_19                      , 0x000000004121c000
.equ __section_code_super_19            , 0x0000000041a07000
.equ code_super_20                      , 0x000000004121d000
.equ __section_code_super_20            , 0x0000000041a08000
.equ code_super_21                      , 0x000000004121e000
.equ __section_code_super_21            , 0x0000000041a09000
.equ code_super_22                      , 0x000000004121f000
.equ __section_code_super_22            , 0x0000000041a0a000
.equ code_super_23                      , 0x0000000041220000
.equ __section_code_super_23            , 0x0000000041a0b000
.equ code_super_24                      , 0x0000000041221000
.equ __section_code_super_24            , 0x0000000041a0c000
.equ code_super_25                      , 0x0000000041222000
.equ __section_code_super_25            , 0x0000000041a0d000
.equ code_super_26                      , 0x0000000041223000
.equ __section_code_super_26            , 0x0000000041a0e000
.equ code_super_27                      , 0x0000000041224000
.equ __section_code_super_27            , 0x0000000041a0f000
.equ code_super_28                      , 0x0000000041225000
.equ __section_code_super_28            , 0x0000000041a10000
.equ code_super_29                      , 0x0000000041226000
.equ __section_code_super_29            , 0x0000000041a11000
.equ code_super_30                      , 0x0000000041227000
.equ __section_code_super_30            , 0x0000000041a12000
.equ code_super_31                      , 0x0000000041228000
.equ __section_code_super_31            , 0x0000000041a13000
.equ code_super_32                      , 0x0000000041229000
.equ __section_code_super_32            , 0x0000000041a14000
.equ code_super_33                      , 0x000000004122a000
.equ __section_code_super_33            , 0x0000000041a15000
.equ code_super_34                      , 0x000000004122b000
.equ __section_code_super_34            , 0x0000000041a16000
.equ code_super_35                      , 0x000000004122c000
.equ __section_code_super_35            , 0x0000000041a17000
.equ code_super_36                      , 0x000000004122d000
.equ __section_code_super_36            , 0x0000000041a18000
.equ code_super_37                      , 0x000000004122e000
.equ __section_code_super_37            , 0x0000000041a19000
.equ code_super_38                      , 0x000000004122f000
.equ __section_code_super_38            , 0x0000000041a1a000
.equ code_super_39                      , 0x0000000041230000
.equ __section_code_super_39            , 0x0000000041a1b000
.equ code_super_40                      , 0x0000000041231000
.equ __section_code_super_40            , 0x0000000041a1c000
.equ code_super_41                      , 0x0000000041232000
.equ __section_code_super_41            , 0x0000000041a1d000
.equ code_super_42                      , 0x0000000041233000
.equ __section_code_super_42            , 0x0000000041a1e000
.equ code_super_43                      , 0x0000000041234000
.equ __section_code_super_43            , 0x0000000041a1f000
.equ code_super_44                      , 0x0000000041235000
.equ __section_code_super_44            , 0x0000000041a20000
.equ code_super_45                      , 0x0000000041236000
.equ __section_code_super_45            , 0x0000000041a21000
.equ code_super_46                      , 0x0000000041237000
.equ __section_code_super_46            , 0x0000000041a22000
.equ code_super_47                      , 0x0000000041238000
.equ __section_code_super_47            , 0x0000000041a23000
.equ code_super_48                      , 0x0000000041239000
.equ __section_code_super_48            , 0x0000000041a24000
.equ code_super_49                      , 0x000000004123a000
.equ __section_code_super_49            , 0x0000000041a25000
.equ code_super_50                      , 0x000000004123b000
.equ __section_code_super_50            , 0x0000000041a26000
.equ code_super_51                      , 0x000000004123c000
.equ __section_code_super_51            , 0x0000000041a27000
.equ code_super_52                      , 0x000000004123d000
.equ __section_code_super_52            , 0x0000000041a28000
.equ code_super_53                      , 0x000000004123e000
.equ __section_code_super_53            , 0x0000000041a29000
.equ code_super_54                      , 0x000000004123f000
.equ __section_code_super_54            , 0x0000000041a2a000
.equ code_super_55                      , 0x0000000041240000
.equ __section_code_super_55            , 0x0000000041a2b000
.equ code_super_56                      , 0x0000000041241000
.equ __section_code_super_56            , 0x0000000041a2c000
.equ code_super_57                      , 0x0000000041242000
.equ __section_code_super_57            , 0x0000000041a2d000
.equ code_super_58                      , 0x0000000041243000
.equ __section_code_super_58            , 0x0000000041a2e000
.equ code_super_59                      , 0x0000000041244000
.equ __section_code_super_59            , 0x0000000041a2f000
.equ code_super_60                      , 0x0000000041245000
.equ __section_code_super_60            , 0x0000000041a30000
.equ code_super_61                      , 0x0000000041246000
.equ __section_code_super_61            , 0x0000000041a31000
.equ code_super_62                      , 0x0000000041247000
.equ __section_code_super_62            , 0x0000000041a32000
.equ code_super_63                      , 0x0000000041248000
.equ __section_code_super_63            , 0x0000000041a33000
.equ code_super_64                      , 0x0000000041249000
.equ __section_code_super_64            , 0x0000000041a34000
.equ code_super_65                      , 0x000000004124a000
.equ __section_code_super_65            , 0x0000000041a35000
.equ code_super_66                      , 0x000000004124b000
.equ __section_code_super_66            , 0x0000000041a36000
.equ code_super_67                      , 0x000000004124c000
.equ __section_code_super_67            , 0x0000000041a37000
.equ code_super_68                      , 0x000000004124d000
.equ __section_code_super_68            , 0x0000000041a38000
.equ code_super_69                      , 0x000000004124e000
.equ __section_code_super_69            , 0x0000000041a39000
.equ code_super_70                      , 0x000000004124f000
.equ __section_code_super_70            , 0x0000000041a3a000
.equ code_super_71                      , 0x0000000041250000
.equ __section_code_super_71            , 0x0000000041a3b000
.equ code_super_72                      , 0x0000000041251000
.equ __section_code_super_72            , 0x0000000041a3c000
.equ code_super_73                      , 0x0000000041252000
.equ __section_code_super_73            , 0x0000000041a3d000
.equ code_super_74                      , 0x0000000041253000
.equ __section_code_super_74            , 0x0000000041a3e000
.equ code_super_75                      , 0x0000000041254000
.equ __section_code_super_75            , 0x0000000041a3f000
.equ code_super_76                      , 0x0000000041255000
.equ __section_code_super_76            , 0x0000000041a40000
.equ code_super_77                      , 0x0000000041256000
.equ __section_code_super_77            , 0x0000000041a41000
.equ code_super_78                      , 0x0000000041257000
.equ __section_code_super_78            , 0x0000000041a42000
.equ code_super_79                      , 0x0000000041258000
.equ __section_code_super_79            , 0x0000000041a43000
.equ code_super_80                      , 0x0000000041259000
.equ __section_code_super_80            , 0x0000000041a44000
.equ code_super_81                      , 0x000000004125a000
.equ __section_code_super_81            , 0x0000000041a45000
.equ code_super_82                      , 0x000000004125b000
.equ __section_code_super_82            , 0x0000000041a46000
.equ code_super_83                      , 0x000000004125c000
.equ __section_code_super_83            , 0x0000000041a47000
.equ code_super_84                      , 0x000000004125d000
.equ __section_code_super_84            , 0x0000000041a48000
.equ code_super_85                      , 0x000000004125e000
.equ __section_code_super_85            , 0x0000000041a49000
.equ code_super_86                      , 0x000000004125f000
.equ __section_code_super_86            , 0x0000000041a4a000
.equ code_super_87                      , 0x0000000041260000
.equ __section_code_super_87            , 0x0000000041a4b000
.equ code_super_88                      , 0x0000000041261000
.equ __section_code_super_88            , 0x0000000041a4c000
.equ code_super_89                      , 0x0000000041262000
.equ __section_code_super_89            , 0x0000000041a4d000
.equ code_super_90                      , 0x0000000041263000
.equ __section_code_super_90            , 0x0000000041a4e000
.equ code_super_91                      , 0x0000000041264000
.equ __section_code_super_91            , 0x0000000041a4f000
.equ code_super_92                      , 0x0000000041265000
.equ __section_code_super_92            , 0x0000000041a50000
.equ code_super_93                      , 0x0000000041266000
.equ __section_code_super_93            , 0x0000000041a51000
.equ code_super_94                      , 0x0000000041267000
.equ __section_code_super_94            , 0x0000000041a52000
.equ code_super_95                      , 0x0000000041268000
.equ __section_code_super_95            , 0x0000000041a53000
.equ code_super_96                      , 0x0000000041269000
.equ __section_code_super_96            , 0x0000000041a54000
.equ code_super_97                      , 0x000000004126a000
.equ __section_code_super_97            , 0x0000000041a55000
.equ code_super_98                      , 0x000000004126b000
.equ __section_code_super_98            , 0x0000000041a56000
.equ code_super_99                      , 0x000000004126c000
.equ __section_code_super_99            , 0x0000000041a57000
.equ code_super_100                     , 0x000000004126d000
.equ __section_code_super_100           , 0x0000000041a58000
.equ code_super_101                     , 0x000000004126e000
.equ __section_code_super_101           , 0x0000000041a59000
.equ code_super_102                     , 0x000000004126f000
.equ __section_code_super_102           , 0x0000000041a5a000
.equ code_super_103                     , 0x0000000041270000
.equ __section_code_super_103           , 0x0000000041a5b000
.equ code_super_104                     , 0x0000000041271000
.equ __section_code_super_104           , 0x0000000041a5c000
.equ code_super_105                     , 0x0000000041272000
.equ __section_code_super_105           , 0x0000000041a5d000
.equ code_super_106                     , 0x0000000041273000
.equ __section_code_super_106           , 0x0000000041a5e000
.equ code_super_107                     , 0x0000000041274000
.equ __section_code_super_107           , 0x0000000041a5f000
.equ code_super_108                     , 0x0000000041275000
.equ __section_code_super_108           , 0x0000000041a60000
.equ code_super_109                     , 0x0000000041276000
.equ __section_code_super_109           , 0x0000000041a61000
.equ code_super_110                     , 0x0000000041277000
.equ __section_code_super_110           , 0x0000000041a62000
.equ code_super_111                     , 0x0000000041278000
.equ __section_code_super_111           , 0x0000000041a63000
.equ code_super_112                     , 0x0000000041279000
.equ __section_code_super_112           , 0x0000000041a64000
.equ code_super_113                     , 0x000000004127a000
.equ __section_code_super_113           , 0x0000000041a65000
.equ code_super_114                     , 0x000000004127b000
.equ __section_code_super_114           , 0x0000000041a66000
.equ code_super_115                     , 0x000000004127c000
.equ __section_code_super_115           , 0x0000000041a67000
.equ code_super_116                     , 0x000000004127d000
.equ __section_code_super_116           , 0x0000000041a68000
.equ code_super_117                     , 0x000000004127e000
.equ __section_code_super_117           , 0x0000000041a69000
.equ code_super_118                     , 0x000000004127f000
.equ __section_code_super_118           , 0x0000000041a6a000
.equ code_super_119                     , 0x0000000041280000
.equ __section_code_super_119           , 0x0000000041a6b000
.equ code_super_120                     , 0x0000000041281000
.equ __section_code_super_120           , 0x0000000041a6c000
.equ code_super_121                     , 0x0000000041282000
.equ __section_code_super_121           , 0x0000000041a6d000
.equ code_super_122                     , 0x0000000041283000
.equ __section_code_super_122           , 0x0000000041a6e000
.equ code_super_123                     , 0x0000000041284000
.equ __section_code_super_123           , 0x0000000041a6f000
.equ code_super_124                     , 0x0000000041285000
.equ __section_code_super_124           , 0x0000000041a70000
.equ code_super_125                     , 0x0000000041286000
.equ __section_code_super_125           , 0x0000000041a71000
.equ code_super_126                     , 0x0000000041287000
.equ __section_code_super_126           , 0x0000000041a72000
.equ code_super_127                     , 0x0000000041288000
.equ __section_code_super_127           , 0x0000000041a73000
.equ code_user_0                        , 0x0000000041289000
.equ __section_code_user_0              , 0x0000000041a74000
.equ code_user_1                        , 0x000000004128a000
.equ __section_code_user_1              , 0x0000000041a75000
.equ code_user_2                        , 0x000000004128b000
.equ __section_code_user_2              , 0x0000000041a76000
.equ code_user_3                        , 0x000000004128c000
.equ __section_code_user_3              , 0x0000000041a77000
.equ code_user_4                        , 0x000000004128d000
.equ __section_code_user_4              , 0x0000000041a78000
.equ code_user_5                        , 0x000000004128e000
.equ __section_code_user_5              , 0x0000000041a79000
.equ code_user_6                        , 0x000000004128f000
.equ __section_code_user_6              , 0x0000000041a7a000
.equ code_user_7                        , 0x0000000041290000
.equ __section_code_user_7              , 0x0000000041a7b000
.equ code_user_8                        , 0x0000000041291000
.equ __section_code_user_8              , 0x0000000041a7c000
.equ code_user_9                        , 0x0000000041292000
.equ __section_code_user_9              , 0x0000000041a7d000
.equ code_user_10                       , 0x0000000041293000
.equ __section_code_user_10             , 0x0000000041a7e000
.equ code_user_11                       , 0x0000000041294000
.equ __section_code_user_11             , 0x0000000041a7f000
.equ code_user_12                       , 0x0000000041295000
.equ __section_code_user_12             , 0x0000000041a80000
.equ code_user_13                       , 0x0000000041296000
.equ __section_code_user_13             , 0x0000000041a81000
.equ code_user_14                       , 0x0000000041297000
.equ __section_code_user_14             , 0x0000000041a82000
.equ code_user_15                       , 0x0000000041298000
.equ __section_code_user_15             , 0x0000000041a83000
.equ code_user_16                       , 0x0000000041299000
.equ __section_code_user_16             , 0x0000000041a84000
.equ code_user_17                       , 0x000000004129a000
.equ __section_code_user_17             , 0x0000000041a85000
.equ code_user_18                       , 0x000000004129b000
.equ __section_code_user_18             , 0x0000000041a86000
.equ code_user_19                       , 0x000000004129c000
.equ __section_code_user_19             , 0x0000000041a87000
.equ code_user_20                       , 0x000000004129d000
.equ __section_code_user_20             , 0x0000000041a88000
.equ code_user_21                       , 0x000000004129e000
.equ __section_code_user_21             , 0x0000000041a89000
.equ code_user_22                       , 0x000000004129f000
.equ __section_code_user_22             , 0x0000000041a8a000
.equ code_user_23                       , 0x00000000412a0000
.equ __section_code_user_23             , 0x0000000041a8b000
.equ code_user_24                       , 0x00000000412a1000
.equ __section_code_user_24             , 0x0000000041a8c000
.equ code_user_25                       , 0x00000000412a2000
.equ __section_code_user_25             , 0x0000000041a8d000
.equ code_user_26                       , 0x00000000412a3000
.equ __section_code_user_26             , 0x0000000041a8e000
.equ code_user_27                       , 0x00000000412a4000
.equ __section_code_user_27             , 0x0000000041a8f000
.equ code_user_28                       , 0x00000000412a5000
.equ __section_code_user_28             , 0x0000000041a90000
.equ code_user_29                       , 0x00000000412a6000
.equ __section_code_user_29             , 0x0000000041a91000
.equ code_user_30                       , 0x00000000412a7000
.equ __section_code_user_30             , 0x0000000041a92000
.equ code_user_31                       , 0x00000000412a8000
.equ __section_code_user_31             , 0x0000000041a93000
.equ code_user_32                       , 0x00000000412a9000
.equ __section_code_user_32             , 0x0000000041a94000
.equ code_user_33                       , 0x00000000412aa000
.equ __section_code_user_33             , 0x0000000041a95000
.equ code_user_34                       , 0x00000000412ab000
.equ __section_code_user_34             , 0x0000000041a96000
.equ code_user_35                       , 0x00000000412ac000
.equ __section_code_user_35             , 0x0000000041a97000
.equ code_user_36                       , 0x00000000412ad000
.equ __section_code_user_36             , 0x0000000041a98000
.equ code_user_37                       , 0x00000000412ae000
.equ __section_code_user_37             , 0x0000000041a99000
.equ code_user_38                       , 0x00000000412af000
.equ __section_code_user_38             , 0x0000000041a9a000
.equ code_user_39                       , 0x00000000412b0000
.equ __section_code_user_39             , 0x0000000041a9b000
.equ code_user_40                       , 0x00000000412b1000
.equ __section_code_user_40             , 0x0000000041a9c000
.equ code_user_41                       , 0x00000000412b2000
.equ __section_code_user_41             , 0x0000000041a9d000
.equ code_user_42                       , 0x00000000412b3000
.equ __section_code_user_42             , 0x0000000041a9e000
.equ code_user_43                       , 0x00000000412b4000
.equ __section_code_user_43             , 0x0000000041a9f000
.equ code_user_44                       , 0x00000000412b5000
.equ __section_code_user_44             , 0x0000000041aa0000
.equ code_user_45                       , 0x00000000412b6000
.equ __section_code_user_45             , 0x0000000041aa1000
.equ code_user_46                       , 0x00000000412b7000
.equ __section_code_user_46             , 0x0000000041aa2000
.equ code_user_47                       , 0x00000000412b8000
.equ __section_code_user_47             , 0x0000000041aa3000
.equ code_user_48                       , 0x00000000412b9000
.equ __section_code_user_48             , 0x0000000041aa4000
.equ code_user_49                       , 0x00000000412ba000
.equ __section_code_user_49             , 0x0000000041aa5000
.equ code_user_50                       , 0x00000000412bb000
.equ __section_code_user_50             , 0x0000000041aa6000
.equ code_user_51                       , 0x00000000412bc000
.equ __section_code_user_51             , 0x0000000041aa7000
.equ code_user_52                       , 0x00000000412bd000
.equ __section_code_user_52             , 0x0000000041aa8000
.equ code_user_53                       , 0x00000000412be000
.equ __section_code_user_53             , 0x0000000041aa9000
.equ code_user_54                       , 0x00000000412bf000
.equ __section_code_user_54             , 0x0000000041aaa000
.equ code_user_55                       , 0x00000000412c0000
.equ __section_code_user_55             , 0x0000000041aab000
.equ code_user_56                       , 0x00000000412c1000
.equ __section_code_user_56             , 0x0000000041aac000
.equ code_user_57                       , 0x00000000412c2000
.equ __section_code_user_57             , 0x0000000041aad000
.equ code_user_58                       , 0x00000000412c3000
.equ __section_code_user_58             , 0x0000000041aae000
.equ code_user_59                       , 0x00000000412c4000
.equ __section_code_user_59             , 0x0000000041aaf000
.equ code_user_60                       , 0x00000000412c5000
.equ __section_code_user_60             , 0x0000000041ab0000
.equ code_user_61                       , 0x00000000412c6000
.equ __section_code_user_61             , 0x0000000041ab1000
.equ code_user_62                       , 0x00000000412c7000
.equ __section_code_user_62             , 0x0000000041ab2000
.equ code_user_63                       , 0x00000000412c8000
.equ __section_code_user_63             , 0x0000000041ab3000
.equ code_user_64                       , 0x00000000412c9000
.equ __section_code_user_64             , 0x0000000041ab4000
.equ code_user_65                       , 0x00000000412ca000
.equ __section_code_user_65             , 0x0000000041ab5000
.equ code_user_66                       , 0x00000000412cb000
.equ __section_code_user_66             , 0x0000000041ab6000
.equ code_user_67                       , 0x00000000412cc000
.equ __section_code_user_67             , 0x0000000041ab7000
.equ code_user_68                       , 0x00000000412cd000
.equ __section_code_user_68             , 0x0000000041ab8000
.equ code_user_69                       , 0x00000000412ce000
.equ __section_code_user_69             , 0x0000000041ab9000
.equ code_user_70                       , 0x00000000412cf000
.equ __section_code_user_70             , 0x0000000041aba000
.equ code_user_71                       , 0x00000000412d0000
.equ __section_code_user_71             , 0x0000000041abb000
.equ code_user_72                       , 0x00000000412d1000
.equ __section_code_user_72             , 0x0000000041abc000
.equ code_user_73                       , 0x00000000412d2000
.equ __section_code_user_73             , 0x0000000041abd000
.equ code_user_74                       , 0x00000000412d3000
.equ __section_code_user_74             , 0x0000000041abe000
.equ code_user_75                       , 0x00000000412d4000
.equ __section_code_user_75             , 0x0000000041abf000
.equ code_user_76                       , 0x00000000412d5000
.equ __section_code_user_76             , 0x0000000041ac0000
.equ code_user_77                       , 0x00000000412d6000
.equ __section_code_user_77             , 0x0000000041ac1000
.equ code_user_78                       , 0x00000000412d7000
.equ __section_code_user_78             , 0x0000000041ac2000
.equ code_user_79                       , 0x00000000412d8000
.equ __section_code_user_79             , 0x0000000041ac3000
.equ code_user_80                       , 0x00000000412d9000
.equ __section_code_user_80             , 0x0000000041ac4000
.equ code_user_81                       , 0x00000000412da000
.equ __section_code_user_81             , 0x0000000041ac5000
.equ code_user_82                       , 0x00000000412db000
.equ __section_code_user_82             , 0x0000000041ac6000
.equ code_user_83                       , 0x00000000412dc000
.equ __section_code_user_83             , 0x0000000041ac7000
.equ code_user_84                       , 0x00000000412dd000
.equ __section_code_user_84             , 0x0000000041ac8000
.equ code_user_85                       , 0x00000000412de000
.equ __section_code_user_85             , 0x0000000041ac9000
.equ code_user_86                       , 0x00000000412df000
.equ __section_code_user_86             , 0x0000000041aca000
.equ code_user_87                       , 0x00000000412e0000
.equ __section_code_user_87             , 0x0000000041acb000
.equ code_user_88                       , 0x00000000412e1000
.equ __section_code_user_88             , 0x0000000041acc000
.equ code_user_89                       , 0x00000000412e2000
.equ __section_code_user_89             , 0x0000000041acd000
.equ code_user_90                       , 0x00000000412e3000
.equ __section_code_user_90             , 0x0000000041ace000
.equ code_user_91                       , 0x00000000412e4000
.equ __section_code_user_91             , 0x0000000041acf000
.equ code_user_92                       , 0x00000000412e5000
.equ __section_code_user_92             , 0x0000000041ad0000
.equ code_user_93                       , 0x00000000412e6000
.equ __section_code_user_93             , 0x0000000041ad1000
.equ code_user_94                       , 0x00000000412e7000
.equ __section_code_user_94             , 0x0000000041ad2000
.equ code_user_95                       , 0x00000000412e8000
.equ __section_code_user_95             , 0x0000000041ad3000
.equ code_user_96                       , 0x00000000412e9000
.equ __section_code_user_96             , 0x0000000041ad4000
.equ code_user_97                       , 0x00000000412ea000
.equ __section_code_user_97             , 0x0000000041ad5000
.equ code_user_98                       , 0x00000000412eb000
.equ __section_code_user_98             , 0x0000000041ad6000
.equ code_user_99                       , 0x00000000412ec000
.equ __section_code_user_99             , 0x0000000041ad7000
.equ code_user_100                      , 0x00000000412ed000
.equ __section_code_user_100            , 0x0000000041ad8000
.equ code_user_101                      , 0x00000000412ee000
.equ __section_code_user_101            , 0x0000000041ad9000
.equ code_user_102                      , 0x00000000412ef000
.equ __section_code_user_102            , 0x0000000041ada000
.equ code_user_103                      , 0x00000000412f0000
.equ __section_code_user_103            , 0x0000000041adb000
.equ code_user_104                      , 0x00000000412f1000
.equ __section_code_user_104            , 0x0000000041adc000
.equ code_user_105                      , 0x00000000412f2000
.equ __section_code_user_105            , 0x0000000041add000
.equ code_user_106                      , 0x00000000412f3000
.equ __section_code_user_106            , 0x0000000041ade000
.equ code_user_107                      , 0x00000000412f4000
.equ __section_code_user_107            , 0x0000000041adf000
.equ code_user_108                      , 0x00000000412f5000
.equ __section_code_user_108            , 0x0000000041ae0000
.equ code_user_109                      , 0x00000000412f6000
.equ __section_code_user_109            , 0x0000000041ae1000
.equ code_user_110                      , 0x00000000412f7000
.equ __section_code_user_110            , 0x0000000041ae2000
.equ code_user_111                      , 0x00000000412f8000
.equ __section_code_user_111            , 0x0000000041ae3000
.equ code_user_112                      , 0x00000000412f9000
.equ __section_code_user_112            , 0x0000000041ae4000
.equ code_user_113                      , 0x00000000412fa000
.equ __section_code_user_113            , 0x0000000041ae5000
.equ code_user_114                      , 0x00000000412fb000
.equ __section_code_user_114            , 0x0000000041ae6000
.equ code_user_115                      , 0x00000000412fc000
.equ __section_code_user_115            , 0x0000000041ae7000
.equ code_user_116                      , 0x00000000412fd000
.equ __section_code_user_116            , 0x0000000041ae8000
.equ code_user_117                      , 0x00000000412fe000
.equ __section_code_user_117            , 0x0000000041ae9000
.equ code_user_118                      , 0x00000000412ff000
.equ __section_code_user_118            , 0x0000000041aea000
.equ code_user_119                      , 0x0000000041300000
.equ __section_code_user_119            , 0x0000000041aeb000
.equ code_user_120                      , 0x0000000041301000
.equ __section_code_user_120            , 0x0000000041aec000
.equ code_user_121                      , 0x0000000041302000
.equ __section_code_user_121            , 0x0000000041aed000
.equ code_user_122                      , 0x0000000041303000
.equ __section_code_user_122            , 0x0000000041aee000
.equ code_user_123                      , 0x0000000041304000
.equ __section_code_user_123            , 0x0000000041aef000
.equ code_user_124                      , 0x0000000041305000
.equ __section_code_user_124            , 0x0000000041af0000
.equ code_user_125                      , 0x0000000041306000
.equ __section_code_user_125            , 0x0000000041af1000
.equ code_user_126                      , 0x0000000041307000
.equ __section_code_user_126            , 0x0000000041af2000
.equ code_user_127                      , 0x0000000041308000
.equ __section_code_user_127            , 0x0000000041af3000
.equ code_machine_0                     , 0x0000000041309000
.equ __section_code_machine_0           , 0x0000000041af4000
.equ code_machine_1                     , 0x000000004130a000
.equ __section_code_machine_1           , 0x0000000041af5000
.equ code_machine_2                     , 0x000000004130b000
.equ __section_code_machine_2           , 0x0000000041af6000
.equ code_machine_3                     , 0x000000004130c000
.equ __section_code_machine_3           , 0x0000000041af7000
.equ code_machine_4                     , 0x000000004130d000
.equ __section_code_machine_4           , 0x0000000041af8000
.equ code_machine_5                     , 0x000000004130e000
.equ __section_code_machine_5           , 0x0000000041af9000
.equ code_machine_6                     , 0x000000004130f000
.equ __section_code_machine_6           , 0x0000000041afa000
.equ code_machine_7                     , 0x0000000041310000
.equ __section_code_machine_7           , 0x0000000041afb000
.equ code_machine_8                     , 0x0000000041311000
.equ __section_code_machine_8           , 0x0000000041afc000
.equ code_machine_9                     , 0x0000000041312000
.equ __section_code_machine_9           , 0x0000000041afd000
.equ code_machine_10                    , 0x0000000041313000
.equ __section_code_machine_10          , 0x0000000041afe000
.equ code_machine_11                    , 0x0000000041314000
.equ __section_code_machine_11          , 0x0000000041aff000
.equ code_machine_12                    , 0x0000000041315000
.equ __section_code_machine_12          , 0x0000000041b00000
.equ code_machine_13                    , 0x0000000041316000
.equ __section_code_machine_13          , 0x0000000041b01000
.equ code_machine_14                    , 0x0000000041317000
.equ __section_code_machine_14          , 0x0000000041b02000
.equ code_machine_15                    , 0x0000000041318000
.equ __section_code_machine_15          , 0x0000000041b03000
.equ code_machine_16                    , 0x0000000041319000
.equ __section_code_machine_16          , 0x0000000041b04000
.equ code_machine_17                    , 0x000000004131a000
.equ __section_code_machine_17          , 0x0000000041b05000
.equ code_machine_18                    , 0x000000004131b000
.equ __section_code_machine_18          , 0x0000000041b06000
.equ code_machine_19                    , 0x000000004131c000
.equ __section_code_machine_19          , 0x0000000041b07000
.equ code_machine_20                    , 0x000000004131d000
.equ __section_code_machine_20          , 0x0000000041b08000
.equ code_machine_21                    , 0x000000004131e000
.equ __section_code_machine_21          , 0x0000000041b09000
.equ code_machine_22                    , 0x000000004131f000
.equ __section_code_machine_22          , 0x0000000041b0a000
.equ code_machine_23                    , 0x0000000041320000
.equ __section_code_machine_23          , 0x0000000041b0b000
.equ code_machine_24                    , 0x0000000041321000
.equ __section_code_machine_24          , 0x0000000041b0c000
.equ code_machine_25                    , 0x0000000041322000
.equ __section_code_machine_25          , 0x0000000041b0d000
.equ code_machine_26                    , 0x0000000041323000
.equ __section_code_machine_26          , 0x0000000041b0e000
.equ code_machine_27                    , 0x0000000041324000
.equ __section_code_machine_27          , 0x0000000041b0f000
.equ code_machine_28                    , 0x0000000041325000
.equ __section_code_machine_28          , 0x0000000041b10000
.equ code_machine_29                    , 0x0000000041326000
.equ __section_code_machine_29          , 0x0000000041b11000
.equ code_machine_30                    , 0x0000000041327000
.equ __section_code_machine_30          , 0x0000000041b12000
.equ code_machine_31                    , 0x0000000041328000
.equ __section_code_machine_31          , 0x0000000041b13000
.equ code_machine_32                    , 0x0000000041329000
.equ __section_code_machine_32          , 0x0000000041b14000
.equ code_machine_33                    , 0x000000004132a000
.equ __section_code_machine_33          , 0x0000000041b15000
.equ code_machine_34                    , 0x000000004132b000
.equ __section_code_machine_34          , 0x0000000041b16000
.equ code_machine_35                    , 0x000000004132c000
.equ __section_code_machine_35          , 0x0000000041b17000
.equ code_machine_36                    , 0x000000004132d000
.equ __section_code_machine_36          , 0x0000000041b18000
.equ code_machine_37                    , 0x000000004132e000
.equ __section_code_machine_37          , 0x0000000041b19000
.equ code_machine_38                    , 0x000000004132f000
.equ __section_code_machine_38          , 0x0000000041b1a000
.equ code_machine_39                    , 0x0000000041330000
.equ __section_code_machine_39          , 0x0000000041b1b000
.equ code_machine_40                    , 0x0000000041331000
.equ __section_code_machine_40          , 0x0000000041b1c000
.equ code_machine_41                    , 0x0000000041332000
.equ __section_code_machine_41          , 0x0000000041b1d000
.equ code_machine_42                    , 0x0000000041333000
.equ __section_code_machine_42          , 0x0000000041b1e000
.equ code_machine_43                    , 0x0000000041334000
.equ __section_code_machine_43          , 0x0000000041b1f000
.equ code_machine_44                    , 0x0000000041335000
.equ __section_code_machine_44          , 0x0000000041b20000
.equ code_machine_45                    , 0x0000000041336000
.equ __section_code_machine_45          , 0x0000000041b21000
.equ code_machine_46                    , 0x0000000041337000
.equ __section_code_machine_46          , 0x0000000041b22000
.equ code_machine_47                    , 0x0000000041338000
.equ __section_code_machine_47          , 0x0000000041b23000
.equ code_machine_48                    , 0x0000000041339000
.equ __section_code_machine_48          , 0x0000000041b24000
.equ code_machine_49                    , 0x000000004133a000
.equ __section_code_machine_49          , 0x0000000041b25000
.equ code_machine_50                    , 0x000000004133b000
.equ __section_code_machine_50          , 0x0000000041b26000
.equ code_machine_51                    , 0x000000004133c000
.equ __section_code_machine_51          , 0x0000000041b27000
.equ code_machine_52                    , 0x000000004133d000
.equ __section_code_machine_52          , 0x0000000041b28000
.equ code_machine_53                    , 0x000000004133e000
.equ __section_code_machine_53          , 0x0000000041b29000
.equ code_machine_54                    , 0x000000004133f000
.equ __section_code_machine_54          , 0x0000000041b2a000
.equ code_machine_55                    , 0x0000000041340000
.equ __section_code_machine_55          , 0x0000000041b2b000
.equ code_machine_56                    , 0x0000000041341000
.equ __section_code_machine_56          , 0x0000000041b2c000
.equ code_machine_57                    , 0x0000000041342000
.equ __section_code_machine_57          , 0x0000000041b2d000
.equ code_machine_58                    , 0x0000000041343000
.equ __section_code_machine_58          , 0x0000000041b2e000
.equ code_machine_59                    , 0x0000000041344000
.equ __section_code_machine_59          , 0x0000000041b2f000
.equ code_machine_60                    , 0x0000000041345000
.equ __section_code_machine_60          , 0x0000000041b30000
.equ code_machine_61                    , 0x0000000041346000
.equ __section_code_machine_61          , 0x0000000041b31000
.equ code_machine_62                    , 0x0000000041347000
.equ __section_code_machine_62          , 0x0000000041b32000
.equ code_machine_63                    , 0x0000000041348000
.equ __section_code_machine_63          , 0x0000000041b33000
.equ code_machine_64                    , 0x0000000041349000
.equ __section_code_machine_64          , 0x0000000041b34000
.equ code_machine_65                    , 0x000000004134a000
.equ __section_code_machine_65          , 0x0000000041b35000
.equ code_machine_66                    , 0x000000004134b000
.equ __section_code_machine_66          , 0x0000000041b36000
.equ code_machine_67                    , 0x000000004134c000
.equ __section_code_machine_67          , 0x0000000041b37000
.equ code_machine_68                    , 0x000000004134d000
.equ __section_code_machine_68          , 0x0000000041b38000
.equ code_machine_69                    , 0x000000004134e000
.equ __section_code_machine_69          , 0x0000000041b39000
.equ code_machine_70                    , 0x000000004134f000
.equ __section_code_machine_70          , 0x0000000041b3a000
.equ code_machine_71                    , 0x0000000041350000
.equ __section_code_machine_71          , 0x0000000041b3b000
.equ code_machine_72                    , 0x0000000041351000
.equ __section_code_machine_72          , 0x0000000041b3c000
.equ code_machine_73                    , 0x0000000041352000
.equ __section_code_machine_73          , 0x0000000041b3d000
.equ code_machine_74                    , 0x0000000041353000
.equ __section_code_machine_74          , 0x0000000041b3e000
.equ code_machine_75                    , 0x0000000041354000
.equ __section_code_machine_75          , 0x0000000041b3f000
.equ code_machine_76                    , 0x0000000041355000
.equ __section_code_machine_76          , 0x0000000041b40000
.equ code_machine_77                    , 0x0000000041356000
.equ __section_code_machine_77          , 0x0000000041b41000
.equ code_machine_78                    , 0x0000000041357000
.equ __section_code_machine_78          , 0x0000000041b42000
.equ code_machine_79                    , 0x0000000041358000
.equ __section_code_machine_79          , 0x0000000041b43000
.equ code_machine_80                    , 0x0000000041359000
.equ __section_code_machine_80          , 0x0000000041b44000
.equ code_machine_81                    , 0x000000004135a000
.equ __section_code_machine_81          , 0x0000000041b45000
.equ code_machine_82                    , 0x000000004135b000
.equ __section_code_machine_82          , 0x0000000041b46000
.equ code_machine_83                    , 0x000000004135c000
.equ __section_code_machine_83          , 0x0000000041b47000
.equ code_machine_84                    , 0x000000004135d000
.equ __section_code_machine_84          , 0x0000000041b48000
.equ code_machine_85                    , 0x000000004135e000
.equ __section_code_machine_85          , 0x0000000041b49000
.equ code_machine_86                    , 0x000000004135f000
.equ __section_code_machine_86          , 0x0000000041b4a000
.equ code_machine_87                    , 0x0000000041360000
.equ __section_code_machine_87          , 0x0000000041b4b000
.equ code_machine_88                    , 0x0000000041361000
.equ __section_code_machine_88          , 0x0000000041b4c000
.equ code_machine_89                    , 0x0000000041362000
.equ __section_code_machine_89          , 0x0000000041b4d000
.equ code_machine_90                    , 0x0000000041363000
.equ __section_code_machine_90          , 0x0000000041b4e000
.equ code_machine_91                    , 0x0000000041364000
.equ __section_code_machine_91          , 0x0000000041b4f000
.equ code_machine_92                    , 0x0000000041365000
.equ __section_code_machine_92          , 0x0000000041b50000
.equ code_machine_93                    , 0x0000000041366000
.equ __section_code_machine_93          , 0x0000000041b51000
.equ code_machine_94                    , 0x0000000041367000
.equ __section_code_machine_94          , 0x0000000041b52000
.equ code_machine_95                    , 0x0000000041368000
.equ __section_code_machine_95          , 0x0000000041b53000
.equ code_machine_96                    , 0x0000000041369000
.equ __section_code_machine_96          , 0x0000000041b54000
.equ code_machine_97                    , 0x000000004136a000
.equ __section_code_machine_97          , 0x0000000041b55000
.equ code_machine_98                    , 0x000000004136b000
.equ __section_code_machine_98          , 0x0000000041b56000
.equ code_machine_99                    , 0x000000004136c000
.equ __section_code_machine_99          , 0x0000000041b57000
.equ code_machine_100                   , 0x000000004136d000
.equ __section_code_machine_100         , 0x0000000041b58000
.equ code_machine_101                   , 0x000000004136e000
.equ __section_code_machine_101         , 0x0000000041b59000
.equ code_machine_102                   , 0x000000004136f000
.equ __section_code_machine_102         , 0x0000000041b5a000
.equ code_machine_103                   , 0x0000000041370000
.equ __section_code_machine_103         , 0x0000000041b5b000
.equ code_machine_104                   , 0x0000000041371000
.equ __section_code_machine_104         , 0x0000000041b5c000
.equ code_machine_105                   , 0x0000000041372000
.equ __section_code_machine_105         , 0x0000000041b5d000
.equ code_machine_106                   , 0x0000000041373000
.equ __section_code_machine_106         , 0x0000000041b5e000
.equ code_machine_107                   , 0x0000000041374000
.equ __section_code_machine_107         , 0x0000000041b5f000
.equ code_machine_108                   , 0x0000000041375000
.equ __section_code_machine_108         , 0x0000000041b60000
.equ code_machine_109                   , 0x0000000041376000
.equ __section_code_machine_109         , 0x0000000041b61000
.equ code_machine_110                   , 0x0000000041377000
.equ __section_code_machine_110         , 0x0000000041b62000
.equ code_machine_111                   , 0x0000000041378000
.equ __section_code_machine_111         , 0x0000000041b63000
.equ code_machine_112                   , 0x0000000041379000
.equ __section_code_machine_112         , 0x0000000041b64000
.equ code_machine_113                   , 0x000000004137a000
.equ __section_code_machine_113         , 0x0000000041b65000
.equ code_machine_114                   , 0x000000004137b000
.equ __section_code_machine_114         , 0x0000000041b66000
.equ code_machine_115                   , 0x000000004137c000
.equ __section_code_machine_115         , 0x0000000041b67000
.equ code_machine_116                   , 0x000000004137d000
.equ __section_code_machine_116         , 0x0000000041b68000
.equ code_machine_117                   , 0x000000004137e000
.equ __section_code_machine_117         , 0x0000000041b69000
.equ code_machine_118                   , 0x000000004137f000
.equ __section_code_machine_118         , 0x0000000041b6a000
.equ code_machine_119                   , 0x0000000041380000
.equ __section_code_machine_119         , 0x0000000041b6b000
.equ code_machine_120                   , 0x0000000041381000
.equ __section_code_machine_120         , 0x0000000041b6c000
.equ code_machine_121                   , 0x0000000041382000
.equ __section_code_machine_121         , 0x0000000041b6d000
.equ code_machine_122                   , 0x0000000041383000
.equ __section_code_machine_122         , 0x0000000041b6e000
.equ code_machine_123                   , 0x0000000041384000
.equ __section_code_machine_123         , 0x0000000041b6f000
.equ code_machine_124                   , 0x0000000041385000
.equ __section_code_machine_124         , 0x0000000041b70000
.equ code_machine_125                   , 0x0000000041386000
.equ __section_code_machine_125         , 0x0000000041b71000
.equ code_machine_126                   , 0x0000000041387000
.equ __section_code_machine_126         , 0x0000000041b72000
.equ code_machine_127                   , 0x0000000041388000
.equ __section_code_machine_127         , 0x0000000041b73000
.equ csr_machine_0                      , 0x0000000041389000
.equ __section_csr_machine_0            , 0x0000000041b74000
.equ csr_super_0                        , 0x000000004138a000
.equ __section_csr_super_0              , 0x0000000041b75000
.equ data                               , 0x0000000003004000
.equ __section_data                     , 0x0000000041bf2000
.equ __section_data_1                   , 0x0000000003005000
.equ __section_data_1_phys              , 0x0000000041bf3000
.equ os_data                            , 0x000000002e752000
.equ __section_os_data                  , 0x0000000041bf0000
.equ __section_os_data_1                , 0x000000002e753000
.equ __section_os_data_1_phys           , 0x0000000041bf1000
.equ hart_context                       , 0x000000000000a000
.equ __section_hart_context             , 0x0000000041bcf000
.equ hart_stack_0                       , 0x0000000007314000
.equ __section_hart_stack_0             , 0x00000000415f9000
.equ io_htif                            , 0x0000000041040000
.equ io_htif_phys                       , 0x0000000041040000
.equ map_os_sptbr                       , 0x0000000041c48000
# ;#page_mapping(lin_name=code_mem1, phys_name=code_mem1_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem1                          , 0x000000000098b000
# ;#page_mapping(lin_name=code_mem1, phys_name=code_mem1_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem1_phys                     , 0x00000000415fb000
# ;#page_mapping(lin_name=code_mem4, phys_name=code_mem4_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem4                          , 0x0000000003002000
# ;#page_mapping(lin_name=code_mem4, phys_name=code_mem4_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem4_phys                     , 0x00000000415fa000
# ;#page_mapping(lin_name=code_mem16, phys_name=code_mem16_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem16                         , 0x00000000281bb000
# ;#page_mapping(lin_name=code_mem16, phys_name=code_mem16_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem16_phys                    , 0x0000000041be2000
# ;#page_mapping(lin_name=code_mem24, phys_name=code_mem24_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem24                         , 0x000000000aa3e000
# ;#page_mapping(lin_name=code_mem24, phys_name=code_mem24_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem24_phys                    , 0x0000000041629000
# ;#page_mapping(lin_name=code_mem27, phys_name=code_mem27_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem27                         , 0x000000000123a000
# ;#page_mapping(lin_name=code_mem27, phys_name=code_mem27_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ code_mem27_phys                    , 0x0000000041be3000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0                               , 0x00000007b17d0000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0_phys                          , 0x00000000415bc000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2                               , 0x000000030f6f4000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2_phys                          , 0x000000004145c000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['2mb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3                               , 0x000000161b800000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['2mb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3_phys                          , 0x0000000042800000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=1, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5                               , 0x0000000000005000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=1, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5_phys                          , 0x000000004148d000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['2mb'], x=1, v=1, r=1, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6                               , 0x0000000740000000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['2mb'], x=1, v=1, r=1, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6_phys                          , 0x0000000042a00000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['2mb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7                               , 0x0000000000200000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['2mb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7_phys                          , 0x0000000044a00000
# ;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['2mb'], x=0, v=1, r=0, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem8                               , 0x000000000d600000
# ;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['2mb'], x=0, v=1, r=0, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem8_phys                          , 0x0000000042000000
# ;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], x=0, v=0, r=1, w=0, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem9                               , 0x0000000140000000
# ;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], x=0, v=0, r=1, w=0, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem9_phys                          , 0x0000000041bab000
# ;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], x=0, v=1, r=0, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem10                              , 0x0000001780000000
# ;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], x=0, v=1, r=0, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem10_phys                         , 0x000000004146d000
# ;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], x=1, v=1, r=0, w=0, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem11                              , 0x00000015c0000000
# ;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], x=1, v=1, r=0, w=0, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem11_phys                         , 0x0000000042487000
# ;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], x=0, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem12                              , 0x000000007248a000
# ;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], x=0, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem12_phys                         , 0x00000000423c5000
# ;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem13                              , 0x0000000000056000
# ;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem13_phys                         , 0x00000000438fe000
# ;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], x=1, v=1, r=0, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem14                              , 0x00000002b6765000
# ;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], x=1, v=1, r=0, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem14_phys                         , 0x000000004222b000
# ;#page_mapping(lin_name=mem15, phys_name=mem15_phys, pagesize=['4kb'], x=1, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem15                              , 0x00000007b17ce000
# ;#page_mapping(lin_name=mem15, phys_name=mem15_phys, pagesize=['4kb'], x=1, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem15_phys                         , 0x00000000413ca000
# ;#page_mapping(lin_name=mem17, phys_name=mem17_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem17                              , 0x000000013e39f000
# ;#page_mapping(lin_name=mem17, phys_name=mem17_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem17_phys                         , 0x0000000041b7d000
# ;#page_mapping(lin_name=mem18, phys_name=mem18_phys, pagesize=['4kb'], x=1, v=1, r=0, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem18                              , 0x000000000aaad000
# ;#page_mapping(lin_name=mem18, phys_name=mem18_phys, pagesize=['4kb'], x=1, v=1, r=0, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem18_phys                         , 0x00000000417ff000
# ;#page_mapping(lin_name=mem19, phys_name=mem19_phys, pagesize=['4kb'], x=0, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem19                              , 0x0000000000002000
# ;#page_mapping(lin_name=mem19, phys_name=mem19_phys, pagesize=['4kb'], x=0, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem19_phys                         , 0x00000000424ab000
# ;#page_mapping(lin_name=mem20, phys_name=mem20_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=1, a=1, d=1, page_maps=['map_os'])
.equ mem20                              , 0x00000000000ee000
# ;#page_mapping(lin_name=mem20, phys_name=mem20_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=1, a=1, d=1, page_maps=['map_os'])
.equ mem20_phys                         , 0x0000000041460000
# ;#page_mapping(lin_name=mem21, phys_name=mem21_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem21                              , 0x0000000640000000
# ;#page_mapping(lin_name=mem21, phys_name=mem21_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem21_phys                         , 0x0000000041bcc000
# ;#page_mapping(lin_name=mem22, phys_name=mem22_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem22                              , 0x0000000340000000
# ;#page_mapping(lin_name=mem22, phys_name=mem22_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=1, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem22_phys                         , 0x0000000042218000
# ;#page_mapping(lin_name=mem23, phys_name=mem23_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem23                              , 0x00000002b6767000
# ;#page_mapping(lin_name=mem23, phys_name=mem23_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem23_phys                         , 0x000000004220a000
# ;#page_mapping(lin_name=mem25, phys_name=mem25_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem25                              , 0x00000006e8e4f000
# ;#page_mapping(lin_name=mem25, phys_name=mem25_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem25_phys                         , 0x0000000041463000
# ;#page_mapping(lin_name=mem26, phys_name=mem26_phys, pagesize=['2mb'], x=1, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem26                              , 0x00000000ffc00000
# ;#page_mapping(lin_name=mem26, phys_name=mem26_phys, pagesize=['2mb'], x=1, v=1, r=1, w=0, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem26_phys                         , 0x0000000043a00000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage                     , 0xffffffc8a1bd3000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage_phys                , 0x0000000041466000
# ;#page_mapping(lin_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack, phys_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_001_ptw_no_faults_all_access_types_stack, 0x0000000002f82000
# ;#page_mapping(lin_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack, phys_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_001_ptw_no_faults_all_access_types_stack_phys, 0x00000000413f8000
# ;#page_mapping(lin_name=SID_PBVMS_003_ptw_all_privilege_modes_stack, phys_name=SID_PBVMS_003_ptw_all_privilege_modes_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_003_ptw_all_privilege_modes_stack, 0x000000007adc4000
# ;#page_mapping(lin_name=SID_PBVMS_003_ptw_all_privilege_modes_stack, phys_name=SID_PBVMS_003_ptw_all_privilege_modes_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_003_ptw_all_privilege_modes_stack_phys, 0x00000000422a9000
# ;#page_mapping(lin_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack, phys_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_006_ptw_page_boundary_crossing_stack, 0x000000001d9fa000
# ;#page_mapping(lin_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack, phys_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_006_ptw_page_boundary_crossing_stack_phys, 0x0000000042225000
# ;#page_mapping(lin_name=SID_PBVMS_008_va_sign_extension_fault_stack, phys_name=SID_PBVMS_008_va_sign_extension_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_008_va_sign_extension_fault_stack, 0x00000000ffe40000
# ;#page_mapping(lin_name=SID_PBVMS_008_va_sign_extension_fault_stack, phys_name=SID_PBVMS_008_va_sign_extension_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_008_va_sign_extension_fault_stack_phys, 0x00000000415cc000
# ;#page_mapping(lin_name=SID_PBVMS_009_superpage_alignment_fault_stack, phys_name=SID_PBVMS_009_superpage_alignment_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_009_superpage_alignment_fault_stack, 0x0000000000022000
# ;#page_mapping(lin_name=SID_PBVMS_009_superpage_alignment_fault_stack, phys_name=SID_PBVMS_009_superpage_alignment_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_009_superpage_alignment_fault_stack_phys, 0x0000000042c00000
# ;#page_mapping(lin_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack, phys_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_011_ptw_fault_boundary_crossing_stack, 0x000000000000b000
# ;#page_mapping(lin_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack, phys_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_011_ptw_fault_boundary_crossing_stack_phys, 0x00000000416f8000
# ;#page_mapping(lin_name=SID_PBVMS_012_ptw_fault_prioritization_stack, phys_name=SID_PBVMS_012_ptw_fault_prioritization_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_012_ptw_fault_prioritization_stack, 0x0000000003fb2000
# ;#page_mapping(lin_name=SID_PBVMS_012_ptw_fault_prioritization_stack, phys_name=SID_PBVMS_012_ptw_fault_prioritization_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_012_ptw_fault_prioritization_stack_phys, 0x0000000042224000
# ;#page_mapping(lin_name=SID_PBVMS_013_ptw_permission_encodings_stack, phys_name=SID_PBVMS_013_ptw_permission_encodings_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_013_ptw_permission_encodings_stack, 0x000000000123c000
# ;#page_mapping(lin_name=SID_PBVMS_013_ptw_permission_encodings_stack, phys_name=SID_PBVMS_013_ptw_permission_encodings_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_013_ptw_permission_encodings_stack_phys, 0x0000000041b78000
# ;#page_mapping(lin_name=SID_PBVMS_014_mstatus_sum_mxr_stack, phys_name=SID_PBVMS_014_mstatus_sum_mxr_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_014_mstatus_sum_mxr_stack, 0x0000000002b43000
# ;#page_mapping(lin_name=SID_PBVMS_014_mstatus_sum_mxr_stack, phys_name=SID_PBVMS_014_mstatus_sum_mxr_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_014_mstatus_sum_mxr_stack_phys, 0x0000000041bc3000
# ;#page_mapping(lin_name=SID_PBVMS_015_global_bit_honoured_stack, phys_name=SID_PBVMS_015_global_bit_honoured_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_015_global_bit_honoured_stack, 0x0000000000dca000
# ;#page_mapping(lin_name=SID_PBVMS_015_global_bit_honoured_stack, phys_name=SID_PBVMS_015_global_bit_honoured_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_015_global_bit_honoured_stack_phys, 0x00000000413e5000
# ;#page_mapping(lin_name=SID_PBVMS_017_global_at_non_leaf_stack, phys_name=SID_PBVMS_017_global_at_non_leaf_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_017_global_at_non_leaf_stack, 0x0000000000020000
# ;#page_mapping(lin_name=SID_PBVMS_017_global_at_non_leaf_stack, phys_name=SID_PBVMS_017_global_at_non_leaf_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_017_global_at_non_leaf_stack_phys, 0x000000004146e000
# ;#page_mapping(lin_name=SID_PBVMS_018_rsw_fields_writable_stack, phys_name=SID_PBVMS_018_rsw_fields_writable_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_018_rsw_fields_writable_stack, 0x0000000000902000
# ;#page_mapping(lin_name=SID_PBVMS_018_rsw_fields_writable_stack, phys_name=SID_PBVMS_018_rsw_fields_writable_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_018_rsw_fields_writable_stack_phys, 0x000000004250a000
# ;#page_mapping(lin_name=SID_PBVMS_021_satp_valid_to_reserved_stack, phys_name=SID_PBVMS_021_satp_valid_to_reserved_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_021_satp_valid_to_reserved_stack, 0xffffffc2ac0df000
# ;#page_mapping(lin_name=SID_PBVMS_021_satp_valid_to_reserved_stack, phys_name=SID_PBVMS_021_satp_valid_to_reserved_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_021_satp_valid_to_reserved_stack_phys, 0x00000000422e2000
# ;#page_mapping(lin_name=SID_PBVMS_022_satp_csr_accessibility_stack, phys_name=SID_PBVMS_022_satp_csr_accessibility_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_022_satp_csr_accessibility_stack, 0x00000000000f0000
# ;#page_mapping(lin_name=SID_PBVMS_022_satp_csr_accessibility_stack, phys_name=SID_PBVMS_022_satp_csr_accessibility_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_022_satp_csr_accessibility_stack_phys, 0x00000000424b4000
# ;#page_mapping(lin_name=SID_PBVMS_023_satp_asidlen_discovery_stack, phys_name=SID_PBVMS_023_satp_asidlen_discovery_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_023_satp_asidlen_discovery_stack, 0x00000015bfffe000
# ;#page_mapping(lin_name=SID_PBVMS_023_satp_asidlen_discovery_stack, phys_name=SID_PBVMS_023_satp_asidlen_discovery_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_023_satp_asidlen_discovery_stack_phys, 0x0000000043c00000
# ;#page_mapping(lin_name=SID_PBVMS_027_satp_user_mode_fault_stack, phys_name=SID_PBVMS_027_satp_user_mode_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_027_satp_user_mode_fault_stack, 0x000000000aaaf000
# ;#page_mapping(lin_name=SID_PBVMS_027_satp_user_mode_fault_stack, phys_name=SID_PBVMS_027_satp_user_mode_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_027_satp_user_mode_fault_stack_phys, 0x0000000041bd1000
# ;#page_mapping(lin_name=SID_PBVMS_040_context_table_overflow_stack, phys_name=SID_PBVMS_040_context_table_overflow_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_040_context_table_overflow_stack, 0x00000000008d3000
# ;#page_mapping(lin_name=SID_PBVMS_040_context_table_overflow_stack, phys_name=SID_PBVMS_040_context_table_overflow_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_040_context_table_overflow_stack_phys, 0x0000000044995000
# ;#page_mapping(lin_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack, phys_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_042_canonical_boundary_crossing_fault_stack, 0x0000000134e95000
# ;#page_mapping(lin_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack, phys_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_042_canonical_boundary_crossing_fault_stack_phys, 0x00000000414bd000
# ;#page_mapping(lin_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack, phys_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_043_fetch_window_spill_page_cross_stack, 0x0000000117d61000
# ;#page_mapping(lin_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack, phys_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_PBVMS_043_fetch_window_spill_page_cross_stack_phys, 0x0000000041614000
.equ mem6__pt_level2                    , 0x000000010e5de0e8
.equ mem6__pt_level2__phys              , 0x0000000041c480e8
.equ mem6__pt_level1                    , 0x00000001c633f000
.equ mem6__pt_level1__phys              , 0x000000004169c000
.equ mem9__pt_level2                    , 0x000000000aa82028
.equ mem9__pt_level2__phys              , 0x0000000041c48028
.equ mem9__pt_level1                    , 0x000000161b7ff000
.equ mem9__pt_level1__phys              , 0x00000000417fc000
.equ mem9__pt_level0                    , 0x0000000e7b5f6000
.equ mem9__pt_level0__phys              , 0x0000000041bcd000
.equ mem10__pt_level2                   , 0x0000000be285c2f0
.equ mem10__pt_level2__phys             , 0x0000000041c482f0
.equ mem10__pt_level1                   , 0x000000001dd9f000
.equ mem10__pt_level1__phys             , 0x000000004235c000
.equ mem10__pt_level0                   , 0x0000000000e9a000
.equ mem10__pt_level0__phys             , 0x0000000041b7b000
.equ mem11__pt_level2                   , 0x000000287b37b2b8
.equ mem11__pt_level2__phys             , 0x0000000041c482b8
.equ mem11__pt_level1                   , 0x00000000ffe3d000
.equ mem11__pt_level1__phys             , 0x0000000042319000
.equ mem11__pt_level0                   , 0x0000000aa3d5e000
.equ mem11__pt_level0__phys             , 0x00000000424b5000
.equ mem21__pt_level2                   , 0x0000000047af70c8
.equ mem21__pt_level2__phys             , 0x0000000041c480c8
.equ mem21__pt_level1                   , 0x0000000f5eec3000
.equ mem21__pt_level1__phys             , 0x0000000042226000
.equ mem21__pt_level0                   , 0x000000000001c000
.equ mem21__pt_level0__phys             , 0x0000000041b7c000
.equ mem22__pt_level2                   , 0x000000287b37c068
.equ mem22__pt_level2__phys             , 0x0000000041c48068
.equ mem22__pt_level1                   , 0x0000001354a4f000
.equ mem22__pt_level1__phys             , 0x00000000439f1000
.equ mem22__pt_level0                   , 0x0000000000704000
.equ mem22__pt_level0__phys             , 0x0000000041bc6000

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
.equ runtime_user_pa                    , 0x0000000041010000
.equ runtime_s_pa                       , 0x0000000041011000
.equ runtime_s_1_pa                     , 0x0000000041012000
.equ runtime_s_2_pa                     , 0x0000000041013000
.equ runtime_s_3_pa                     , 0x0000000041014000
.equ code_pa                            , 0x0000000041800000
.equ code_super_0_pa                    , 0x00000000419f4000
.equ code_super_1_pa                    , 0x00000000419f5000
.equ code_super_2_pa                    , 0x00000000419f6000
.equ code_super_3_pa                    , 0x00000000419f7000
.equ code_super_4_pa                    , 0x00000000419f8000
.equ code_super_5_pa                    , 0x00000000419f9000
.equ code_super_6_pa                    , 0x00000000419fa000
.equ code_super_7_pa                    , 0x00000000419fb000
.equ code_super_8_pa                    , 0x00000000419fc000
.equ code_super_9_pa                    , 0x00000000419fd000
.equ code_super_10_pa                   , 0x00000000419fe000
.equ code_super_11_pa                   , 0x00000000419ff000
.equ code_super_12_pa                   , 0x0000000041a00000
.equ code_super_13_pa                   , 0x0000000041a01000
.equ code_super_14_pa                   , 0x0000000041a02000
.equ code_super_15_pa                   , 0x0000000041a03000
.equ code_super_16_pa                   , 0x0000000041a04000
.equ code_super_17_pa                   , 0x0000000041a05000
.equ code_super_18_pa                   , 0x0000000041a06000
.equ code_super_19_pa                   , 0x0000000041a07000
.equ code_super_20_pa                   , 0x0000000041a08000
.equ code_super_21_pa                   , 0x0000000041a09000
.equ code_super_22_pa                   , 0x0000000041a0a000
.equ code_super_23_pa                   , 0x0000000041a0b000
.equ code_super_24_pa                   , 0x0000000041a0c000
.equ code_super_25_pa                   , 0x0000000041a0d000
.equ code_super_26_pa                   , 0x0000000041a0e000
.equ code_super_27_pa                   , 0x0000000041a0f000
.equ code_super_28_pa                   , 0x0000000041a10000
.equ code_super_29_pa                   , 0x0000000041a11000
.equ code_super_30_pa                   , 0x0000000041a12000
.equ code_super_31_pa                   , 0x0000000041a13000
.equ code_super_32_pa                   , 0x0000000041a14000
.equ code_super_33_pa                   , 0x0000000041a15000
.equ code_super_34_pa                   , 0x0000000041a16000
.equ code_super_35_pa                   , 0x0000000041a17000
.equ code_super_36_pa                   , 0x0000000041a18000
.equ code_super_37_pa                   , 0x0000000041a19000
.equ code_super_38_pa                   , 0x0000000041a1a000
.equ code_super_39_pa                   , 0x0000000041a1b000
.equ code_super_40_pa                   , 0x0000000041a1c000
.equ code_super_41_pa                   , 0x0000000041a1d000
.equ code_super_42_pa                   , 0x0000000041a1e000
.equ code_super_43_pa                   , 0x0000000041a1f000
.equ code_super_44_pa                   , 0x0000000041a20000
.equ code_super_45_pa                   , 0x0000000041a21000
.equ code_super_46_pa                   , 0x0000000041a22000
.equ code_super_47_pa                   , 0x0000000041a23000
.equ code_super_48_pa                   , 0x0000000041a24000
.equ code_super_49_pa                   , 0x0000000041a25000
.equ code_super_50_pa                   , 0x0000000041a26000
.equ code_super_51_pa                   , 0x0000000041a27000
.equ code_super_52_pa                   , 0x0000000041a28000
.equ code_super_53_pa                   , 0x0000000041a29000
.equ code_super_54_pa                   , 0x0000000041a2a000
.equ code_super_55_pa                   , 0x0000000041a2b000
.equ code_super_56_pa                   , 0x0000000041a2c000
.equ code_super_57_pa                   , 0x0000000041a2d000
.equ code_super_58_pa                   , 0x0000000041a2e000
.equ code_super_59_pa                   , 0x0000000041a2f000
.equ code_super_60_pa                   , 0x0000000041a30000
.equ code_super_61_pa                   , 0x0000000041a31000
.equ code_super_62_pa                   , 0x0000000041a32000
.equ code_super_63_pa                   , 0x0000000041a33000
.equ code_super_64_pa                   , 0x0000000041a34000
.equ code_super_65_pa                   , 0x0000000041a35000
.equ code_super_66_pa                   , 0x0000000041a36000
.equ code_super_67_pa                   , 0x0000000041a37000
.equ code_super_68_pa                   , 0x0000000041a38000
.equ code_super_69_pa                   , 0x0000000041a39000
.equ code_super_70_pa                   , 0x0000000041a3a000
.equ code_super_71_pa                   , 0x0000000041a3b000
.equ code_super_72_pa                   , 0x0000000041a3c000
.equ code_super_73_pa                   , 0x0000000041a3d000
.equ code_super_74_pa                   , 0x0000000041a3e000
.equ code_super_75_pa                   , 0x0000000041a3f000
.equ code_super_76_pa                   , 0x0000000041a40000
.equ code_super_77_pa                   , 0x0000000041a41000
.equ code_super_78_pa                   , 0x0000000041a42000
.equ code_super_79_pa                   , 0x0000000041a43000
.equ code_super_80_pa                   , 0x0000000041a44000
.equ code_super_81_pa                   , 0x0000000041a45000
.equ code_super_82_pa                   , 0x0000000041a46000
.equ code_super_83_pa                   , 0x0000000041a47000
.equ code_super_84_pa                   , 0x0000000041a48000
.equ code_super_85_pa                   , 0x0000000041a49000
.equ code_super_86_pa                   , 0x0000000041a4a000
.equ code_super_87_pa                   , 0x0000000041a4b000
.equ code_super_88_pa                   , 0x0000000041a4c000
.equ code_super_89_pa                   , 0x0000000041a4d000
.equ code_super_90_pa                   , 0x0000000041a4e000
.equ code_super_91_pa                   , 0x0000000041a4f000
.equ code_super_92_pa                   , 0x0000000041a50000
.equ code_super_93_pa                   , 0x0000000041a51000
.equ code_super_94_pa                   , 0x0000000041a52000
.equ code_super_95_pa                   , 0x0000000041a53000
.equ code_super_96_pa                   , 0x0000000041a54000
.equ code_super_97_pa                   , 0x0000000041a55000
.equ code_super_98_pa                   , 0x0000000041a56000
.equ code_super_99_pa                   , 0x0000000041a57000
.equ code_super_100_pa                  , 0x0000000041a58000
.equ code_super_101_pa                  , 0x0000000041a59000
.equ code_super_102_pa                  , 0x0000000041a5a000
.equ code_super_103_pa                  , 0x0000000041a5b000
.equ code_super_104_pa                  , 0x0000000041a5c000
.equ code_super_105_pa                  , 0x0000000041a5d000
.equ code_super_106_pa                  , 0x0000000041a5e000
.equ code_super_107_pa                  , 0x0000000041a5f000
.equ code_super_108_pa                  , 0x0000000041a60000
.equ code_super_109_pa                  , 0x0000000041a61000
.equ code_super_110_pa                  , 0x0000000041a62000
.equ code_super_111_pa                  , 0x0000000041a63000
.equ code_super_112_pa                  , 0x0000000041a64000
.equ code_super_113_pa                  , 0x0000000041a65000
.equ code_super_114_pa                  , 0x0000000041a66000
.equ code_super_115_pa                  , 0x0000000041a67000
.equ code_super_116_pa                  , 0x0000000041a68000
.equ code_super_117_pa                  , 0x0000000041a69000
.equ code_super_118_pa                  , 0x0000000041a6a000
.equ code_super_119_pa                  , 0x0000000041a6b000
.equ code_super_120_pa                  , 0x0000000041a6c000
.equ code_super_121_pa                  , 0x0000000041a6d000
.equ code_super_122_pa                  , 0x0000000041a6e000
.equ code_super_123_pa                  , 0x0000000041a6f000
.equ code_super_124_pa                  , 0x0000000041a70000
.equ code_super_125_pa                  , 0x0000000041a71000
.equ code_super_126_pa                  , 0x0000000041a72000
.equ code_super_127_pa                  , 0x0000000041a73000
.equ code_user_0_pa                     , 0x0000000041a74000
.equ code_user_1_pa                     , 0x0000000041a75000
.equ code_user_2_pa                     , 0x0000000041a76000
.equ code_user_3_pa                     , 0x0000000041a77000
.equ code_user_4_pa                     , 0x0000000041a78000
.equ code_user_5_pa                     , 0x0000000041a79000
.equ code_user_6_pa                     , 0x0000000041a7a000
.equ code_user_7_pa                     , 0x0000000041a7b000
.equ code_user_8_pa                     , 0x0000000041a7c000
.equ code_user_9_pa                     , 0x0000000041a7d000
.equ code_user_10_pa                    , 0x0000000041a7e000
.equ code_user_11_pa                    , 0x0000000041a7f000
.equ code_user_12_pa                    , 0x0000000041a80000
.equ code_user_13_pa                    , 0x0000000041a81000
.equ code_user_14_pa                    , 0x0000000041a82000
.equ code_user_15_pa                    , 0x0000000041a83000
.equ code_user_16_pa                    , 0x0000000041a84000
.equ code_user_17_pa                    , 0x0000000041a85000
.equ code_user_18_pa                    , 0x0000000041a86000
.equ code_user_19_pa                    , 0x0000000041a87000
.equ code_user_20_pa                    , 0x0000000041a88000
.equ code_user_21_pa                    , 0x0000000041a89000
.equ code_user_22_pa                    , 0x0000000041a8a000
.equ code_user_23_pa                    , 0x0000000041a8b000
.equ code_user_24_pa                    , 0x0000000041a8c000
.equ code_user_25_pa                    , 0x0000000041a8d000
.equ code_user_26_pa                    , 0x0000000041a8e000
.equ code_user_27_pa                    , 0x0000000041a8f000
.equ code_user_28_pa                    , 0x0000000041a90000
.equ code_user_29_pa                    , 0x0000000041a91000
.equ code_user_30_pa                    , 0x0000000041a92000
.equ code_user_31_pa                    , 0x0000000041a93000
.equ code_user_32_pa                    , 0x0000000041a94000
.equ code_user_33_pa                    , 0x0000000041a95000
.equ code_user_34_pa                    , 0x0000000041a96000
.equ code_user_35_pa                    , 0x0000000041a97000
.equ code_user_36_pa                    , 0x0000000041a98000
.equ code_user_37_pa                    , 0x0000000041a99000
.equ code_user_38_pa                    , 0x0000000041a9a000
.equ code_user_39_pa                    , 0x0000000041a9b000
.equ code_user_40_pa                    , 0x0000000041a9c000
.equ code_user_41_pa                    , 0x0000000041a9d000
.equ code_user_42_pa                    , 0x0000000041a9e000
.equ code_user_43_pa                    , 0x0000000041a9f000
.equ code_user_44_pa                    , 0x0000000041aa0000
.equ code_user_45_pa                    , 0x0000000041aa1000
.equ code_user_46_pa                    , 0x0000000041aa2000
.equ code_user_47_pa                    , 0x0000000041aa3000
.equ code_user_48_pa                    , 0x0000000041aa4000
.equ code_user_49_pa                    , 0x0000000041aa5000
.equ code_user_50_pa                    , 0x0000000041aa6000
.equ code_user_51_pa                    , 0x0000000041aa7000
.equ code_user_52_pa                    , 0x0000000041aa8000
.equ code_user_53_pa                    , 0x0000000041aa9000
.equ code_user_54_pa                    , 0x0000000041aaa000
.equ code_user_55_pa                    , 0x0000000041aab000
.equ code_user_56_pa                    , 0x0000000041aac000
.equ code_user_57_pa                    , 0x0000000041aad000
.equ code_user_58_pa                    , 0x0000000041aae000
.equ code_user_59_pa                    , 0x0000000041aaf000
.equ code_user_60_pa                    , 0x0000000041ab0000
.equ code_user_61_pa                    , 0x0000000041ab1000
.equ code_user_62_pa                    , 0x0000000041ab2000
.equ code_user_63_pa                    , 0x0000000041ab3000
.equ code_user_64_pa                    , 0x0000000041ab4000
.equ code_user_65_pa                    , 0x0000000041ab5000
.equ code_user_66_pa                    , 0x0000000041ab6000
.equ code_user_67_pa                    , 0x0000000041ab7000
.equ code_user_68_pa                    , 0x0000000041ab8000
.equ code_user_69_pa                    , 0x0000000041ab9000
.equ code_user_70_pa                    , 0x0000000041aba000
.equ code_user_71_pa                    , 0x0000000041abb000
.equ code_user_72_pa                    , 0x0000000041abc000
.equ code_user_73_pa                    , 0x0000000041abd000
.equ code_user_74_pa                    , 0x0000000041abe000
.equ code_user_75_pa                    , 0x0000000041abf000
.equ code_user_76_pa                    , 0x0000000041ac0000
.equ code_user_77_pa                    , 0x0000000041ac1000
.equ code_user_78_pa                    , 0x0000000041ac2000
.equ code_user_79_pa                    , 0x0000000041ac3000
.equ code_user_80_pa                    , 0x0000000041ac4000
.equ code_user_81_pa                    , 0x0000000041ac5000
.equ code_user_82_pa                    , 0x0000000041ac6000
.equ code_user_83_pa                    , 0x0000000041ac7000
.equ code_user_84_pa                    , 0x0000000041ac8000
.equ code_user_85_pa                    , 0x0000000041ac9000
.equ code_user_86_pa                    , 0x0000000041aca000
.equ code_user_87_pa                    , 0x0000000041acb000
.equ code_user_88_pa                    , 0x0000000041acc000
.equ code_user_89_pa                    , 0x0000000041acd000
.equ code_user_90_pa                    , 0x0000000041ace000
.equ code_user_91_pa                    , 0x0000000041acf000
.equ code_user_92_pa                    , 0x0000000041ad0000
.equ code_user_93_pa                    , 0x0000000041ad1000
.equ code_user_94_pa                    , 0x0000000041ad2000
.equ code_user_95_pa                    , 0x0000000041ad3000
.equ code_user_96_pa                    , 0x0000000041ad4000
.equ code_user_97_pa                    , 0x0000000041ad5000
.equ code_user_98_pa                    , 0x0000000041ad6000
.equ code_user_99_pa                    , 0x0000000041ad7000
.equ code_user_100_pa                   , 0x0000000041ad8000
.equ code_user_101_pa                   , 0x0000000041ad9000
.equ code_user_102_pa                   , 0x0000000041ada000
.equ code_user_103_pa                   , 0x0000000041adb000
.equ code_user_104_pa                   , 0x0000000041adc000
.equ code_user_105_pa                   , 0x0000000041add000
.equ code_user_106_pa                   , 0x0000000041ade000
.equ code_user_107_pa                   , 0x0000000041adf000
.equ code_user_108_pa                   , 0x0000000041ae0000
.equ code_user_109_pa                   , 0x0000000041ae1000
.equ code_user_110_pa                   , 0x0000000041ae2000
.equ code_user_111_pa                   , 0x0000000041ae3000
.equ code_user_112_pa                   , 0x0000000041ae4000
.equ code_user_113_pa                   , 0x0000000041ae5000
.equ code_user_114_pa                   , 0x0000000041ae6000
.equ code_user_115_pa                   , 0x0000000041ae7000
.equ code_user_116_pa                   , 0x0000000041ae8000
.equ code_user_117_pa                   , 0x0000000041ae9000
.equ code_user_118_pa                   , 0x0000000041aea000
.equ code_user_119_pa                   , 0x0000000041aeb000
.equ code_user_120_pa                   , 0x0000000041aec000
.equ code_user_121_pa                   , 0x0000000041aed000
.equ code_user_122_pa                   , 0x0000000041aee000
.equ code_user_123_pa                   , 0x0000000041aef000
.equ code_user_124_pa                   , 0x0000000041af0000
.equ code_user_125_pa                   , 0x0000000041af1000
.equ code_user_126_pa                   , 0x0000000041af2000
.equ code_user_127_pa                   , 0x0000000041af3000
.equ code_machine_0_pa                  , 0x0000000041309000
.equ code_machine_1_pa                  , 0x000000004130a000
.equ code_machine_2_pa                  , 0x000000004130b000
.equ code_machine_3_pa                  , 0x000000004130c000
.equ code_machine_4_pa                  , 0x000000004130d000
.equ code_machine_5_pa                  , 0x000000004130e000
.equ code_machine_6_pa                  , 0x000000004130f000
.equ code_machine_7_pa                  , 0x0000000041310000
.equ code_machine_8_pa                  , 0x0000000041311000
.equ code_machine_9_pa                  , 0x0000000041312000
.equ code_machine_10_pa                 , 0x0000000041313000
.equ code_machine_11_pa                 , 0x0000000041314000
.equ code_machine_12_pa                 , 0x0000000041315000
.equ code_machine_13_pa                 , 0x0000000041316000
.equ code_machine_14_pa                 , 0x0000000041317000
.equ code_machine_15_pa                 , 0x0000000041318000
.equ code_machine_16_pa                 , 0x0000000041319000
.equ code_machine_17_pa                 , 0x000000004131a000
.equ code_machine_18_pa                 , 0x000000004131b000
.equ code_machine_19_pa                 , 0x000000004131c000
.equ code_machine_20_pa                 , 0x000000004131d000
.equ code_machine_21_pa                 , 0x000000004131e000
.equ code_machine_22_pa                 , 0x000000004131f000
.equ code_machine_23_pa                 , 0x0000000041320000
.equ code_machine_24_pa                 , 0x0000000041321000
.equ code_machine_25_pa                 , 0x0000000041322000
.equ code_machine_26_pa                 , 0x0000000041323000
.equ code_machine_27_pa                 , 0x0000000041324000
.equ code_machine_28_pa                 , 0x0000000041325000
.equ code_machine_29_pa                 , 0x0000000041326000
.equ code_machine_30_pa                 , 0x0000000041327000
.equ code_machine_31_pa                 , 0x0000000041328000
.equ code_machine_32_pa                 , 0x0000000041329000
.equ code_machine_33_pa                 , 0x000000004132a000
.equ code_machine_34_pa                 , 0x000000004132b000
.equ code_machine_35_pa                 , 0x000000004132c000
.equ code_machine_36_pa                 , 0x000000004132d000
.equ code_machine_37_pa                 , 0x000000004132e000
.equ code_machine_38_pa                 , 0x000000004132f000
.equ code_machine_39_pa                 , 0x0000000041330000
.equ code_machine_40_pa                 , 0x0000000041331000
.equ code_machine_41_pa                 , 0x0000000041332000
.equ code_machine_42_pa                 , 0x0000000041333000
.equ code_machine_43_pa                 , 0x0000000041334000
.equ code_machine_44_pa                 , 0x0000000041335000
.equ code_machine_45_pa                 , 0x0000000041336000
.equ code_machine_46_pa                 , 0x0000000041337000
.equ code_machine_47_pa                 , 0x0000000041338000
.equ code_machine_48_pa                 , 0x0000000041339000
.equ code_machine_49_pa                 , 0x000000004133a000
.equ code_machine_50_pa                 , 0x000000004133b000
.equ code_machine_51_pa                 , 0x000000004133c000
.equ code_machine_52_pa                 , 0x000000004133d000
.equ code_machine_53_pa                 , 0x000000004133e000
.equ code_machine_54_pa                 , 0x000000004133f000
.equ code_machine_55_pa                 , 0x0000000041340000
.equ code_machine_56_pa                 , 0x0000000041341000
.equ code_machine_57_pa                 , 0x0000000041342000
.equ code_machine_58_pa                 , 0x0000000041343000
.equ code_machine_59_pa                 , 0x0000000041344000
.equ code_machine_60_pa                 , 0x0000000041345000
.equ code_machine_61_pa                 , 0x0000000041346000
.equ code_machine_62_pa                 , 0x0000000041347000
.equ code_machine_63_pa                 , 0x0000000041348000
.equ code_machine_64_pa                 , 0x0000000041349000
.equ code_machine_65_pa                 , 0x000000004134a000
.equ code_machine_66_pa                 , 0x000000004134b000
.equ code_machine_67_pa                 , 0x000000004134c000
.equ code_machine_68_pa                 , 0x000000004134d000
.equ code_machine_69_pa                 , 0x000000004134e000
.equ code_machine_70_pa                 , 0x000000004134f000
.equ code_machine_71_pa                 , 0x0000000041350000
.equ code_machine_72_pa                 , 0x0000000041351000
.equ code_machine_73_pa                 , 0x0000000041352000
.equ code_machine_74_pa                 , 0x0000000041353000
.equ code_machine_75_pa                 , 0x0000000041354000
.equ code_machine_76_pa                 , 0x0000000041355000
.equ code_machine_77_pa                 , 0x0000000041356000
.equ code_machine_78_pa                 , 0x0000000041357000
.equ code_machine_79_pa                 , 0x0000000041358000
.equ code_machine_80_pa                 , 0x0000000041359000
.equ code_machine_81_pa                 , 0x000000004135a000
.equ code_machine_82_pa                 , 0x000000004135b000
.equ code_machine_83_pa                 , 0x000000004135c000
.equ code_machine_84_pa                 , 0x000000004135d000
.equ code_machine_85_pa                 , 0x000000004135e000
.equ code_machine_86_pa                 , 0x000000004135f000
.equ code_machine_87_pa                 , 0x0000000041360000
.equ code_machine_88_pa                 , 0x0000000041361000
.equ code_machine_89_pa                 , 0x0000000041362000
.equ code_machine_90_pa                 , 0x0000000041363000
.equ code_machine_91_pa                 , 0x0000000041364000
.equ code_machine_92_pa                 , 0x0000000041365000
.equ code_machine_93_pa                 , 0x0000000041366000
.equ code_machine_94_pa                 , 0x0000000041367000
.equ code_machine_95_pa                 , 0x0000000041368000
.equ code_machine_96_pa                 , 0x0000000041369000
.equ code_machine_97_pa                 , 0x000000004136a000
.equ code_machine_98_pa                 , 0x000000004136b000
.equ code_machine_99_pa                 , 0x000000004136c000
.equ code_machine_100_pa                , 0x000000004136d000
.equ code_machine_101_pa                , 0x000000004136e000
.equ code_machine_102_pa                , 0x000000004136f000
.equ code_machine_103_pa                , 0x0000000041370000
.equ code_machine_104_pa                , 0x0000000041371000
.equ code_machine_105_pa                , 0x0000000041372000
.equ code_machine_106_pa                , 0x0000000041373000
.equ code_machine_107_pa                , 0x0000000041374000
.equ code_machine_108_pa                , 0x0000000041375000
.equ code_machine_109_pa                , 0x0000000041376000
.equ code_machine_110_pa                , 0x0000000041377000
.equ code_machine_111_pa                , 0x0000000041378000
.equ code_machine_112_pa                , 0x0000000041379000
.equ code_machine_113_pa                , 0x000000004137a000
.equ code_machine_114_pa                , 0x000000004137b000
.equ code_machine_115_pa                , 0x000000004137c000
.equ code_machine_116_pa                , 0x000000004137d000
.equ code_machine_117_pa                , 0x000000004137e000
.equ code_machine_118_pa                , 0x000000004137f000
.equ code_machine_119_pa                , 0x0000000041380000
.equ code_machine_120_pa                , 0x0000000041381000
.equ code_machine_121_pa                , 0x0000000041382000
.equ code_machine_122_pa                , 0x0000000041383000
.equ code_machine_123_pa                , 0x0000000041384000
.equ code_machine_124_pa                , 0x0000000041385000
.equ code_machine_125_pa                , 0x0000000041386000
.equ code_machine_126_pa                , 0x0000000041387000
.equ code_machine_127_pa                , 0x0000000041388000
.equ csr_machine_0_pa                   , 0x0000000041389000
.equ csr_super_0_pa                     , 0x0000000041b75000
.equ data_pa                            , 0x0000000041bf2000
.equ os_data_pa                         , 0x0000000041bf0000
.equ hart_context_pa                    , 0x0000000041bcf000
.equ hart_stack_0_pa                    , 0x00000000415f9000
.equ io_htif_pa                         , 0x0000000041040000
.equ code_mem1_pa                       , 0x00000000415fb000
.equ code_mem4_pa                       , 0x00000000415fa000
.equ code_mem16_pa                      , 0x0000000041be2000
.equ code_mem24_pa                      , 0x0000000041629000
.equ code_mem27_pa                      , 0x0000000041be3000
.equ mem0_pa                            , 0x00000000415bc000
.equ mem2_pa                            , 0x000000004145c000
.equ mem3_pa                            , 0x0000000042800000
.equ mem5_pa                            , 0x000000004148d000
.equ mem6_pa                            , 0x0000000042a00000
.equ mem7_pa                            , 0x0000000044a00000
.equ mem8_pa                            , 0x0000000042000000
.equ mem9_pa                            , 0x0000000041bab000
.equ mem10_pa                           , 0x000000004146d000
.equ mem11_pa                           , 0x0000000042487000
.equ mem12_pa                           , 0x00000000423c5000
.equ mem13_pa                           , 0x00000000438fe000
.equ mem14_pa                           , 0x000000004222b000
.equ mem15_pa                           , 0x00000000413ca000
.equ mem17_pa                           , 0x0000000041b7d000
.equ mem18_pa                           , 0x00000000417ff000
.equ mem19_pa                           , 0x00000000424ab000
.equ mem20_pa                           , 0x0000000041460000
.equ mem21_pa                           , 0x0000000041bcc000
.equ mem22_pa                           , 0x0000000042218000
.equ mem23_pa                           , 0x000000004220a000
.equ mem25_pa                           , 0x0000000041463000
.equ mem26_pa                           , 0x0000000043a00000
.equ tp_csr_storage_pa                  , 0x0000000041466000
.equ SID_PBVMS_001_ptw_no_faults_all_access_types_stack_pa, 0x00000000413f8000
.equ SID_PBVMS_003_ptw_all_privilege_modes_stack_pa, 0x00000000422a9000
.equ SID_PBVMS_006_ptw_page_boundary_crossing_stack_pa, 0x0000000042225000
.equ SID_PBVMS_008_va_sign_extension_fault_stack_pa, 0x00000000415cc000
.equ SID_PBVMS_009_superpage_alignment_fault_stack_pa, 0x0000000042c00000
.equ SID_PBVMS_011_ptw_fault_boundary_crossing_stack_pa, 0x00000000416f8000
.equ SID_PBVMS_012_ptw_fault_prioritization_stack_pa, 0x0000000042224000
.equ SID_PBVMS_013_ptw_permission_encodings_stack_pa, 0x0000000041b78000
.equ SID_PBVMS_014_mstatus_sum_mxr_stack_pa, 0x0000000041bc3000
.equ SID_PBVMS_015_global_bit_honoured_stack_pa, 0x00000000413e5000
.equ SID_PBVMS_017_global_at_non_leaf_stack_pa, 0x000000004146e000
.equ SID_PBVMS_018_rsw_fields_writable_stack_pa, 0x000000004250a000
.equ SID_PBVMS_021_satp_valid_to_reserved_stack_pa, 0x00000000422e2000
.equ SID_PBVMS_022_satp_csr_accessibility_stack_pa, 0x00000000424b4000
.equ SID_PBVMS_023_satp_asidlen_discovery_stack_pa, 0x0000000043c00000
.equ SID_PBVMS_027_satp_user_mode_fault_stack_pa, 0x0000000041bd1000
.equ SID_PBVMS_040_context_table_overflow_stack_pa, 0x0000000044995000
.equ SID_PBVMS_042_canonical_boundary_crossing_fault_stack_pa, 0x00000000414bd000
.equ SID_PBVMS_043_fetch_window_spill_page_cross_stack_pa, 0x0000000041614000

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

.equ ECALL            , ECALL_FROM_USER


.equ DONT_USE_STACK, 1


.equ PMA_ENABLED, 0

.equ MISA_BITS, 0

# Feature-specific equates:
