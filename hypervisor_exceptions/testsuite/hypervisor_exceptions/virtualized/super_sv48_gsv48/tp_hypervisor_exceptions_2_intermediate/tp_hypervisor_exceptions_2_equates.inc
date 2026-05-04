# Test configuration:
.equ PRIV_MODE_MACHINE                  , 0
.equ PRIV_MODE_SUPER                    , 1
.equ PRIV_MODE_USER                     , 0
.equ SECURE_MODE                        , 0
.equ ENV_BARE_METAL                     , 0
.equ ENV_VIRTUALIZED                    , 1
.equ PAGING_MODE_DISABLE                , 0
.equ PAGING_MODE_SV32                   , 0
.equ PAGING_MODE_SV39                   , 0
.equ PAGING_MODE_SV48                   , 1
.equ PAGING_MODE_SV57                   , 0
.equ NUM_CPUS                           , 1
.equ MP_ENABLED                         , 0
.equ MP_SIMULTANEOUS                    , 0
.equ MP_PARALLEL                        , 1
.equ PAGING_G_MODE_DISABLE              , 0
.equ PAGING_G_MODE_SV32                 , 0
.equ PAGING_G_MODE_SV39                 , 0
.equ PAGING_G_MODE_SV48                 , 1
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
.equ __section_code                     , 0x0000000042e00000
.equ __section__code_1                  , 0x0000000041015000
.equ __section__code_1_phys             , 0x0000000042e01000
.equ __section__code_2                  , 0x0000000041016000
.equ __section__code_2_phys             , 0x0000000042e02000
.equ __section__code_3                  , 0x0000000041017000
.equ __section__code_3_phys             , 0x0000000042e03000
.equ __section__code_4                  , 0x0000000041018000
.equ __section__code_4_phys             , 0x0000000042e04000
.equ __section__code_5                  , 0x0000000041019000
.equ __section__code_5_phys             , 0x0000000042e05000
.equ __section__code_6                  , 0x000000004101a000
.equ __section__code_6_phys             , 0x0000000042e06000
.equ __section__code_7                  , 0x000000004101b000
.equ __section__code_7_phys             , 0x0000000042e07000
.equ __section__code_8                  , 0x000000004101c000
.equ __section__code_8_phys             , 0x0000000042e08000
.equ __section__code_9                  , 0x000000004101d000
.equ __section__code_9_phys             , 0x0000000042e09000
.equ __section__code_10                 , 0x000000004101e000
.equ __section__code_10_phys            , 0x0000000042e0a000
.equ __section__code_11                 , 0x000000004101f000
.equ __section__code_11_phys            , 0x0000000042e0b000
.equ __section__code_12                 , 0x0000000041020000
.equ __section__code_12_phys            , 0x0000000042e0c000
.equ __section__code_13                 , 0x0000000041021000
.equ __section__code_13_phys            , 0x0000000042e0d000
.equ __section__code_14                 , 0x0000000041022000
.equ __section__code_14_phys            , 0x0000000042e0e000
.equ __section__code_15                 , 0x0000000041023000
.equ __section__code_15_phys            , 0x0000000042e0f000
.equ __section__code_16                 , 0x0000000041024000
.equ __section__code_16_phys            , 0x0000000042e10000
.equ __section__code_17                 , 0x0000000041025000
.equ __section__code_17_phys            , 0x0000000042e11000
.equ __section__code_18                 , 0x0000000041026000
.equ __section__code_18_phys            , 0x0000000042e12000
.equ __section__code_19                 , 0x0000000041027000
.equ __section__code_19_phys            , 0x0000000042e13000
.equ __section__code_20                 , 0x0000000041028000
.equ __section__code_20_phys            , 0x0000000042e14000
.equ __section__code_21                 , 0x0000000041029000
.equ __section__code_21_phys            , 0x0000000042e15000
.equ __section__code_22                 , 0x000000004102a000
.equ __section__code_22_phys            , 0x0000000042e16000
.equ __section__code_23                 , 0x000000004102b000
.equ __section__code_23_phys            , 0x0000000042e17000
.equ __section__code_24                 , 0x000000004102c000
.equ __section__code_24_phys            , 0x0000000042e18000
.equ __section__code_25                 , 0x000000004102d000
.equ __section__code_25_phys            , 0x0000000042e19000
.equ __section__code_26                 , 0x000000004102e000
.equ __section__code_26_phys            , 0x0000000042e1a000
.equ __section__code_27                 , 0x000000004102f000
.equ __section__code_27_phys            , 0x0000000042e1b000
.equ __section__code_28                 , 0x0000000041030000
.equ __section__code_28_phys            , 0x0000000042e1c000
.equ __section__code_29                 , 0x0000000041031000
.equ __section__code_29_phys            , 0x0000000042e1d000
.equ __section__code_30                 , 0x0000000041032000
.equ __section__code_30_phys            , 0x0000000042e1e000
.equ __section__code_31                 , 0x0000000041033000
.equ __section__code_31_phys            , 0x0000000042e1f000
.equ __section__code_32                 , 0x0000000041034000
.equ __section__code_32_phys            , 0x0000000042e20000
.equ __section__code_33                 , 0x0000000041035000
.equ __section__code_33_phys            , 0x0000000042e21000
.equ __section__code_34                 , 0x0000000041036000
.equ __section__code_34_phys            , 0x0000000042e22000
.equ __section__code_35                 , 0x0000000041037000
.equ __section__code_35_phys            , 0x0000000042e23000
.equ __section__code_36                 , 0x0000000041038000
.equ __section__code_36_phys            , 0x0000000042e24000
.equ __section__code_37                 , 0x0000000041039000
.equ __section__code_37_phys            , 0x0000000042e25000
.equ __section__code_38                 , 0x000000004103a000
.equ __section__code_38_phys            , 0x0000000042e26000
.equ __section__code_39                 , 0x000000004103b000
.equ __section__code_39_phys            , 0x0000000042e27000
.equ __section__code_40                 , 0x000000004103c000
.equ __section__code_40_phys            , 0x0000000042e28000
.equ __section__code_41                 , 0x000000004103d000
.equ __section__code_41_phys            , 0x0000000042e29000
.equ __section__code_42                 , 0x000000004103e000
.equ __section__code_42_phys            , 0x0000000042e2a000
.equ __section__code_43                 , 0x000000004103f000
.equ __section__code_43_phys            , 0x0000000042e2b000
.equ __section__code_44                 , 0x0000000041040000
.equ __section__code_44_phys            , 0x0000000042e2c000
.equ __section__code_45                 , 0x0000000041041000
.equ __section__code_45_phys            , 0x0000000042e2d000
.equ __section__code_46                 , 0x0000000041042000
.equ __section__code_46_phys            , 0x0000000042e2e000
.equ __section__code_47                 , 0x0000000041043000
.equ __section__code_47_phys            , 0x0000000042e2f000
.equ __section__code_48                 , 0x0000000041044000
.equ __section__code_48_phys            , 0x0000000042e30000
.equ __section__code_49                 , 0x0000000041045000
.equ __section__code_49_phys            , 0x0000000042e31000
.equ __section__code_50                 , 0x0000000041046000
.equ __section__code_50_phys            , 0x0000000042e32000
.equ __section__code_51                 , 0x0000000041047000
.equ __section__code_51_phys            , 0x0000000042e33000
.equ __section__code_52                 , 0x0000000041048000
.equ __section__code_52_phys            , 0x0000000042e34000
.equ __section__code_53                 , 0x0000000041049000
.equ __section__code_53_phys            , 0x0000000042e35000
.equ __section__code_54                 , 0x000000004104a000
.equ __section__code_54_phys            , 0x0000000042e36000
.equ __section__code_55                 , 0x000000004104b000
.equ __section__code_55_phys            , 0x0000000042e37000
.equ __section__code_56                 , 0x000000004104c000
.equ __section__code_56_phys            , 0x0000000042e38000
.equ __section__code_57                 , 0x000000004104d000
.equ __section__code_57_phys            , 0x0000000042e39000
.equ __section__code_58                 , 0x000000004104e000
.equ __section__code_58_phys            , 0x0000000042e3a000
.equ __section__code_59                 , 0x000000004104f000
.equ __section__code_59_phys            , 0x0000000042e3b000
.equ __section__code_60                 , 0x0000000041050000
.equ __section__code_60_phys            , 0x0000000042e3c000
.equ __section__code_61                 , 0x0000000041051000
.equ __section__code_61_phys            , 0x0000000042e3d000
.equ __section__code_62                 , 0x0000000041052000
.equ __section__code_62_phys            , 0x0000000042e3e000
.equ __section__code_63                 , 0x0000000041053000
.equ __section__code_63_phys            , 0x0000000042e3f000
.equ __section__code_64                 , 0x0000000041054000
.equ __section__code_64_phys            , 0x0000000042e40000
.equ __section__code_65                 , 0x0000000041055000
.equ __section__code_65_phys            , 0x0000000042e41000
.equ __section__code_66                 , 0x0000000041056000
.equ __section__code_66_phys            , 0x0000000042e42000
.equ __section__code_67                 , 0x0000000041057000
.equ __section__code_67_phys            , 0x0000000042e43000
.equ __section__code_68                 , 0x0000000041058000
.equ __section__code_68_phys            , 0x0000000042e44000
.equ __section__code_69                 , 0x0000000041059000
.equ __section__code_69_phys            , 0x0000000042e45000
.equ __section__code_70                 , 0x000000004105a000
.equ __section__code_70_phys            , 0x0000000042e46000
.equ __section__code_71                 , 0x000000004105b000
.equ __section__code_71_phys            , 0x0000000042e47000
.equ __section__code_72                 , 0x000000004105c000
.equ __section__code_72_phys            , 0x0000000042e48000
.equ __section__code_73                 , 0x000000004105d000
.equ __section__code_73_phys            , 0x0000000042e49000
.equ __section__code_74                 , 0x000000004105e000
.equ __section__code_74_phys            , 0x0000000042e4a000
.equ __section__code_75                 , 0x000000004105f000
.equ __section__code_75_phys            , 0x0000000042e4b000
.equ __section__code_76                 , 0x0000000041060000
.equ __section__code_76_phys            , 0x0000000042e4c000
.equ __section__code_77                 , 0x0000000041061000
.equ __section__code_77_phys            , 0x0000000042e4d000
.equ __section__code_78                 , 0x0000000041062000
.equ __section__code_78_phys            , 0x0000000042e4e000
.equ __section__code_79                 , 0x0000000041063000
.equ __section__code_79_phys            , 0x0000000042e4f000
.equ __section__code_80                 , 0x0000000041064000
.equ __section__code_80_phys            , 0x0000000042e50000
.equ __section__code_81                 , 0x0000000041065000
.equ __section__code_81_phys            , 0x0000000042e51000
.equ __section__code_82                 , 0x0000000041066000
.equ __section__code_82_phys            , 0x0000000042e52000
.equ __section__code_83                 , 0x0000000041067000
.equ __section__code_83_phys            , 0x0000000042e53000
.equ __section__code_84                 , 0x0000000041068000
.equ __section__code_84_phys            , 0x0000000042e54000
.equ __section__code_85                 , 0x0000000041069000
.equ __section__code_85_phys            , 0x0000000042e55000
.equ __section__code_86                 , 0x000000004106a000
.equ __section__code_86_phys            , 0x0000000042e56000
.equ __section__code_87                 , 0x000000004106b000
.equ __section__code_87_phys            , 0x0000000042e57000
.equ __section__code_88                 , 0x000000004106c000
.equ __section__code_88_phys            , 0x0000000042e58000
.equ __section__code_89                 , 0x000000004106d000
.equ __section__code_89_phys            , 0x0000000042e59000
.equ __section__code_90                 , 0x000000004106e000
.equ __section__code_90_phys            , 0x0000000042e5a000
.equ __section__code_91                 , 0x000000004106f000
.equ __section__code_91_phys            , 0x0000000042e5b000
.equ __section__code_92                 , 0x0000000041070000
.equ __section__code_92_phys            , 0x0000000042e5c000
.equ __section__code_93                 , 0x0000000041071000
.equ __section__code_93_phys            , 0x0000000042e5d000
.equ __section__code_94                 , 0x0000000041072000
.equ __section__code_94_phys            , 0x0000000042e5e000
.equ __section__code_95                 , 0x0000000041073000
.equ __section__code_95_phys            , 0x0000000042e5f000
.equ __section__code_96                 , 0x0000000041074000
.equ __section__code_96_phys            , 0x0000000042e60000
.equ __section__code_97                 , 0x0000000041075000
.equ __section__code_97_phys            , 0x0000000042e61000
.equ __section__code_98                 , 0x0000000041076000
.equ __section__code_98_phys            , 0x0000000042e62000
.equ __section__code_99                 , 0x0000000041077000
.equ __section__code_99_phys            , 0x0000000042e63000
.equ __section__code_100                , 0x0000000041078000
.equ __section__code_100_phys           , 0x0000000042e64000
.equ __section__code_101                , 0x0000000041079000
.equ __section__code_101_phys           , 0x0000000042e65000
.equ __section__code_102                , 0x000000004107a000
.equ __section__code_102_phys           , 0x0000000042e66000
.equ __section__code_103                , 0x000000004107b000
.equ __section__code_103_phys           , 0x0000000042e67000
.equ __section__code_104                , 0x000000004107c000
.equ __section__code_104_phys           , 0x0000000042e68000
.equ __section__code_105                , 0x000000004107d000
.equ __section__code_105_phys           , 0x0000000042e69000
.equ __section__code_106                , 0x000000004107e000
.equ __section__code_106_phys           , 0x0000000042e6a000
.equ __section__code_107                , 0x000000004107f000
.equ __section__code_107_phys           , 0x0000000042e6b000
.equ __section__code_108                , 0x0000000041080000
.equ __section__code_108_phys           , 0x0000000042e6c000
.equ __section__code_109                , 0x0000000041081000
.equ __section__code_109_phys           , 0x0000000042e6d000
.equ __section__code_110                , 0x0000000041082000
.equ __section__code_110_phys           , 0x0000000042e6e000
.equ __section__code_111                , 0x0000000041083000
.equ __section__code_111_phys           , 0x0000000042e6f000
.equ __section__code_112                , 0x0000000041084000
.equ __section__code_112_phys           , 0x0000000042e70000
.equ __section__code_113                , 0x0000000041085000
.equ __section__code_113_phys           , 0x0000000042e71000
.equ __section__code_114                , 0x0000000041086000
.equ __section__code_114_phys           , 0x0000000042e72000
.equ __section__code_115                , 0x0000000041087000
.equ __section__code_115_phys           , 0x0000000042e73000
.equ __section__code_116                , 0x0000000041088000
.equ __section__code_116_phys           , 0x0000000042e74000
.equ __section__code_117                , 0x0000000041089000
.equ __section__code_117_phys           , 0x0000000042e75000
.equ __section__code_118                , 0x000000004108a000
.equ __section__code_118_phys           , 0x0000000042e76000
.equ __section__code_119                , 0x000000004108b000
.equ __section__code_119_phys           , 0x0000000042e77000
.equ __section__code_120                , 0x000000004108c000
.equ __section__code_120_phys           , 0x0000000042e78000
.equ __section__code_121                , 0x000000004108d000
.equ __section__code_121_phys           , 0x0000000042e79000
.equ __section__code_122                , 0x000000004108e000
.equ __section__code_122_phys           , 0x0000000042e7a000
.equ __section__code_123                , 0x000000004108f000
.equ __section__code_123_phys           , 0x0000000042e7b000
.equ __section__code_124                , 0x0000000041090000
.equ __section__code_124_phys           , 0x0000000042e7c000
.equ __section__code_125                , 0x0000000041091000
.equ __section__code_125_phys           , 0x0000000042e7d000
.equ __section__code_126                , 0x0000000041092000
.equ __section__code_126_phys           , 0x0000000042e7e000
.equ __section__code_127                , 0x0000000041093000
.equ __section__code_127_phys           , 0x0000000042e7f000
.equ code_super_0                       , 0x0000000041094000
.equ __section_code_super_0             , 0x0000000042e80000
.equ code_super_1                       , 0x0000000041095000
.equ __section_code_super_1             , 0x0000000042e81000
.equ code_super_2                       , 0x0000000041096000
.equ __section_code_super_2             , 0x0000000042e82000
.equ code_super_3                       , 0x0000000041097000
.equ __section_code_super_3             , 0x0000000042e83000
.equ code_super_4                       , 0x0000000041098000
.equ __section_code_super_4             , 0x0000000042e84000
.equ code_super_5                       , 0x0000000041099000
.equ __section_code_super_5             , 0x0000000042e85000
.equ code_super_6                       , 0x000000004109a000
.equ __section_code_super_6             , 0x0000000042e86000
.equ code_super_7                       , 0x000000004109b000
.equ __section_code_super_7             , 0x0000000042e87000
.equ code_super_8                       , 0x000000004109c000
.equ __section_code_super_8             , 0x0000000042e88000
.equ code_super_9                       , 0x000000004109d000
.equ __section_code_super_9             , 0x0000000042e89000
.equ code_super_10                      , 0x000000004109e000
.equ __section_code_super_10            , 0x0000000042e8a000
.equ code_super_11                      , 0x000000004109f000
.equ __section_code_super_11            , 0x0000000042e8b000
.equ code_super_12                      , 0x00000000410a0000
.equ __section_code_super_12            , 0x0000000042e8c000
.equ code_super_13                      , 0x00000000410a1000
.equ __section_code_super_13            , 0x0000000042e8d000
.equ code_super_14                      , 0x00000000410a2000
.equ __section_code_super_14            , 0x0000000042e8e000
.equ code_super_15                      , 0x00000000410a3000
.equ __section_code_super_15            , 0x0000000042e8f000
.equ code_super_16                      , 0x00000000410a4000
.equ __section_code_super_16            , 0x0000000042e90000
.equ code_super_17                      , 0x00000000410a5000
.equ __section_code_super_17            , 0x0000000042e91000
.equ code_super_18                      , 0x00000000410a6000
.equ __section_code_super_18            , 0x0000000042e92000
.equ code_super_19                      , 0x00000000410a7000
.equ __section_code_super_19            , 0x0000000042e93000
.equ code_super_20                      , 0x00000000410a8000
.equ __section_code_super_20            , 0x0000000042e94000
.equ code_super_21                      , 0x00000000410a9000
.equ __section_code_super_21            , 0x0000000042e95000
.equ code_super_22                      , 0x00000000410aa000
.equ __section_code_super_22            , 0x0000000042e96000
.equ code_super_23                      , 0x00000000410ab000
.equ __section_code_super_23            , 0x0000000042e97000
.equ code_super_24                      , 0x00000000410ac000
.equ __section_code_super_24            , 0x0000000042e98000
.equ code_super_25                      , 0x00000000410ad000
.equ __section_code_super_25            , 0x0000000042e99000
.equ code_super_26                      , 0x00000000410ae000
.equ __section_code_super_26            , 0x0000000042e9a000
.equ code_super_27                      , 0x00000000410af000
.equ __section_code_super_27            , 0x0000000042e9b000
.equ code_super_28                      , 0x00000000410b0000
.equ __section_code_super_28            , 0x0000000042e9c000
.equ code_super_29                      , 0x00000000410b1000
.equ __section_code_super_29            , 0x0000000042e9d000
.equ code_super_30                      , 0x00000000410b2000
.equ __section_code_super_30            , 0x0000000042e9e000
.equ code_super_31                      , 0x00000000410b3000
.equ __section_code_super_31            , 0x0000000042e9f000
.equ code_super_32                      , 0x00000000410b4000
.equ __section_code_super_32            , 0x0000000042ea0000
.equ code_super_33                      , 0x00000000410b5000
.equ __section_code_super_33            , 0x0000000042ea1000
.equ code_super_34                      , 0x00000000410b6000
.equ __section_code_super_34            , 0x0000000042ea2000
.equ code_super_35                      , 0x00000000410b7000
.equ __section_code_super_35            , 0x0000000042ea3000
.equ code_super_36                      , 0x00000000410b8000
.equ __section_code_super_36            , 0x0000000042ea4000
.equ code_super_37                      , 0x00000000410b9000
.equ __section_code_super_37            , 0x0000000042ea5000
.equ code_super_38                      , 0x00000000410ba000
.equ __section_code_super_38            , 0x0000000042ea6000
.equ code_super_39                      , 0x00000000410bb000
.equ __section_code_super_39            , 0x0000000042ea7000
.equ code_super_40                      , 0x00000000410bc000
.equ __section_code_super_40            , 0x0000000042ea8000
.equ code_super_41                      , 0x00000000410bd000
.equ __section_code_super_41            , 0x0000000042ea9000
.equ code_super_42                      , 0x00000000410be000
.equ __section_code_super_42            , 0x0000000042eaa000
.equ code_super_43                      , 0x00000000410bf000
.equ __section_code_super_43            , 0x0000000042eab000
.equ code_super_44                      , 0x00000000410c0000
.equ __section_code_super_44            , 0x0000000042eac000
.equ code_super_45                      , 0x00000000410c1000
.equ __section_code_super_45            , 0x0000000042ead000
.equ code_super_46                      , 0x00000000410c2000
.equ __section_code_super_46            , 0x0000000042eae000
.equ code_super_47                      , 0x00000000410c3000
.equ __section_code_super_47            , 0x0000000042eaf000
.equ code_super_48                      , 0x00000000410c4000
.equ __section_code_super_48            , 0x0000000042eb0000
.equ code_super_49                      , 0x00000000410c5000
.equ __section_code_super_49            , 0x0000000042eb1000
.equ code_super_50                      , 0x00000000410c6000
.equ __section_code_super_50            , 0x0000000042eb2000
.equ code_super_51                      , 0x00000000410c7000
.equ __section_code_super_51            , 0x0000000042eb3000
.equ code_super_52                      , 0x00000000410c8000
.equ __section_code_super_52            , 0x0000000042eb4000
.equ code_super_53                      , 0x00000000410c9000
.equ __section_code_super_53            , 0x0000000042eb5000
.equ code_super_54                      , 0x00000000410ca000
.equ __section_code_super_54            , 0x0000000042eb6000
.equ code_super_55                      , 0x00000000410cb000
.equ __section_code_super_55            , 0x0000000042eb7000
.equ code_super_56                      , 0x00000000410cc000
.equ __section_code_super_56            , 0x0000000042eb8000
.equ code_super_57                      , 0x00000000410cd000
.equ __section_code_super_57            , 0x0000000042eb9000
.equ code_super_58                      , 0x00000000410ce000
.equ __section_code_super_58            , 0x0000000042eba000
.equ code_super_59                      , 0x00000000410cf000
.equ __section_code_super_59            , 0x0000000042ebb000
.equ code_super_60                      , 0x00000000410d0000
.equ __section_code_super_60            , 0x0000000042ebc000
.equ code_super_61                      , 0x00000000410d1000
.equ __section_code_super_61            , 0x0000000042ebd000
.equ code_super_62                      , 0x00000000410d2000
.equ __section_code_super_62            , 0x0000000042ebe000
.equ code_super_63                      , 0x00000000410d3000
.equ __section_code_super_63            , 0x0000000042ebf000
.equ code_super_64                      , 0x00000000410d4000
.equ __section_code_super_64            , 0x0000000042ec0000
.equ code_super_65                      , 0x00000000410d5000
.equ __section_code_super_65            , 0x0000000042ec1000
.equ code_super_66                      , 0x00000000410d6000
.equ __section_code_super_66            , 0x0000000042ec2000
.equ code_super_67                      , 0x00000000410d7000
.equ __section_code_super_67            , 0x0000000042ec3000
.equ code_super_68                      , 0x00000000410d8000
.equ __section_code_super_68            , 0x0000000042ec4000
.equ code_super_69                      , 0x00000000410d9000
.equ __section_code_super_69            , 0x0000000042ec5000
.equ code_super_70                      , 0x00000000410da000
.equ __section_code_super_70            , 0x0000000042ec6000
.equ code_super_71                      , 0x00000000410db000
.equ __section_code_super_71            , 0x0000000042ec7000
.equ code_super_72                      , 0x00000000410dc000
.equ __section_code_super_72            , 0x0000000042ec8000
.equ code_super_73                      , 0x00000000410dd000
.equ __section_code_super_73            , 0x0000000042ec9000
.equ code_super_74                      , 0x00000000410de000
.equ __section_code_super_74            , 0x0000000042eca000
.equ code_super_75                      , 0x00000000410df000
.equ __section_code_super_75            , 0x0000000042ecb000
.equ code_super_76                      , 0x00000000410e0000
.equ __section_code_super_76            , 0x0000000042ecc000
.equ code_super_77                      , 0x00000000410e1000
.equ __section_code_super_77            , 0x0000000042ecd000
.equ code_super_78                      , 0x00000000410e2000
.equ __section_code_super_78            , 0x0000000042ece000
.equ code_super_79                      , 0x00000000410e3000
.equ __section_code_super_79            , 0x0000000042ecf000
.equ code_super_80                      , 0x00000000410e4000
.equ __section_code_super_80            , 0x0000000042ed0000
.equ code_super_81                      , 0x00000000410e5000
.equ __section_code_super_81            , 0x0000000042ed1000
.equ code_super_82                      , 0x00000000410e6000
.equ __section_code_super_82            , 0x0000000042ed2000
.equ code_super_83                      , 0x00000000410e7000
.equ __section_code_super_83            , 0x0000000042ed3000
.equ code_super_84                      , 0x00000000410e8000
.equ __section_code_super_84            , 0x0000000042ed4000
.equ code_super_85                      , 0x00000000410e9000
.equ __section_code_super_85            , 0x0000000042ed5000
.equ code_super_86                      , 0x00000000410ea000
.equ __section_code_super_86            , 0x0000000042ed6000
.equ code_super_87                      , 0x00000000410eb000
.equ __section_code_super_87            , 0x0000000042ed7000
.equ code_super_88                      , 0x00000000410ec000
.equ __section_code_super_88            , 0x0000000042ed8000
.equ code_super_89                      , 0x00000000410ed000
.equ __section_code_super_89            , 0x0000000042ed9000
.equ code_super_90                      , 0x00000000410ee000
.equ __section_code_super_90            , 0x0000000042eda000
.equ code_super_91                      , 0x00000000410ef000
.equ __section_code_super_91            , 0x0000000042edb000
.equ code_super_92                      , 0x00000000410f0000
.equ __section_code_super_92            , 0x0000000042edc000
.equ code_super_93                      , 0x00000000410f1000
.equ __section_code_super_93            , 0x0000000042edd000
.equ code_super_94                      , 0x00000000410f2000
.equ __section_code_super_94            , 0x0000000042ede000
.equ code_super_95                      , 0x00000000410f3000
.equ __section_code_super_95            , 0x0000000042edf000
.equ code_super_96                      , 0x00000000410f4000
.equ __section_code_super_96            , 0x0000000042ee0000
.equ code_super_97                      , 0x00000000410f5000
.equ __section_code_super_97            , 0x0000000042ee1000
.equ code_super_98                      , 0x00000000410f6000
.equ __section_code_super_98            , 0x0000000042ee2000
.equ code_super_99                      , 0x00000000410f7000
.equ __section_code_super_99            , 0x0000000042ee3000
.equ code_super_100                     , 0x00000000410f8000
.equ __section_code_super_100           , 0x0000000042ee4000
.equ code_super_101                     , 0x00000000410f9000
.equ __section_code_super_101           , 0x0000000042ee5000
.equ code_super_102                     , 0x00000000410fa000
.equ __section_code_super_102           , 0x0000000042ee6000
.equ code_super_103                     , 0x00000000410fb000
.equ __section_code_super_103           , 0x0000000042ee7000
.equ code_super_104                     , 0x00000000410fc000
.equ __section_code_super_104           , 0x0000000042ee8000
.equ code_super_105                     , 0x00000000410fd000
.equ __section_code_super_105           , 0x0000000042ee9000
.equ code_super_106                     , 0x00000000410fe000
.equ __section_code_super_106           , 0x0000000042eea000
.equ code_super_107                     , 0x00000000410ff000
.equ __section_code_super_107           , 0x0000000042eeb000
.equ code_super_108                     , 0x0000000041100000
.equ __section_code_super_108           , 0x0000000042eec000
.equ code_super_109                     , 0x0000000041101000
.equ __section_code_super_109           , 0x0000000042eed000
.equ code_super_110                     , 0x0000000041102000
.equ __section_code_super_110           , 0x0000000042eee000
.equ code_super_111                     , 0x0000000041103000
.equ __section_code_super_111           , 0x0000000042eef000
.equ code_super_112                     , 0x0000000041104000
.equ __section_code_super_112           , 0x0000000042ef0000
.equ code_super_113                     , 0x0000000041105000
.equ __section_code_super_113           , 0x0000000042ef1000
.equ code_super_114                     , 0x0000000041106000
.equ __section_code_super_114           , 0x0000000042ef2000
.equ code_super_115                     , 0x0000000041107000
.equ __section_code_super_115           , 0x0000000042ef3000
.equ code_super_116                     , 0x0000000041108000
.equ __section_code_super_116           , 0x0000000042ef4000
.equ code_super_117                     , 0x0000000041109000
.equ __section_code_super_117           , 0x0000000042ef5000
.equ code_super_118                     , 0x000000004110a000
.equ __section_code_super_118           , 0x0000000042ef6000
.equ code_super_119                     , 0x000000004110b000
.equ __section_code_super_119           , 0x0000000042ef7000
.equ code_super_120                     , 0x000000004110c000
.equ __section_code_super_120           , 0x0000000042ef8000
.equ code_super_121                     , 0x000000004110d000
.equ __section_code_super_121           , 0x0000000042ef9000
.equ code_super_122                     , 0x000000004110e000
.equ __section_code_super_122           , 0x0000000042efa000
.equ code_super_123                     , 0x000000004110f000
.equ __section_code_super_123           , 0x0000000042efb000
.equ code_super_124                     , 0x0000000041110000
.equ __section_code_super_124           , 0x0000000042efc000
.equ code_super_125                     , 0x0000000041111000
.equ __section_code_super_125           , 0x0000000042efd000
.equ code_super_126                     , 0x0000000041112000
.equ __section_code_super_126           , 0x0000000042efe000
.equ code_super_127                     , 0x0000000041113000
.equ __section_code_super_127           , 0x0000000042eff000
.equ code_user_0                        , 0x0000000041114000
.equ __section_code_user_0              , 0x0000000042f00000
.equ code_user_1                        , 0x0000000041115000
.equ __section_code_user_1              , 0x0000000042f01000
.equ code_user_2                        , 0x0000000041116000
.equ __section_code_user_2              , 0x0000000042f02000
.equ code_user_3                        , 0x0000000041117000
.equ __section_code_user_3              , 0x0000000042f03000
.equ code_user_4                        , 0x0000000041118000
.equ __section_code_user_4              , 0x0000000042f04000
.equ code_user_5                        , 0x0000000041119000
.equ __section_code_user_5              , 0x0000000042f05000
.equ code_user_6                        , 0x000000004111a000
.equ __section_code_user_6              , 0x0000000042f06000
.equ code_user_7                        , 0x000000004111b000
.equ __section_code_user_7              , 0x0000000042f07000
.equ code_user_8                        , 0x000000004111c000
.equ __section_code_user_8              , 0x0000000042f08000
.equ code_user_9                        , 0x000000004111d000
.equ __section_code_user_9              , 0x0000000042f09000
.equ code_user_10                       , 0x000000004111e000
.equ __section_code_user_10             , 0x0000000042f0a000
.equ code_user_11                       , 0x000000004111f000
.equ __section_code_user_11             , 0x0000000042f0b000
.equ code_user_12                       , 0x0000000041120000
.equ __section_code_user_12             , 0x0000000042f0c000
.equ code_user_13                       , 0x0000000041121000
.equ __section_code_user_13             , 0x0000000042f0d000
.equ code_user_14                       , 0x0000000041122000
.equ __section_code_user_14             , 0x0000000042f0e000
.equ code_user_15                       , 0x0000000041123000
.equ __section_code_user_15             , 0x0000000042f0f000
.equ code_user_16                       , 0x0000000041124000
.equ __section_code_user_16             , 0x0000000042f10000
.equ code_user_17                       , 0x0000000041125000
.equ __section_code_user_17             , 0x0000000042f11000
.equ code_user_18                       , 0x0000000041126000
.equ __section_code_user_18             , 0x0000000042f12000
.equ code_user_19                       , 0x0000000041127000
.equ __section_code_user_19             , 0x0000000042f13000
.equ code_user_20                       , 0x0000000041128000
.equ __section_code_user_20             , 0x0000000042f14000
.equ code_user_21                       , 0x0000000041129000
.equ __section_code_user_21             , 0x0000000042f15000
.equ code_user_22                       , 0x000000004112a000
.equ __section_code_user_22             , 0x0000000042f16000
.equ code_user_23                       , 0x000000004112b000
.equ __section_code_user_23             , 0x0000000042f17000
.equ code_user_24                       , 0x000000004112c000
.equ __section_code_user_24             , 0x0000000042f18000
.equ code_user_25                       , 0x000000004112d000
.equ __section_code_user_25             , 0x0000000042f19000
.equ code_user_26                       , 0x000000004112e000
.equ __section_code_user_26             , 0x0000000042f1a000
.equ code_user_27                       , 0x000000004112f000
.equ __section_code_user_27             , 0x0000000042f1b000
.equ code_user_28                       , 0x0000000041130000
.equ __section_code_user_28             , 0x0000000042f1c000
.equ code_user_29                       , 0x0000000041131000
.equ __section_code_user_29             , 0x0000000042f1d000
.equ code_user_30                       , 0x0000000041132000
.equ __section_code_user_30             , 0x0000000042f1e000
.equ code_user_31                       , 0x0000000041133000
.equ __section_code_user_31             , 0x0000000042f1f000
.equ code_user_32                       , 0x0000000041134000
.equ __section_code_user_32             , 0x0000000042f20000
.equ code_user_33                       , 0x0000000041135000
.equ __section_code_user_33             , 0x0000000042f21000
.equ code_user_34                       , 0x0000000041136000
.equ __section_code_user_34             , 0x0000000042f22000
.equ code_user_35                       , 0x0000000041137000
.equ __section_code_user_35             , 0x0000000042f23000
.equ code_user_36                       , 0x0000000041138000
.equ __section_code_user_36             , 0x0000000042f24000
.equ code_user_37                       , 0x0000000041139000
.equ __section_code_user_37             , 0x0000000042f25000
.equ code_user_38                       , 0x000000004113a000
.equ __section_code_user_38             , 0x0000000042f26000
.equ code_user_39                       , 0x000000004113b000
.equ __section_code_user_39             , 0x0000000042f27000
.equ code_user_40                       , 0x000000004113c000
.equ __section_code_user_40             , 0x0000000042f28000
.equ code_user_41                       , 0x000000004113d000
.equ __section_code_user_41             , 0x0000000042f29000
.equ code_user_42                       , 0x000000004113e000
.equ __section_code_user_42             , 0x0000000042f2a000
.equ code_user_43                       , 0x000000004113f000
.equ __section_code_user_43             , 0x0000000042f2b000
.equ code_user_44                       , 0x0000000041140000
.equ __section_code_user_44             , 0x0000000042f2c000
.equ code_user_45                       , 0x0000000041141000
.equ __section_code_user_45             , 0x0000000042f2d000
.equ code_user_46                       , 0x0000000041142000
.equ __section_code_user_46             , 0x0000000042f2e000
.equ code_user_47                       , 0x0000000041143000
.equ __section_code_user_47             , 0x0000000042f2f000
.equ code_user_48                       , 0x0000000041144000
.equ __section_code_user_48             , 0x0000000042f30000
.equ code_user_49                       , 0x0000000041145000
.equ __section_code_user_49             , 0x0000000042f31000
.equ code_user_50                       , 0x0000000041146000
.equ __section_code_user_50             , 0x0000000042f32000
.equ code_user_51                       , 0x0000000041147000
.equ __section_code_user_51             , 0x0000000042f33000
.equ code_user_52                       , 0x0000000041148000
.equ __section_code_user_52             , 0x0000000042f34000
.equ code_user_53                       , 0x0000000041149000
.equ __section_code_user_53             , 0x0000000042f35000
.equ code_user_54                       , 0x000000004114a000
.equ __section_code_user_54             , 0x0000000042f36000
.equ code_user_55                       , 0x000000004114b000
.equ __section_code_user_55             , 0x0000000042f37000
.equ code_user_56                       , 0x000000004114c000
.equ __section_code_user_56             , 0x0000000042f38000
.equ code_user_57                       , 0x000000004114d000
.equ __section_code_user_57             , 0x0000000042f39000
.equ code_user_58                       , 0x000000004114e000
.equ __section_code_user_58             , 0x0000000042f3a000
.equ code_user_59                       , 0x000000004114f000
.equ __section_code_user_59             , 0x0000000042f3b000
.equ code_user_60                       , 0x0000000041150000
.equ __section_code_user_60             , 0x0000000042f3c000
.equ code_user_61                       , 0x0000000041151000
.equ __section_code_user_61             , 0x0000000042f3d000
.equ code_user_62                       , 0x0000000041152000
.equ __section_code_user_62             , 0x0000000042f3e000
.equ code_user_63                       , 0x0000000041153000
.equ __section_code_user_63             , 0x0000000042f3f000
.equ code_user_64                       , 0x0000000041154000
.equ __section_code_user_64             , 0x0000000042f40000
.equ code_user_65                       , 0x0000000041155000
.equ __section_code_user_65             , 0x0000000042f41000
.equ code_user_66                       , 0x0000000041156000
.equ __section_code_user_66             , 0x0000000042f42000
.equ code_user_67                       , 0x0000000041157000
.equ __section_code_user_67             , 0x0000000042f43000
.equ code_user_68                       , 0x0000000041158000
.equ __section_code_user_68             , 0x0000000042f44000
.equ code_user_69                       , 0x0000000041159000
.equ __section_code_user_69             , 0x0000000042f45000
.equ code_user_70                       , 0x000000004115a000
.equ __section_code_user_70             , 0x0000000042f46000
.equ code_user_71                       , 0x000000004115b000
.equ __section_code_user_71             , 0x0000000042f47000
.equ code_user_72                       , 0x000000004115c000
.equ __section_code_user_72             , 0x0000000042f48000
.equ code_user_73                       , 0x000000004115d000
.equ __section_code_user_73             , 0x0000000042f49000
.equ code_user_74                       , 0x000000004115e000
.equ __section_code_user_74             , 0x0000000042f4a000
.equ code_user_75                       , 0x000000004115f000
.equ __section_code_user_75             , 0x0000000042f4b000
.equ code_user_76                       , 0x0000000041160000
.equ __section_code_user_76             , 0x0000000042f4c000
.equ code_user_77                       , 0x0000000041161000
.equ __section_code_user_77             , 0x0000000042f4d000
.equ code_user_78                       , 0x0000000041162000
.equ __section_code_user_78             , 0x0000000042f4e000
.equ code_user_79                       , 0x0000000041163000
.equ __section_code_user_79             , 0x0000000042f4f000
.equ code_user_80                       , 0x0000000041164000
.equ __section_code_user_80             , 0x0000000042f50000
.equ code_user_81                       , 0x0000000041165000
.equ __section_code_user_81             , 0x0000000042f51000
.equ code_user_82                       , 0x0000000041166000
.equ __section_code_user_82             , 0x0000000042f52000
.equ code_user_83                       , 0x0000000041167000
.equ __section_code_user_83             , 0x0000000042f53000
.equ code_user_84                       , 0x0000000041168000
.equ __section_code_user_84             , 0x0000000042f54000
.equ code_user_85                       , 0x0000000041169000
.equ __section_code_user_85             , 0x0000000042f55000
.equ code_user_86                       , 0x000000004116a000
.equ __section_code_user_86             , 0x0000000042f56000
.equ code_user_87                       , 0x000000004116b000
.equ __section_code_user_87             , 0x0000000042f57000
.equ code_user_88                       , 0x000000004116c000
.equ __section_code_user_88             , 0x0000000042f58000
.equ code_user_89                       , 0x000000004116d000
.equ __section_code_user_89             , 0x0000000042f59000
.equ code_user_90                       , 0x000000004116e000
.equ __section_code_user_90             , 0x0000000042f5a000
.equ code_user_91                       , 0x000000004116f000
.equ __section_code_user_91             , 0x0000000042f5b000
.equ code_user_92                       , 0x0000000041170000
.equ __section_code_user_92             , 0x0000000042f5c000
.equ code_user_93                       , 0x0000000041171000
.equ __section_code_user_93             , 0x0000000042f5d000
.equ code_user_94                       , 0x0000000041172000
.equ __section_code_user_94             , 0x0000000042f5e000
.equ code_user_95                       , 0x0000000041173000
.equ __section_code_user_95             , 0x0000000042f5f000
.equ code_user_96                       , 0x0000000041174000
.equ __section_code_user_96             , 0x0000000042f60000
.equ code_user_97                       , 0x0000000041175000
.equ __section_code_user_97             , 0x0000000042f61000
.equ code_user_98                       , 0x0000000041176000
.equ __section_code_user_98             , 0x0000000042f62000
.equ code_user_99                       , 0x0000000041177000
.equ __section_code_user_99             , 0x0000000042f63000
.equ code_user_100                      , 0x0000000041178000
.equ __section_code_user_100            , 0x0000000042f64000
.equ code_user_101                      , 0x0000000041179000
.equ __section_code_user_101            , 0x0000000042f65000
.equ code_user_102                      , 0x000000004117a000
.equ __section_code_user_102            , 0x0000000042f66000
.equ code_user_103                      , 0x000000004117b000
.equ __section_code_user_103            , 0x0000000042f67000
.equ code_user_104                      , 0x000000004117c000
.equ __section_code_user_104            , 0x0000000042f68000
.equ code_user_105                      , 0x000000004117d000
.equ __section_code_user_105            , 0x0000000042f69000
.equ code_user_106                      , 0x000000004117e000
.equ __section_code_user_106            , 0x0000000042f6a000
.equ code_user_107                      , 0x000000004117f000
.equ __section_code_user_107            , 0x0000000042f6b000
.equ code_user_108                      , 0x0000000041180000
.equ __section_code_user_108            , 0x0000000042f6c000
.equ code_user_109                      , 0x0000000041181000
.equ __section_code_user_109            , 0x0000000042f6d000
.equ code_user_110                      , 0x0000000041182000
.equ __section_code_user_110            , 0x0000000042f6e000
.equ code_user_111                      , 0x0000000041183000
.equ __section_code_user_111            , 0x0000000042f6f000
.equ code_user_112                      , 0x0000000041184000
.equ __section_code_user_112            , 0x0000000042f70000
.equ code_user_113                      , 0x0000000041185000
.equ __section_code_user_113            , 0x0000000042f71000
.equ code_user_114                      , 0x0000000041186000
.equ __section_code_user_114            , 0x0000000042f72000
.equ code_user_115                      , 0x0000000041187000
.equ __section_code_user_115            , 0x0000000042f73000
.equ code_user_116                      , 0x0000000041188000
.equ __section_code_user_116            , 0x0000000042f74000
.equ code_user_117                      , 0x0000000041189000
.equ __section_code_user_117            , 0x0000000042f75000
.equ code_user_118                      , 0x000000004118a000
.equ __section_code_user_118            , 0x0000000042f76000
.equ code_user_119                      , 0x000000004118b000
.equ __section_code_user_119            , 0x0000000042f77000
.equ code_user_120                      , 0x000000004118c000
.equ __section_code_user_120            , 0x0000000042f78000
.equ code_user_121                      , 0x000000004118d000
.equ __section_code_user_121            , 0x0000000042f79000
.equ code_user_122                      , 0x000000004118e000
.equ __section_code_user_122            , 0x0000000042f7a000
.equ code_user_123                      , 0x000000004118f000
.equ __section_code_user_123            , 0x0000000042f7b000
.equ code_user_124                      , 0x0000000041190000
.equ __section_code_user_124            , 0x0000000042f7c000
.equ code_user_125                      , 0x0000000041191000
.equ __section_code_user_125            , 0x0000000042f7d000
.equ code_user_126                      , 0x0000000041192000
.equ __section_code_user_126            , 0x0000000042f7e000
.equ code_user_127                      , 0x0000000041193000
.equ __section_code_user_127            , 0x0000000042f7f000
.equ code_machine_0                     , 0x0000000041194000
.equ __section_code_machine_0           , 0x0000000042f80000
.equ code_machine_1                     , 0x0000000041195000
.equ __section_code_machine_1           , 0x0000000042f81000
.equ code_machine_2                     , 0x0000000041196000
.equ __section_code_machine_2           , 0x0000000042f82000
.equ code_machine_3                     , 0x0000000041197000
.equ __section_code_machine_3           , 0x0000000042f83000
.equ code_machine_4                     , 0x0000000041198000
.equ __section_code_machine_4           , 0x0000000042f84000
.equ code_machine_5                     , 0x0000000041199000
.equ __section_code_machine_5           , 0x0000000042f85000
.equ code_machine_6                     , 0x000000004119a000
.equ __section_code_machine_6           , 0x0000000042f86000
.equ code_machine_7                     , 0x000000004119b000
.equ __section_code_machine_7           , 0x0000000042f87000
.equ code_machine_8                     , 0x000000004119c000
.equ __section_code_machine_8           , 0x0000000042f88000
.equ code_machine_9                     , 0x000000004119d000
.equ __section_code_machine_9           , 0x0000000042f89000
.equ code_machine_10                    , 0x000000004119e000
.equ __section_code_machine_10          , 0x0000000042f8a000
.equ code_machine_11                    , 0x000000004119f000
.equ __section_code_machine_11          , 0x0000000042f8b000
.equ code_machine_12                    , 0x00000000411a0000
.equ __section_code_machine_12          , 0x0000000042f8c000
.equ code_machine_13                    , 0x00000000411a1000
.equ __section_code_machine_13          , 0x0000000042f8d000
.equ code_machine_14                    , 0x00000000411a2000
.equ __section_code_machine_14          , 0x0000000042f8e000
.equ code_machine_15                    , 0x00000000411a3000
.equ __section_code_machine_15          , 0x0000000042f8f000
.equ code_machine_16                    , 0x00000000411a4000
.equ __section_code_machine_16          , 0x0000000042f90000
.equ code_machine_17                    , 0x00000000411a5000
.equ __section_code_machine_17          , 0x0000000042f91000
.equ code_machine_18                    , 0x00000000411a6000
.equ __section_code_machine_18          , 0x0000000042f92000
.equ code_machine_19                    , 0x00000000411a7000
.equ __section_code_machine_19          , 0x0000000042f93000
.equ code_machine_20                    , 0x00000000411a8000
.equ __section_code_machine_20          , 0x0000000042f94000
.equ code_machine_21                    , 0x00000000411a9000
.equ __section_code_machine_21          , 0x0000000042f95000
.equ code_machine_22                    , 0x00000000411aa000
.equ __section_code_machine_22          , 0x0000000042f96000
.equ code_machine_23                    , 0x00000000411ab000
.equ __section_code_machine_23          , 0x0000000042f97000
.equ code_machine_24                    , 0x00000000411ac000
.equ __section_code_machine_24          , 0x0000000042f98000
.equ code_machine_25                    , 0x00000000411ad000
.equ __section_code_machine_25          , 0x0000000042f99000
.equ code_machine_26                    , 0x00000000411ae000
.equ __section_code_machine_26          , 0x0000000042f9a000
.equ code_machine_27                    , 0x00000000411af000
.equ __section_code_machine_27          , 0x0000000042f9b000
.equ code_machine_28                    , 0x00000000411b0000
.equ __section_code_machine_28          , 0x0000000042f9c000
.equ code_machine_29                    , 0x00000000411b1000
.equ __section_code_machine_29          , 0x0000000042f9d000
.equ code_machine_30                    , 0x00000000411b2000
.equ __section_code_machine_30          , 0x0000000042f9e000
.equ code_machine_31                    , 0x00000000411b3000
.equ __section_code_machine_31          , 0x0000000042f9f000
.equ code_machine_32                    , 0x00000000411b4000
.equ __section_code_machine_32          , 0x0000000042fa0000
.equ code_machine_33                    , 0x00000000411b5000
.equ __section_code_machine_33          , 0x0000000042fa1000
.equ code_machine_34                    , 0x00000000411b6000
.equ __section_code_machine_34          , 0x0000000042fa2000
.equ code_machine_35                    , 0x00000000411b7000
.equ __section_code_machine_35          , 0x0000000042fa3000
.equ code_machine_36                    , 0x00000000411b8000
.equ __section_code_machine_36          , 0x0000000042fa4000
.equ code_machine_37                    , 0x00000000411b9000
.equ __section_code_machine_37          , 0x0000000042fa5000
.equ code_machine_38                    , 0x00000000411ba000
.equ __section_code_machine_38          , 0x0000000042fa6000
.equ code_machine_39                    , 0x00000000411bb000
.equ __section_code_machine_39          , 0x0000000042fa7000
.equ code_machine_40                    , 0x00000000411bc000
.equ __section_code_machine_40          , 0x0000000042fa8000
.equ code_machine_41                    , 0x00000000411bd000
.equ __section_code_machine_41          , 0x0000000042fa9000
.equ code_machine_42                    , 0x00000000411be000
.equ __section_code_machine_42          , 0x0000000042faa000
.equ code_machine_43                    , 0x00000000411bf000
.equ __section_code_machine_43          , 0x0000000042fab000
.equ code_machine_44                    , 0x00000000411c0000
.equ __section_code_machine_44          , 0x0000000042fac000
.equ code_machine_45                    , 0x00000000411c1000
.equ __section_code_machine_45          , 0x0000000042fad000
.equ code_machine_46                    , 0x00000000411c2000
.equ __section_code_machine_46          , 0x0000000042fae000
.equ code_machine_47                    , 0x00000000411c3000
.equ __section_code_machine_47          , 0x0000000042faf000
.equ code_machine_48                    , 0x00000000411c4000
.equ __section_code_machine_48          , 0x0000000042fb0000
.equ code_machine_49                    , 0x00000000411c5000
.equ __section_code_machine_49          , 0x0000000042fb1000
.equ code_machine_50                    , 0x00000000411c6000
.equ __section_code_machine_50          , 0x0000000042fb2000
.equ code_machine_51                    , 0x00000000411c7000
.equ __section_code_machine_51          , 0x0000000042fb3000
.equ code_machine_52                    , 0x00000000411c8000
.equ __section_code_machine_52          , 0x0000000042fb4000
.equ code_machine_53                    , 0x00000000411c9000
.equ __section_code_machine_53          , 0x0000000042fb5000
.equ code_machine_54                    , 0x00000000411ca000
.equ __section_code_machine_54          , 0x0000000042fb6000
.equ code_machine_55                    , 0x00000000411cb000
.equ __section_code_machine_55          , 0x0000000042fb7000
.equ code_machine_56                    , 0x00000000411cc000
.equ __section_code_machine_56          , 0x0000000042fb8000
.equ code_machine_57                    , 0x00000000411cd000
.equ __section_code_machine_57          , 0x0000000042fb9000
.equ code_machine_58                    , 0x00000000411ce000
.equ __section_code_machine_58          , 0x0000000042fba000
.equ code_machine_59                    , 0x00000000411cf000
.equ __section_code_machine_59          , 0x0000000042fbb000
.equ code_machine_60                    , 0x00000000411d0000
.equ __section_code_machine_60          , 0x0000000042fbc000
.equ code_machine_61                    , 0x00000000411d1000
.equ __section_code_machine_61          , 0x0000000042fbd000
.equ code_machine_62                    , 0x00000000411d2000
.equ __section_code_machine_62          , 0x0000000042fbe000
.equ code_machine_63                    , 0x00000000411d3000
.equ __section_code_machine_63          , 0x0000000042fbf000
.equ code_machine_64                    , 0x00000000411d4000
.equ __section_code_machine_64          , 0x0000000042fc0000
.equ code_machine_65                    , 0x00000000411d5000
.equ __section_code_machine_65          , 0x0000000042fc1000
.equ code_machine_66                    , 0x00000000411d6000
.equ __section_code_machine_66          , 0x0000000042fc2000
.equ code_machine_67                    , 0x00000000411d7000
.equ __section_code_machine_67          , 0x0000000042fc3000
.equ code_machine_68                    , 0x00000000411d8000
.equ __section_code_machine_68          , 0x0000000042fc4000
.equ code_machine_69                    , 0x00000000411d9000
.equ __section_code_machine_69          , 0x0000000042fc5000
.equ code_machine_70                    , 0x00000000411da000
.equ __section_code_machine_70          , 0x0000000042fc6000
.equ code_machine_71                    , 0x00000000411db000
.equ __section_code_machine_71          , 0x0000000042fc7000
.equ code_machine_72                    , 0x00000000411dc000
.equ __section_code_machine_72          , 0x0000000042fc8000
.equ code_machine_73                    , 0x00000000411dd000
.equ __section_code_machine_73          , 0x0000000042fc9000
.equ code_machine_74                    , 0x00000000411de000
.equ __section_code_machine_74          , 0x0000000042fca000
.equ code_machine_75                    , 0x00000000411df000
.equ __section_code_machine_75          , 0x0000000042fcb000
.equ code_machine_76                    , 0x00000000411e0000
.equ __section_code_machine_76          , 0x0000000042fcc000
.equ code_machine_77                    , 0x00000000411e1000
.equ __section_code_machine_77          , 0x0000000042fcd000
.equ code_machine_78                    , 0x00000000411e2000
.equ __section_code_machine_78          , 0x0000000042fce000
.equ code_machine_79                    , 0x00000000411e3000
.equ __section_code_machine_79          , 0x0000000042fcf000
.equ code_machine_80                    , 0x00000000411e4000
.equ __section_code_machine_80          , 0x0000000042fd0000
.equ code_machine_81                    , 0x00000000411e5000
.equ __section_code_machine_81          , 0x0000000042fd1000
.equ code_machine_82                    , 0x00000000411e6000
.equ __section_code_machine_82          , 0x0000000042fd2000
.equ code_machine_83                    , 0x00000000411e7000
.equ __section_code_machine_83          , 0x0000000042fd3000
.equ code_machine_84                    , 0x00000000411e8000
.equ __section_code_machine_84          , 0x0000000042fd4000
.equ code_machine_85                    , 0x00000000411e9000
.equ __section_code_machine_85          , 0x0000000042fd5000
.equ code_machine_86                    , 0x00000000411ea000
.equ __section_code_machine_86          , 0x0000000042fd6000
.equ code_machine_87                    , 0x00000000411eb000
.equ __section_code_machine_87          , 0x0000000042fd7000
.equ code_machine_88                    , 0x00000000411ec000
.equ __section_code_machine_88          , 0x0000000042fd8000
.equ code_machine_89                    , 0x00000000411ed000
.equ __section_code_machine_89          , 0x0000000042fd9000
.equ code_machine_90                    , 0x00000000411ee000
.equ __section_code_machine_90          , 0x0000000042fda000
.equ code_machine_91                    , 0x00000000411ef000
.equ __section_code_machine_91          , 0x0000000042fdb000
.equ code_machine_92                    , 0x00000000411f0000
.equ __section_code_machine_92          , 0x0000000042fdc000
.equ code_machine_93                    , 0x00000000411f1000
.equ __section_code_machine_93          , 0x0000000042fdd000
.equ code_machine_94                    , 0x00000000411f2000
.equ __section_code_machine_94          , 0x0000000042fde000
.equ code_machine_95                    , 0x00000000411f3000
.equ __section_code_machine_95          , 0x0000000042fdf000
.equ code_machine_96                    , 0x00000000411f4000
.equ __section_code_machine_96          , 0x0000000042fe0000
.equ code_machine_97                    , 0x00000000411f5000
.equ __section_code_machine_97          , 0x0000000042fe1000
.equ code_machine_98                    , 0x00000000411f6000
.equ __section_code_machine_98          , 0x0000000042fe2000
.equ code_machine_99                    , 0x00000000411f7000
.equ __section_code_machine_99          , 0x0000000042fe3000
.equ code_machine_100                   , 0x00000000411f8000
.equ __section_code_machine_100         , 0x0000000042fe4000
.equ code_machine_101                   , 0x00000000411f9000
.equ __section_code_machine_101         , 0x0000000042fe5000
.equ code_machine_102                   , 0x00000000411fa000
.equ __section_code_machine_102         , 0x0000000042fe6000
.equ code_machine_103                   , 0x00000000411fb000
.equ __section_code_machine_103         , 0x0000000042fe7000
.equ code_machine_104                   , 0x00000000411fc000
.equ __section_code_machine_104         , 0x0000000042fe8000
.equ code_machine_105                   , 0x00000000411fd000
.equ __section_code_machine_105         , 0x0000000042fe9000
.equ code_machine_106                   , 0x00000000411fe000
.equ __section_code_machine_106         , 0x0000000042fea000
.equ code_machine_107                   , 0x00000000411ff000
.equ __section_code_machine_107         , 0x0000000042feb000
.equ code_machine_108                   , 0x0000000041200000
.equ __section_code_machine_108         , 0x0000000042fec000
.equ code_machine_109                   , 0x0000000041201000
.equ __section_code_machine_109         , 0x0000000042fed000
.equ code_machine_110                   , 0x0000000041202000
.equ __section_code_machine_110         , 0x0000000042fee000
.equ code_machine_111                   , 0x0000000041203000
.equ __section_code_machine_111         , 0x0000000042fef000
.equ code_machine_112                   , 0x0000000041204000
.equ __section_code_machine_112         , 0x0000000042ff0000
.equ code_machine_113                   , 0x0000000041205000
.equ __section_code_machine_113         , 0x0000000042ff1000
.equ code_machine_114                   , 0x0000000041206000
.equ __section_code_machine_114         , 0x0000000042ff2000
.equ code_machine_115                   , 0x0000000041207000
.equ __section_code_machine_115         , 0x0000000042ff3000
.equ code_machine_116                   , 0x0000000041208000
.equ __section_code_machine_116         , 0x0000000042ff4000
.equ code_machine_117                   , 0x0000000041209000
.equ __section_code_machine_117         , 0x0000000042ff5000
.equ code_machine_118                   , 0x000000004120a000
.equ __section_code_machine_118         , 0x0000000042ff6000
.equ code_machine_119                   , 0x000000004120b000
.equ __section_code_machine_119         , 0x0000000042ff7000
.equ code_machine_120                   , 0x000000004120c000
.equ __section_code_machine_120         , 0x0000000042ff8000
.equ code_machine_121                   , 0x000000004120d000
.equ __section_code_machine_121         , 0x0000000042ff9000
.equ code_machine_122                   , 0x000000004120e000
.equ __section_code_machine_122         , 0x0000000042ffa000
.equ code_machine_123                   , 0x000000004120f000
.equ __section_code_machine_123         , 0x0000000042ffb000
.equ code_machine_124                   , 0x0000000041210000
.equ __section_code_machine_124         , 0x0000000042ffc000
.equ code_machine_125                   , 0x0000000041211000
.equ __section_code_machine_125         , 0x0000000042ffd000
.equ code_machine_126                   , 0x0000000041212000
.equ __section_code_machine_126         , 0x0000000042ffe000
.equ code_machine_127                   , 0x0000000041213000
.equ __section_code_machine_127         , 0x0000000042fff000
.equ csr_machine_0                      , 0x0000000041214000
.equ __section_csr_machine_0            , 0x0000000043000000
.equ csr_super_0                        , 0x0000000041215000
.equ __section_csr_super_0              , 0x0000000043001000
.equ data                               , 0x00000000001be000
.equ __section_data                     , 0x000000004355c000
.equ __section_data_1                   , 0x00000000001bf000
.equ __section_data_1_phys              , 0x000000004355d000
.equ os_data                            , 0x000000000e208000
.equ __section_os_data                  , 0x0000000044eba000
.equ __section_os_data_1                , 0x000000000e209000
.equ __section_os_data_1_phys           , 0x0000000044ebb000
.equ hart_context                       , 0x000003de46543000
.equ __section_hart_context             , 0x000000004500a000
.equ hart_stack_0                       , 0xffffd440ddd19000
.equ __section_hart_stack_0             , 0x0000000044eb9000
.equ io_htif                            , 0x0000000041040000
.equ io_htif_phys                       , 0x0000000041040000
.equ map_os_sptbr                       , 0x0000000045028000
.equ map_hyp_sptbr                      , 0x0000000043200000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0                               , 0x0000002cd9502000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0_phys                          , 0x000000004428c000
# ;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem1                               , 0x0000000001c8a000
# ;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem1_phys                          , 0x0000000044fc8000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2                               , 0x000000000009b000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2_phys                          , 0x000000004503e000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3                               , 0x0000025984095000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3_phys                          , 0x0000000045007000
# ;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem4                               , 0x0000001e5d93e000
# ;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem4_phys                          , 0x000000004503f000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5                               , 0x0000000000004000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5_phys                          , 0x0000000043d56000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6                               , 0x0000001f28d58000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6_phys                          , 0x000000004347f000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7                               , 0x0000000000036000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7_phys                          , 0x0000000041c1f000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage                     , 0x0000000001c51000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage_phys                , 0x0000000043519000
# ;#page_mapping(lin_name=SID_HEXCEP_05_stack, phys_name=SID_HEXCEP_05_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_05_stack                , 0x0000000000175000
# ;#page_mapping(lin_name=SID_HEXCEP_05_stack, phys_name=SID_HEXCEP_05_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_05_stack_phys           , 0x000000004502c000
# ;#page_mapping(lin_name=SID_HEXCEP_07_vs_mode_stack, phys_name=SID_HEXCEP_07_vs_mode_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_07_vs_mode_stack        , 0x0000000ec9a9f000
# ;#page_mapping(lin_name=SID_HEXCEP_07_vs_mode_stack, phys_name=SID_HEXCEP_07_vs_mode_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_07_vs_mode_stack_phys   , 0x0000000045033000
# ;#page_mapping(lin_name=SID_HEXCEP_08_stack, phys_name=SID_HEXCEP_08_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_08_stack                , 0x00000301937ec000
# ;#page_mapping(lin_name=SID_HEXCEP_08_stack, phys_name=SID_HEXCEP_08_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_08_stack_phys           , 0x0000000045040000
# ;#page_mapping(lin_name=SID_HEXCEP_09_mret_in_vs_vu_stack, phys_name=SID_HEXCEP_09_mret_in_vs_vu_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_mret_in_vs_vu_stack  , 0x000016020e70b000
# ;#page_mapping(lin_name=SID_HEXCEP_09_mret_in_vs_vu_stack, phys_name=SID_HEXCEP_09_mret_in_vs_vu_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_mret_in_vs_vu_stack_phys, 0x000000004500b000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sret_vtsr1_vs_stack, phys_name=SID_HEXCEP_09_sret_vtsr1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack  , 0x000000000039f000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sret_vtsr1_vs_stack, phys_name=SID_HEXCEP_09_sret_vtsr1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack_phys, 0x0000000045027000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack, 0x00000007757c9000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys, 0x0000000041c20000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack, 0x000000098b21e000
# ;#page_mapping(lin_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys, 0x000000004341f000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_vvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_vvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_vvma_vs_stack , 0x00000008eb962000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_vvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_vvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_vvma_vs_stack_phys, 0x000000004502f000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_gvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_gvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_gvma_vs_stack , 0x000000001808c000
# ;#page_mapping(lin_name=SID_HEXCEP_09_hinval_gvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_gvma_vs_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_09_hinval_gvma_vs_stack_phys, 0x000000004502d000
# ;#page_mapping(lin_name=SID_HEXCEP_10_stack, phys_name=SID_HEXCEP_10_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_10_stack                , 0x0000002beed92000
# ;#page_mapping(lin_name=SID_HEXCEP_10_stack, phys_name=SID_HEXCEP_10_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_10_stack_phys           , 0x0000000044f21000
# ;#page_mapping(lin_name=SID_HEXCEP_11_stack, phys_name=SID_HEXCEP_11_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_11_stack                , 0xffff8635ae0b8000
# ;#page_mapping(lin_name=SID_HEXCEP_11_stack, phys_name=SID_HEXCEP_11_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_11_stack_phys           , 0x0000000045035000
# ;#page_mapping(lin_name=SID_HEXCEP_16_fs0_both_stack, phys_name=SID_HEXCEP_16_fs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_fs0_both_stack       , 0xfffff00be3a86000
# ;#page_mapping(lin_name=SID_HEXCEP_16_fs0_both_stack, phys_name=SID_HEXCEP_16_fs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_fs0_both_stack_phys  , 0x0000000044202000
# ;#page_mapping(lin_name=SID_HEXCEP_16_vsstatus_fs0_stack, phys_name=SID_HEXCEP_16_vsstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_vsstatus_fs0_stack   , 0x000018dece0f6000
# ;#page_mapping(lin_name=SID_HEXCEP_16_vsstatus_fs0_stack, phys_name=SID_HEXCEP_16_vsstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_vsstatus_fs0_stack_phys, 0x0000000043403000
# ;#page_mapping(lin_name=SID_HEXCEP_16_sstatus_fs0_stack, phys_name=SID_HEXCEP_16_sstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_sstatus_fs0_stack    , 0xfffffc37758ea000
# ;#page_mapping(lin_name=SID_HEXCEP_16_sstatus_fs0_stack, phys_name=SID_HEXCEP_16_sstatus_fs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_16_sstatus_fs0_stack_phys, 0x000000004425b000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vs0_both_stack, phys_name=SID_HEXCEP_17_vs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vs0_both_stack       , 0x00000000007da000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vs0_both_stack, phys_name=SID_HEXCEP_17_vs0_both_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vs0_both_stack_phys  , 0x00000000434de000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vsstatus_vs0_stack, phys_name=SID_HEXCEP_17_vsstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vsstatus_vs0_stack   , 0x000000072f352000
# ;#page_mapping(lin_name=SID_HEXCEP_17_vsstatus_vs0_stack, phys_name=SID_HEXCEP_17_vsstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_vsstatus_vs0_stack_phys, 0x0000000044f73000
# ;#page_mapping(lin_name=SID_HEXCEP_17_sstatus_vs0_stack, phys_name=SID_HEXCEP_17_sstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_sstatus_vs0_stack    , 0x0000000000b7f000
# ;#page_mapping(lin_name=SID_HEXCEP_17_sstatus_vs0_stack, phys_name=SID_HEXCEP_17_sstatus_vs0_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_17_sstatus_vs0_stack_phys, 0x0000000043f14000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_stack, phys_name=SID_HEXCEP_19_misaligned_amo_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_stack , 0x00007c41a7594000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_stack, phys_name=SID_HEXCEP_19_misaligned_amo_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_stack_phys, 0x0000000043402000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_stack, phys_name=SID_HEXCEP_19_misaligned_lr_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_stack  , 0x000000000003c000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_stack, phys_name=SID_HEXCEP_19_misaligned_lr_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_stack_phys, 0x00000000418b1000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_stack, phys_name=SID_HEXCEP_19_misaligned_sc_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_stack  , 0x00000000000df000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_stack, phys_name=SID_HEXCEP_19_misaligned_sc_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_stack_phys, 0x0000000043485000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_amo_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack, 0x0000000008134000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_amo_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack_phys, 0x0000000042423000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_lr_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack, 0x000000005b48c000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_lr_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack_phys, 0x000000004344a000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_sc_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack, 0x00000007db99e000
# ;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_sc_delegated_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack_phys, 0x0000000043451000
.equ runtime_s__vslevel3__gpa           , 0x0000000043474000
.equ runtime_s__vslevel3__phys          , 0x0000000043474000
.equ runtime_s__vslevel2__gpa           , 0x0000000045034000
.equ runtime_s__vslevel2__phys          , 0x0000000045034000
.equ runtime_s__vslevel1__gpa           , 0x000000004502e000
.equ runtime_s__vslevel1__phys          , 0x000000004502e000
.equ runtime_s__vsleaf0__gpa            , 0x0000000041010000
.equ runtime_s__vsleaf0__phys           , 0x0000000041010000
.equ runtime_s_1__vsleaf0__gpa          , 0x0000000041011000
.equ runtime_s_1__vsleaf0__phys         , 0x0000000041011000
.equ runtime_s_2__vsleaf0__gpa          , 0x0000000041012000
.equ runtime_s_2__vsleaf0__phys         , 0x0000000041012000
.equ runtime_s_3__vsleaf0__gpa          , 0x0000000041013000
.equ runtime_s_3__vsleaf0__phys         , 0x0000000041013000
.equ code__vsleaf0__gpa                 , 0x0000000042e00000
.equ code__vsleaf0__phys                , 0x0000000042e00000
.equ __section__code_1__vsleaf0__gpa    , 0x0000000042e01000
.equ __section__code_1__vsleaf0__phys   , 0x0000000042e01000
.equ __section__code_2__vsleaf0__gpa    , 0x0000000042e02000
.equ __section__code_2__vsleaf0__phys   , 0x0000000042e02000
.equ __section__code_3__vsleaf0__gpa    , 0x0000000042e03000
.equ __section__code_3__vsleaf0__phys   , 0x0000000042e03000
.equ __section__code_4__vsleaf0__gpa    , 0x0000000042e04000
.equ __section__code_4__vsleaf0__phys   , 0x0000000042e04000
.equ __section__code_5__vsleaf0__gpa    , 0x0000000042e05000
.equ __section__code_5__vsleaf0__phys   , 0x0000000042e05000
.equ __section__code_6__vsleaf0__gpa    , 0x0000000042e06000
.equ __section__code_6__vsleaf0__phys   , 0x0000000042e06000
.equ __section__code_7__vsleaf0__gpa    , 0x0000000042e07000
.equ __section__code_7__vsleaf0__phys   , 0x0000000042e07000
.equ __section__code_8__vsleaf0__gpa    , 0x0000000042e08000
.equ __section__code_8__vsleaf0__phys   , 0x0000000042e08000
.equ __section__code_9__vsleaf0__gpa    , 0x0000000042e09000
.equ __section__code_9__vsleaf0__phys   , 0x0000000042e09000
.equ __section__code_10__vsleaf0__gpa   , 0x0000000042e0a000
.equ __section__code_10__vsleaf0__phys  , 0x0000000042e0a000
.equ __section__code_11__vsleaf0__gpa   , 0x0000000042e0b000
.equ __section__code_11__vsleaf0__phys  , 0x0000000042e0b000
.equ __section__code_12__vsleaf0__gpa   , 0x0000000042e0c000
.equ __section__code_12__vsleaf0__phys  , 0x0000000042e0c000
.equ __section__code_13__vsleaf0__gpa   , 0x0000000042e0d000
.equ __section__code_13__vsleaf0__phys  , 0x0000000042e0d000
.equ __section__code_14__vsleaf0__gpa   , 0x0000000042e0e000
.equ __section__code_14__vsleaf0__phys  , 0x0000000042e0e000
.equ __section__code_15__vsleaf0__gpa   , 0x0000000042e0f000
.equ __section__code_15__vsleaf0__phys  , 0x0000000042e0f000
.equ __section__code_16__vsleaf0__gpa   , 0x0000000042e10000
.equ __section__code_16__vsleaf0__phys  , 0x0000000042e10000
.equ __section__code_17__vsleaf0__gpa   , 0x0000000042e11000
.equ __section__code_17__vsleaf0__phys  , 0x0000000042e11000
.equ __section__code_18__vsleaf0__gpa   , 0x0000000042e12000
.equ __section__code_18__vsleaf0__phys  , 0x0000000042e12000
.equ __section__code_19__vsleaf0__gpa   , 0x0000000042e13000
.equ __section__code_19__vsleaf0__phys  , 0x0000000042e13000
.equ __section__code_20__vsleaf0__gpa   , 0x0000000042e14000
.equ __section__code_20__vsleaf0__phys  , 0x0000000042e14000
.equ __section__code_21__vsleaf0__gpa   , 0x0000000042e15000
.equ __section__code_21__vsleaf0__phys  , 0x0000000042e15000
.equ __section__code_22__vsleaf0__gpa   , 0x0000000042e16000
.equ __section__code_22__vsleaf0__phys  , 0x0000000042e16000
.equ __section__code_23__vsleaf0__gpa   , 0x0000000042e17000
.equ __section__code_23__vsleaf0__phys  , 0x0000000042e17000
.equ __section__code_24__vsleaf0__gpa   , 0x0000000042e18000
.equ __section__code_24__vsleaf0__phys  , 0x0000000042e18000
.equ __section__code_25__vsleaf0__gpa   , 0x0000000042e19000
.equ __section__code_25__vsleaf0__phys  , 0x0000000042e19000
.equ __section__code_26__vsleaf0__gpa   , 0x0000000042e1a000
.equ __section__code_26__vsleaf0__phys  , 0x0000000042e1a000
.equ __section__code_27__vsleaf0__gpa   , 0x0000000042e1b000
.equ __section__code_27__vsleaf0__phys  , 0x0000000042e1b000
.equ __section__code_28__vsleaf0__gpa   , 0x0000000042e1c000
.equ __section__code_28__vsleaf0__phys  , 0x0000000042e1c000
.equ __section__code_29__vsleaf0__gpa   , 0x0000000042e1d000
.equ __section__code_29__vsleaf0__phys  , 0x0000000042e1d000
.equ __section__code_30__vsleaf0__gpa   , 0x0000000042e1e000
.equ __section__code_30__vsleaf0__phys  , 0x0000000042e1e000
.equ __section__code_31__vsleaf0__gpa   , 0x0000000042e1f000
.equ __section__code_31__vsleaf0__phys  , 0x0000000042e1f000
.equ __section__code_32__vsleaf0__gpa   , 0x0000000042e20000
.equ __section__code_32__vsleaf0__phys  , 0x0000000042e20000
.equ __section__code_33__vsleaf0__gpa   , 0x0000000042e21000
.equ __section__code_33__vsleaf0__phys  , 0x0000000042e21000
.equ __section__code_34__vsleaf0__gpa   , 0x0000000042e22000
.equ __section__code_34__vsleaf0__phys  , 0x0000000042e22000
.equ __section__code_35__vsleaf0__gpa   , 0x0000000042e23000
.equ __section__code_35__vsleaf0__phys  , 0x0000000042e23000
.equ __section__code_36__vsleaf0__gpa   , 0x0000000042e24000
.equ __section__code_36__vsleaf0__phys  , 0x0000000042e24000
.equ __section__code_37__vsleaf0__gpa   , 0x0000000042e25000
.equ __section__code_37__vsleaf0__phys  , 0x0000000042e25000
.equ __section__code_38__vsleaf0__gpa   , 0x0000000042e26000
.equ __section__code_38__vsleaf0__phys  , 0x0000000042e26000
.equ __section__code_39__vsleaf0__gpa   , 0x0000000042e27000
.equ __section__code_39__vsleaf0__phys  , 0x0000000042e27000
.equ __section__code_40__vsleaf0__gpa   , 0x0000000042e28000
.equ __section__code_40__vsleaf0__phys  , 0x0000000042e28000
.equ __section__code_41__vsleaf0__gpa   , 0x0000000042e29000
.equ __section__code_41__vsleaf0__phys  , 0x0000000042e29000
.equ __section__code_42__vsleaf0__gpa   , 0x0000000042e2a000
.equ __section__code_42__vsleaf0__phys  , 0x0000000042e2a000
.equ __section__code_43__vsleaf0__gpa   , 0x0000000042e2b000
.equ __section__code_43__vsleaf0__phys  , 0x0000000042e2b000
.equ __section__code_44__vsleaf0__gpa   , 0x0000000042e2c000
.equ __section__code_44__vsleaf0__phys  , 0x0000000042e2c000
.equ __section__code_45__vsleaf0__gpa   , 0x0000000042e2d000
.equ __section__code_45__vsleaf0__phys  , 0x0000000042e2d000
.equ __section__code_46__vsleaf0__gpa   , 0x0000000042e2e000
.equ __section__code_46__vsleaf0__phys  , 0x0000000042e2e000
.equ __section__code_47__vsleaf0__gpa   , 0x0000000042e2f000
.equ __section__code_47__vsleaf0__phys  , 0x0000000042e2f000
.equ __section__code_48__vsleaf0__gpa   , 0x0000000042e30000
.equ __section__code_48__vsleaf0__phys  , 0x0000000042e30000
.equ __section__code_49__vsleaf0__gpa   , 0x0000000042e31000
.equ __section__code_49__vsleaf0__phys  , 0x0000000042e31000
.equ __section__code_50__vsleaf0__gpa   , 0x0000000042e32000
.equ __section__code_50__vsleaf0__phys  , 0x0000000042e32000
.equ __section__code_51__vsleaf0__gpa   , 0x0000000042e33000
.equ __section__code_51__vsleaf0__phys  , 0x0000000042e33000
.equ __section__code_52__vsleaf0__gpa   , 0x0000000042e34000
.equ __section__code_52__vsleaf0__phys  , 0x0000000042e34000
.equ __section__code_53__vsleaf0__gpa   , 0x0000000042e35000
.equ __section__code_53__vsleaf0__phys  , 0x0000000042e35000
.equ __section__code_54__vsleaf0__gpa   , 0x0000000042e36000
.equ __section__code_54__vsleaf0__phys  , 0x0000000042e36000
.equ __section__code_55__vsleaf0__gpa   , 0x0000000042e37000
.equ __section__code_55__vsleaf0__phys  , 0x0000000042e37000
.equ __section__code_56__vsleaf0__gpa   , 0x0000000042e38000
.equ __section__code_56__vsleaf0__phys  , 0x0000000042e38000
.equ __section__code_57__vsleaf0__gpa   , 0x0000000042e39000
.equ __section__code_57__vsleaf0__phys  , 0x0000000042e39000
.equ __section__code_58__vsleaf0__gpa   , 0x0000000042e3a000
.equ __section__code_58__vsleaf0__phys  , 0x0000000042e3a000
.equ __section__code_59__vsleaf0__gpa   , 0x0000000042e3b000
.equ __section__code_59__vsleaf0__phys  , 0x0000000042e3b000
.equ __section__code_60__vsleaf0__gpa   , 0x0000000042e3c000
.equ __section__code_60__vsleaf0__phys  , 0x0000000042e3c000
.equ __section__code_61__vsleaf0__gpa   , 0x0000000042e3d000
.equ __section__code_61__vsleaf0__phys  , 0x0000000042e3d000
.equ __section__code_62__vsleaf0__gpa   , 0x0000000042e3e000
.equ __section__code_62__vsleaf0__phys  , 0x0000000042e3e000
.equ __section__code_63__vsleaf0__gpa   , 0x0000000042e3f000
.equ __section__code_63__vsleaf0__phys  , 0x0000000042e3f000
.equ __section__code_64__vsleaf0__gpa   , 0x0000000042e40000
.equ __section__code_64__vsleaf0__phys  , 0x0000000042e40000
.equ __section__code_65__vsleaf0__gpa   , 0x0000000042e41000
.equ __section__code_65__vsleaf0__phys  , 0x0000000042e41000
.equ __section__code_66__vsleaf0__gpa   , 0x0000000042e42000
.equ __section__code_66__vsleaf0__phys  , 0x0000000042e42000
.equ __section__code_67__vsleaf0__gpa   , 0x0000000042e43000
.equ __section__code_67__vsleaf0__phys  , 0x0000000042e43000
.equ __section__code_68__vsleaf0__gpa   , 0x0000000042e44000
.equ __section__code_68__vsleaf0__phys  , 0x0000000042e44000
.equ __section__code_69__vsleaf0__gpa   , 0x0000000042e45000
.equ __section__code_69__vsleaf0__phys  , 0x0000000042e45000
.equ __section__code_70__vsleaf0__gpa   , 0x0000000042e46000
.equ __section__code_70__vsleaf0__phys  , 0x0000000042e46000
.equ __section__code_71__vsleaf0__gpa   , 0x0000000042e47000
.equ __section__code_71__vsleaf0__phys  , 0x0000000042e47000
.equ __section__code_72__vsleaf0__gpa   , 0x0000000042e48000
.equ __section__code_72__vsleaf0__phys  , 0x0000000042e48000
.equ __section__code_73__vsleaf0__gpa   , 0x0000000042e49000
.equ __section__code_73__vsleaf0__phys  , 0x0000000042e49000
.equ __section__code_74__vsleaf0__gpa   , 0x0000000042e4a000
.equ __section__code_74__vsleaf0__phys  , 0x0000000042e4a000
.equ __section__code_75__vsleaf0__gpa   , 0x0000000042e4b000
.equ __section__code_75__vsleaf0__phys  , 0x0000000042e4b000
.equ __section__code_76__vsleaf0__gpa   , 0x0000000042e4c000
.equ __section__code_76__vsleaf0__phys  , 0x0000000042e4c000
.equ __section__code_77__vsleaf0__gpa   , 0x0000000042e4d000
.equ __section__code_77__vsleaf0__phys  , 0x0000000042e4d000
.equ __section__code_78__vsleaf0__gpa   , 0x0000000042e4e000
.equ __section__code_78__vsleaf0__phys  , 0x0000000042e4e000
.equ __section__code_79__vsleaf0__gpa   , 0x0000000042e4f000
.equ __section__code_79__vsleaf0__phys  , 0x0000000042e4f000
.equ __section__code_80__vsleaf0__gpa   , 0x0000000042e50000
.equ __section__code_80__vsleaf0__phys  , 0x0000000042e50000
.equ __section__code_81__vsleaf0__gpa   , 0x0000000042e51000
.equ __section__code_81__vsleaf0__phys  , 0x0000000042e51000
.equ __section__code_82__vsleaf0__gpa   , 0x0000000042e52000
.equ __section__code_82__vsleaf0__phys  , 0x0000000042e52000
.equ __section__code_83__vsleaf0__gpa   , 0x0000000042e53000
.equ __section__code_83__vsleaf0__phys  , 0x0000000042e53000
.equ __section__code_84__vsleaf0__gpa   , 0x0000000042e54000
.equ __section__code_84__vsleaf0__phys  , 0x0000000042e54000
.equ __section__code_85__vsleaf0__gpa   , 0x0000000042e55000
.equ __section__code_85__vsleaf0__phys  , 0x0000000042e55000
.equ __section__code_86__vsleaf0__gpa   , 0x0000000042e56000
.equ __section__code_86__vsleaf0__phys  , 0x0000000042e56000
.equ __section__code_87__vsleaf0__gpa   , 0x0000000042e57000
.equ __section__code_87__vsleaf0__phys  , 0x0000000042e57000
.equ __section__code_88__vsleaf0__gpa   , 0x0000000042e58000
.equ __section__code_88__vsleaf0__phys  , 0x0000000042e58000
.equ __section__code_89__vsleaf0__gpa   , 0x0000000042e59000
.equ __section__code_89__vsleaf0__phys  , 0x0000000042e59000
.equ __section__code_90__vsleaf0__gpa   , 0x0000000042e5a000
.equ __section__code_90__vsleaf0__phys  , 0x0000000042e5a000
.equ __section__code_91__vsleaf0__gpa   , 0x0000000042e5b000
.equ __section__code_91__vsleaf0__phys  , 0x0000000042e5b000
.equ __section__code_92__vsleaf0__gpa   , 0x0000000042e5c000
.equ __section__code_92__vsleaf0__phys  , 0x0000000042e5c000
.equ __section__code_93__vsleaf0__gpa   , 0x0000000042e5d000
.equ __section__code_93__vsleaf0__phys  , 0x0000000042e5d000
.equ __section__code_94__vsleaf0__gpa   , 0x0000000042e5e000
.equ __section__code_94__vsleaf0__phys  , 0x0000000042e5e000
.equ __section__code_95__vsleaf0__gpa   , 0x0000000042e5f000
.equ __section__code_95__vsleaf0__phys  , 0x0000000042e5f000
.equ __section__code_96__vsleaf0__gpa   , 0x0000000042e60000
.equ __section__code_96__vsleaf0__phys  , 0x0000000042e60000
.equ __section__code_97__vsleaf0__gpa   , 0x0000000042e61000
.equ __section__code_97__vsleaf0__phys  , 0x0000000042e61000
.equ __section__code_98__vsleaf0__gpa   , 0x0000000042e62000
.equ __section__code_98__vsleaf0__phys  , 0x0000000042e62000
.equ __section__code_99__vsleaf0__gpa   , 0x0000000042e63000
.equ __section__code_99__vsleaf0__phys  , 0x0000000042e63000
.equ __section__code_100__vsleaf0__gpa  , 0x0000000042e64000
.equ __section__code_100__vsleaf0__phys , 0x0000000042e64000
.equ __section__code_101__vsleaf0__gpa  , 0x0000000042e65000
.equ __section__code_101__vsleaf0__phys , 0x0000000042e65000
.equ __section__code_102__vsleaf0__gpa  , 0x0000000042e66000
.equ __section__code_102__vsleaf0__phys , 0x0000000042e66000
.equ __section__code_103__vsleaf0__gpa  , 0x0000000042e67000
.equ __section__code_103__vsleaf0__phys , 0x0000000042e67000
.equ __section__code_104__vsleaf0__gpa  , 0x0000000042e68000
.equ __section__code_104__vsleaf0__phys , 0x0000000042e68000
.equ __section__code_105__vsleaf0__gpa  , 0x0000000042e69000
.equ __section__code_105__vsleaf0__phys , 0x0000000042e69000
.equ __section__code_106__vsleaf0__gpa  , 0x0000000042e6a000
.equ __section__code_106__vsleaf0__phys , 0x0000000042e6a000
.equ __section__code_107__vsleaf0__gpa  , 0x0000000042e6b000
.equ __section__code_107__vsleaf0__phys , 0x0000000042e6b000
.equ __section__code_108__vsleaf0__gpa  , 0x0000000042e6c000
.equ __section__code_108__vsleaf0__phys , 0x0000000042e6c000
.equ __section__code_109__vsleaf0__gpa  , 0x0000000042e6d000
.equ __section__code_109__vsleaf0__phys , 0x0000000042e6d000
.equ __section__code_110__vsleaf0__gpa  , 0x0000000042e6e000
.equ __section__code_110__vsleaf0__phys , 0x0000000042e6e000
.equ __section__code_111__vsleaf0__gpa  , 0x0000000042e6f000
.equ __section__code_111__vsleaf0__phys , 0x0000000042e6f000
.equ __section__code_112__vsleaf0__gpa  , 0x0000000042e70000
.equ __section__code_112__vsleaf0__phys , 0x0000000042e70000
.equ __section__code_113__vsleaf0__gpa  , 0x0000000042e71000
.equ __section__code_113__vsleaf0__phys , 0x0000000042e71000
.equ __section__code_114__vsleaf0__gpa  , 0x0000000042e72000
.equ __section__code_114__vsleaf0__phys , 0x0000000042e72000
.equ __section__code_115__vsleaf0__gpa  , 0x0000000042e73000
.equ __section__code_115__vsleaf0__phys , 0x0000000042e73000
.equ __section__code_116__vsleaf0__gpa  , 0x0000000042e74000
.equ __section__code_116__vsleaf0__phys , 0x0000000042e74000
.equ __section__code_117__vsleaf0__gpa  , 0x0000000042e75000
.equ __section__code_117__vsleaf0__phys , 0x0000000042e75000
.equ __section__code_118__vsleaf0__gpa  , 0x0000000042e76000
.equ __section__code_118__vsleaf0__phys , 0x0000000042e76000
.equ __section__code_119__vsleaf0__gpa  , 0x0000000042e77000
.equ __section__code_119__vsleaf0__phys , 0x0000000042e77000
.equ __section__code_120__vsleaf0__gpa  , 0x0000000042e78000
.equ __section__code_120__vsleaf0__phys , 0x0000000042e78000
.equ __section__code_121__vsleaf0__gpa  , 0x0000000042e79000
.equ __section__code_121__vsleaf0__phys , 0x0000000042e79000
.equ __section__code_122__vsleaf0__gpa  , 0x0000000042e7a000
.equ __section__code_122__vsleaf0__phys , 0x0000000042e7a000
.equ __section__code_123__vsleaf0__gpa  , 0x0000000042e7b000
.equ __section__code_123__vsleaf0__phys , 0x0000000042e7b000
.equ __section__code_124__vsleaf0__gpa  , 0x0000000042e7c000
.equ __section__code_124__vsleaf0__phys , 0x0000000042e7c000
.equ __section__code_125__vsleaf0__gpa  , 0x0000000042e7d000
.equ __section__code_125__vsleaf0__phys , 0x0000000042e7d000
.equ __section__code_126__vsleaf0__gpa  , 0x0000000042e7e000
.equ __section__code_126__vsleaf0__phys , 0x0000000042e7e000
.equ __section__code_127__vsleaf0__gpa  , 0x0000000042e7f000
.equ __section__code_127__vsleaf0__phys , 0x0000000042e7f000
.equ code_super_0__vsleaf0__gpa         , 0x0000000042e80000
.equ code_super_0__vsleaf0__phys        , 0x0000000042e80000
.equ code_super_1__vsleaf0__gpa         , 0x0000000042e81000
.equ code_super_1__vsleaf0__phys        , 0x0000000042e81000
.equ code_super_2__vsleaf0__gpa         , 0x0000000042e82000
.equ code_super_2__vsleaf0__phys        , 0x0000000042e82000
.equ code_super_3__vsleaf0__gpa         , 0x0000000042e83000
.equ code_super_3__vsleaf0__phys        , 0x0000000042e83000
.equ code_super_4__vsleaf0__gpa         , 0x0000000042e84000
.equ code_super_4__vsleaf0__phys        , 0x0000000042e84000
.equ code_super_5__vsleaf0__gpa         , 0x0000000042e85000
.equ code_super_5__vsleaf0__phys        , 0x0000000042e85000
.equ code_super_6__vsleaf0__gpa         , 0x0000000042e86000
.equ code_super_6__vsleaf0__phys        , 0x0000000042e86000
.equ code_super_7__vsleaf0__gpa         , 0x0000000042e87000
.equ code_super_7__vsleaf0__phys        , 0x0000000042e87000
.equ code_super_8__vsleaf0__gpa         , 0x0000000042e88000
.equ code_super_8__vsleaf0__phys        , 0x0000000042e88000
.equ code_super_9__vsleaf0__gpa         , 0x0000000042e89000
.equ code_super_9__vsleaf0__phys        , 0x0000000042e89000
.equ code_super_10__vsleaf0__gpa        , 0x0000000042e8a000
.equ code_super_10__vsleaf0__phys       , 0x0000000042e8a000
.equ code_super_11__vsleaf0__gpa        , 0x0000000042e8b000
.equ code_super_11__vsleaf0__phys       , 0x0000000042e8b000
.equ code_super_12__vsleaf0__gpa        , 0x0000000042e8c000
.equ code_super_12__vsleaf0__phys       , 0x0000000042e8c000
.equ code_super_13__vsleaf0__gpa        , 0x0000000042e8d000
.equ code_super_13__vsleaf0__phys       , 0x0000000042e8d000
.equ code_super_14__vsleaf0__gpa        , 0x0000000042e8e000
.equ code_super_14__vsleaf0__phys       , 0x0000000042e8e000
.equ code_super_15__vsleaf0__gpa        , 0x0000000042e8f000
.equ code_super_15__vsleaf0__phys       , 0x0000000042e8f000
.equ code_super_16__vsleaf0__gpa        , 0x0000000042e90000
.equ code_super_16__vsleaf0__phys       , 0x0000000042e90000
.equ code_super_17__vsleaf0__gpa        , 0x0000000042e91000
.equ code_super_17__vsleaf0__phys       , 0x0000000042e91000
.equ code_super_18__vsleaf0__gpa        , 0x0000000042e92000
.equ code_super_18__vsleaf0__phys       , 0x0000000042e92000
.equ code_super_19__vsleaf0__gpa        , 0x0000000042e93000
.equ code_super_19__vsleaf0__phys       , 0x0000000042e93000
.equ code_super_20__vsleaf0__gpa        , 0x0000000042e94000
.equ code_super_20__vsleaf0__phys       , 0x0000000042e94000
.equ code_super_21__vsleaf0__gpa        , 0x0000000042e95000
.equ code_super_21__vsleaf0__phys       , 0x0000000042e95000
.equ code_super_22__vsleaf0__gpa        , 0x0000000042e96000
.equ code_super_22__vsleaf0__phys       , 0x0000000042e96000
.equ code_super_23__vsleaf0__gpa        , 0x0000000042e97000
.equ code_super_23__vsleaf0__phys       , 0x0000000042e97000
.equ code_super_24__vsleaf0__gpa        , 0x0000000042e98000
.equ code_super_24__vsleaf0__phys       , 0x0000000042e98000
.equ code_super_25__vsleaf0__gpa        , 0x0000000042e99000
.equ code_super_25__vsleaf0__phys       , 0x0000000042e99000
.equ code_super_26__vsleaf0__gpa        , 0x0000000042e9a000
.equ code_super_26__vsleaf0__phys       , 0x0000000042e9a000
.equ code_super_27__vsleaf0__gpa        , 0x0000000042e9b000
.equ code_super_27__vsleaf0__phys       , 0x0000000042e9b000
.equ code_super_28__vsleaf0__gpa        , 0x0000000042e9c000
.equ code_super_28__vsleaf0__phys       , 0x0000000042e9c000
.equ code_super_29__vsleaf0__gpa        , 0x0000000042e9d000
.equ code_super_29__vsleaf0__phys       , 0x0000000042e9d000
.equ code_super_30__vsleaf0__gpa        , 0x0000000042e9e000
.equ code_super_30__vsleaf0__phys       , 0x0000000042e9e000
.equ code_super_31__vsleaf0__gpa        , 0x0000000042e9f000
.equ code_super_31__vsleaf0__phys       , 0x0000000042e9f000
.equ code_super_32__vsleaf0__gpa        , 0x0000000042ea0000
.equ code_super_32__vsleaf0__phys       , 0x0000000042ea0000
.equ code_super_33__vsleaf0__gpa        , 0x0000000042ea1000
.equ code_super_33__vsleaf0__phys       , 0x0000000042ea1000
.equ code_super_34__vsleaf0__gpa        , 0x0000000042ea2000
.equ code_super_34__vsleaf0__phys       , 0x0000000042ea2000
.equ code_super_35__vsleaf0__gpa        , 0x0000000042ea3000
.equ code_super_35__vsleaf0__phys       , 0x0000000042ea3000
.equ code_super_36__vsleaf0__gpa        , 0x0000000042ea4000
.equ code_super_36__vsleaf0__phys       , 0x0000000042ea4000
.equ code_super_37__vsleaf0__gpa        , 0x0000000042ea5000
.equ code_super_37__vsleaf0__phys       , 0x0000000042ea5000
.equ code_super_38__vsleaf0__gpa        , 0x0000000042ea6000
.equ code_super_38__vsleaf0__phys       , 0x0000000042ea6000
.equ code_super_39__vsleaf0__gpa        , 0x0000000042ea7000
.equ code_super_39__vsleaf0__phys       , 0x0000000042ea7000
.equ code_super_40__vsleaf0__gpa        , 0x0000000042ea8000
.equ code_super_40__vsleaf0__phys       , 0x0000000042ea8000
.equ code_super_41__vsleaf0__gpa        , 0x0000000042ea9000
.equ code_super_41__vsleaf0__phys       , 0x0000000042ea9000
.equ code_super_42__vsleaf0__gpa        , 0x0000000042eaa000
.equ code_super_42__vsleaf0__phys       , 0x0000000042eaa000
.equ code_super_43__vsleaf0__gpa        , 0x0000000042eab000
.equ code_super_43__vsleaf0__phys       , 0x0000000042eab000
.equ code_super_44__vsleaf0__gpa        , 0x0000000042eac000
.equ code_super_44__vsleaf0__phys       , 0x0000000042eac000
.equ code_super_45__vsleaf0__gpa        , 0x0000000042ead000
.equ code_super_45__vsleaf0__phys       , 0x0000000042ead000
.equ code_super_46__vsleaf0__gpa        , 0x0000000042eae000
.equ code_super_46__vsleaf0__phys       , 0x0000000042eae000
.equ code_super_47__vsleaf0__gpa        , 0x0000000042eaf000
.equ code_super_47__vsleaf0__phys       , 0x0000000042eaf000
.equ code_super_48__vsleaf0__gpa        , 0x0000000042eb0000
.equ code_super_48__vsleaf0__phys       , 0x0000000042eb0000
.equ code_super_49__vsleaf0__gpa        , 0x0000000042eb1000
.equ code_super_49__vsleaf0__phys       , 0x0000000042eb1000
.equ code_super_50__vsleaf0__gpa        , 0x0000000042eb2000
.equ code_super_50__vsleaf0__phys       , 0x0000000042eb2000
.equ code_super_51__vsleaf0__gpa        , 0x0000000042eb3000
.equ code_super_51__vsleaf0__phys       , 0x0000000042eb3000
.equ code_super_52__vsleaf0__gpa        , 0x0000000042eb4000
.equ code_super_52__vsleaf0__phys       , 0x0000000042eb4000
.equ code_super_53__vsleaf0__gpa        , 0x0000000042eb5000
.equ code_super_53__vsleaf0__phys       , 0x0000000042eb5000
.equ code_super_54__vsleaf0__gpa        , 0x0000000042eb6000
.equ code_super_54__vsleaf0__phys       , 0x0000000042eb6000
.equ code_super_55__vsleaf0__gpa        , 0x0000000042eb7000
.equ code_super_55__vsleaf0__phys       , 0x0000000042eb7000
.equ code_super_56__vsleaf0__gpa        , 0x0000000042eb8000
.equ code_super_56__vsleaf0__phys       , 0x0000000042eb8000
.equ code_super_57__vsleaf0__gpa        , 0x0000000042eb9000
.equ code_super_57__vsleaf0__phys       , 0x0000000042eb9000
.equ code_super_58__vsleaf0__gpa        , 0x0000000042eba000
.equ code_super_58__vsleaf0__phys       , 0x0000000042eba000
.equ code_super_59__vsleaf0__gpa        , 0x0000000042ebb000
.equ code_super_59__vsleaf0__phys       , 0x0000000042ebb000
.equ code_super_60__vsleaf0__gpa        , 0x0000000042ebc000
.equ code_super_60__vsleaf0__phys       , 0x0000000042ebc000
.equ code_super_61__vsleaf0__gpa        , 0x0000000042ebd000
.equ code_super_61__vsleaf0__phys       , 0x0000000042ebd000
.equ code_super_62__vsleaf0__gpa        , 0x0000000042ebe000
.equ code_super_62__vsleaf0__phys       , 0x0000000042ebe000
.equ code_super_63__vsleaf0__gpa        , 0x0000000042ebf000
.equ code_super_63__vsleaf0__phys       , 0x0000000042ebf000
.equ code_super_64__vsleaf0__gpa        , 0x0000000042ec0000
.equ code_super_64__vsleaf0__phys       , 0x0000000042ec0000
.equ code_super_65__vsleaf0__gpa        , 0x0000000042ec1000
.equ code_super_65__vsleaf0__phys       , 0x0000000042ec1000
.equ code_super_66__vsleaf0__gpa        , 0x0000000042ec2000
.equ code_super_66__vsleaf0__phys       , 0x0000000042ec2000
.equ code_super_67__vsleaf0__gpa        , 0x0000000042ec3000
.equ code_super_67__vsleaf0__phys       , 0x0000000042ec3000
.equ code_super_68__vsleaf0__gpa        , 0x0000000042ec4000
.equ code_super_68__vsleaf0__phys       , 0x0000000042ec4000
.equ code_super_69__vsleaf0__gpa        , 0x0000000042ec5000
.equ code_super_69__vsleaf0__phys       , 0x0000000042ec5000
.equ code_super_70__vsleaf0__gpa        , 0x0000000042ec6000
.equ code_super_70__vsleaf0__phys       , 0x0000000042ec6000
.equ code_super_71__vsleaf0__gpa        , 0x0000000042ec7000
.equ code_super_71__vsleaf0__phys       , 0x0000000042ec7000
.equ code_super_72__vsleaf0__gpa        , 0x0000000042ec8000
.equ code_super_72__vsleaf0__phys       , 0x0000000042ec8000
.equ code_super_73__vsleaf0__gpa        , 0x0000000042ec9000
.equ code_super_73__vsleaf0__phys       , 0x0000000042ec9000
.equ code_super_74__vsleaf0__gpa        , 0x0000000042eca000
.equ code_super_74__vsleaf0__phys       , 0x0000000042eca000
.equ code_super_75__vsleaf0__gpa        , 0x0000000042ecb000
.equ code_super_75__vsleaf0__phys       , 0x0000000042ecb000
.equ code_super_76__vsleaf0__gpa        , 0x0000000042ecc000
.equ code_super_76__vsleaf0__phys       , 0x0000000042ecc000
.equ code_super_77__vsleaf0__gpa        , 0x0000000042ecd000
.equ code_super_77__vsleaf0__phys       , 0x0000000042ecd000
.equ code_super_78__vsleaf0__gpa        , 0x0000000042ece000
.equ code_super_78__vsleaf0__phys       , 0x0000000042ece000
.equ code_super_79__vsleaf0__gpa        , 0x0000000042ecf000
.equ code_super_79__vsleaf0__phys       , 0x0000000042ecf000
.equ code_super_80__vsleaf0__gpa        , 0x0000000042ed0000
.equ code_super_80__vsleaf0__phys       , 0x0000000042ed0000
.equ code_super_81__vsleaf0__gpa        , 0x0000000042ed1000
.equ code_super_81__vsleaf0__phys       , 0x0000000042ed1000
.equ code_super_82__vsleaf0__gpa        , 0x0000000042ed2000
.equ code_super_82__vsleaf0__phys       , 0x0000000042ed2000
.equ code_super_83__vsleaf0__gpa        , 0x0000000042ed3000
.equ code_super_83__vsleaf0__phys       , 0x0000000042ed3000
.equ code_super_84__vsleaf0__gpa        , 0x0000000042ed4000
.equ code_super_84__vsleaf0__phys       , 0x0000000042ed4000
.equ code_super_85__vsleaf0__gpa        , 0x0000000042ed5000
.equ code_super_85__vsleaf0__phys       , 0x0000000042ed5000
.equ code_super_86__vsleaf0__gpa        , 0x0000000042ed6000
.equ code_super_86__vsleaf0__phys       , 0x0000000042ed6000
.equ code_super_87__vsleaf0__gpa        , 0x0000000042ed7000
.equ code_super_87__vsleaf0__phys       , 0x0000000042ed7000
.equ code_super_88__vsleaf0__gpa        , 0x0000000042ed8000
.equ code_super_88__vsleaf0__phys       , 0x0000000042ed8000
.equ code_super_89__vsleaf0__gpa        , 0x0000000042ed9000
.equ code_super_89__vsleaf0__phys       , 0x0000000042ed9000
.equ code_super_90__vsleaf0__gpa        , 0x0000000042eda000
.equ code_super_90__vsleaf0__phys       , 0x0000000042eda000
.equ code_super_91__vsleaf0__gpa        , 0x0000000042edb000
.equ code_super_91__vsleaf0__phys       , 0x0000000042edb000
.equ code_super_92__vsleaf0__gpa        , 0x0000000042edc000
.equ code_super_92__vsleaf0__phys       , 0x0000000042edc000
.equ code_super_93__vsleaf0__gpa        , 0x0000000042edd000
.equ code_super_93__vsleaf0__phys       , 0x0000000042edd000
.equ code_super_94__vsleaf0__gpa        , 0x0000000042ede000
.equ code_super_94__vsleaf0__phys       , 0x0000000042ede000
.equ code_super_95__vsleaf0__gpa        , 0x0000000042edf000
.equ code_super_95__vsleaf0__phys       , 0x0000000042edf000
.equ code_super_96__vsleaf0__gpa        , 0x0000000042ee0000
.equ code_super_96__vsleaf0__phys       , 0x0000000042ee0000
.equ code_super_97__vsleaf0__gpa        , 0x0000000042ee1000
.equ code_super_97__vsleaf0__phys       , 0x0000000042ee1000
.equ code_super_98__vsleaf0__gpa        , 0x0000000042ee2000
.equ code_super_98__vsleaf0__phys       , 0x0000000042ee2000
.equ code_super_99__vsleaf0__gpa        , 0x0000000042ee3000
.equ code_super_99__vsleaf0__phys       , 0x0000000042ee3000
.equ code_super_100__vsleaf0__gpa       , 0x0000000042ee4000
.equ code_super_100__vsleaf0__phys      , 0x0000000042ee4000
.equ code_super_101__vsleaf0__gpa       , 0x0000000042ee5000
.equ code_super_101__vsleaf0__phys      , 0x0000000042ee5000
.equ code_super_102__vsleaf0__gpa       , 0x0000000042ee6000
.equ code_super_102__vsleaf0__phys      , 0x0000000042ee6000
.equ code_super_103__vsleaf0__gpa       , 0x0000000042ee7000
.equ code_super_103__vsleaf0__phys      , 0x0000000042ee7000
.equ code_super_104__vsleaf0__gpa       , 0x0000000042ee8000
.equ code_super_104__vsleaf0__phys      , 0x0000000042ee8000
.equ code_super_105__vsleaf0__gpa       , 0x0000000042ee9000
.equ code_super_105__vsleaf0__phys      , 0x0000000042ee9000
.equ code_super_106__vsleaf0__gpa       , 0x0000000042eea000
.equ code_super_106__vsleaf0__phys      , 0x0000000042eea000
.equ code_super_107__vsleaf0__gpa       , 0x0000000042eeb000
.equ code_super_107__vsleaf0__phys      , 0x0000000042eeb000
.equ code_super_108__vsleaf0__gpa       , 0x0000000042eec000
.equ code_super_108__vsleaf0__phys      , 0x0000000042eec000
.equ code_super_109__vsleaf0__gpa       , 0x0000000042eed000
.equ code_super_109__vsleaf0__phys      , 0x0000000042eed000
.equ code_super_110__vsleaf0__gpa       , 0x0000000042eee000
.equ code_super_110__vsleaf0__phys      , 0x0000000042eee000
.equ code_super_111__vsleaf0__gpa       , 0x0000000042eef000
.equ code_super_111__vsleaf0__phys      , 0x0000000042eef000
.equ code_super_112__vsleaf0__gpa       , 0x0000000042ef0000
.equ code_super_112__vsleaf0__phys      , 0x0000000042ef0000
.equ code_super_113__vsleaf0__gpa       , 0x0000000042ef1000
.equ code_super_113__vsleaf0__phys      , 0x0000000042ef1000
.equ code_super_114__vsleaf0__gpa       , 0x0000000042ef2000
.equ code_super_114__vsleaf0__phys      , 0x0000000042ef2000
.equ code_super_115__vsleaf0__gpa       , 0x0000000042ef3000
.equ code_super_115__vsleaf0__phys      , 0x0000000042ef3000
.equ code_super_116__vsleaf0__gpa       , 0x0000000042ef4000
.equ code_super_116__vsleaf0__phys      , 0x0000000042ef4000
.equ code_super_117__vsleaf0__gpa       , 0x0000000042ef5000
.equ code_super_117__vsleaf0__phys      , 0x0000000042ef5000
.equ code_super_118__vsleaf0__gpa       , 0x0000000042ef6000
.equ code_super_118__vsleaf0__phys      , 0x0000000042ef6000
.equ code_super_119__vsleaf0__gpa       , 0x0000000042ef7000
.equ code_super_119__vsleaf0__phys      , 0x0000000042ef7000
.equ code_super_120__vsleaf0__gpa       , 0x0000000042ef8000
.equ code_super_120__vsleaf0__phys      , 0x0000000042ef8000
.equ code_super_121__vsleaf0__gpa       , 0x0000000042ef9000
.equ code_super_121__vsleaf0__phys      , 0x0000000042ef9000
.equ code_super_122__vsleaf0__gpa       , 0x0000000042efa000
.equ code_super_122__vsleaf0__phys      , 0x0000000042efa000
.equ code_super_123__vsleaf0__gpa       , 0x0000000042efb000
.equ code_super_123__vsleaf0__phys      , 0x0000000042efb000
.equ code_super_124__vsleaf0__gpa       , 0x0000000042efc000
.equ code_super_124__vsleaf0__phys      , 0x0000000042efc000
.equ code_super_125__vsleaf0__gpa       , 0x0000000042efd000
.equ code_super_125__vsleaf0__phys      , 0x0000000042efd000
.equ code_super_126__vsleaf0__gpa       , 0x0000000042efe000
.equ code_super_126__vsleaf0__phys      , 0x0000000042efe000
.equ code_super_127__vsleaf0__gpa       , 0x0000000042eff000
.equ code_super_127__vsleaf0__phys      , 0x0000000042eff000
.equ code_user_0__vsleaf0__gpa          , 0x0000000042f00000
.equ code_user_0__vsleaf0__phys         , 0x0000000042f00000
.equ code_user_1__vsleaf0__gpa          , 0x0000000042f01000
.equ code_user_1__vsleaf0__phys         , 0x0000000042f01000
.equ code_user_2__vsleaf0__gpa          , 0x0000000042f02000
.equ code_user_2__vsleaf0__phys         , 0x0000000042f02000
.equ code_user_3__vsleaf0__gpa          , 0x0000000042f03000
.equ code_user_3__vsleaf0__phys         , 0x0000000042f03000
.equ code_user_4__vsleaf0__gpa          , 0x0000000042f04000
.equ code_user_4__vsleaf0__phys         , 0x0000000042f04000
.equ code_user_5__vsleaf0__gpa          , 0x0000000042f05000
.equ code_user_5__vsleaf0__phys         , 0x0000000042f05000
.equ code_user_6__vsleaf0__gpa          , 0x0000000042f06000
.equ code_user_6__vsleaf0__phys         , 0x0000000042f06000
.equ code_user_7__vsleaf0__gpa          , 0x0000000042f07000
.equ code_user_7__vsleaf0__phys         , 0x0000000042f07000
.equ code_user_8__vsleaf0__gpa          , 0x0000000042f08000
.equ code_user_8__vsleaf0__phys         , 0x0000000042f08000
.equ code_user_9__vsleaf0__gpa          , 0x0000000042f09000
.equ code_user_9__vsleaf0__phys         , 0x0000000042f09000
.equ code_user_10__vsleaf0__gpa         , 0x0000000042f0a000
.equ code_user_10__vsleaf0__phys        , 0x0000000042f0a000
.equ code_user_11__vsleaf0__gpa         , 0x0000000042f0b000
.equ code_user_11__vsleaf0__phys        , 0x0000000042f0b000
.equ code_user_12__vsleaf0__gpa         , 0x0000000042f0c000
.equ code_user_12__vsleaf0__phys        , 0x0000000042f0c000
.equ code_user_13__vsleaf0__gpa         , 0x0000000042f0d000
.equ code_user_13__vsleaf0__phys        , 0x0000000042f0d000
.equ code_user_14__vsleaf0__gpa         , 0x0000000042f0e000
.equ code_user_14__vsleaf0__phys        , 0x0000000042f0e000
.equ code_user_15__vsleaf0__gpa         , 0x0000000042f0f000
.equ code_user_15__vsleaf0__phys        , 0x0000000042f0f000
.equ code_user_16__vsleaf0__gpa         , 0x0000000042f10000
.equ code_user_16__vsleaf0__phys        , 0x0000000042f10000
.equ code_user_17__vsleaf0__gpa         , 0x0000000042f11000
.equ code_user_17__vsleaf0__phys        , 0x0000000042f11000
.equ code_user_18__vsleaf0__gpa         , 0x0000000042f12000
.equ code_user_18__vsleaf0__phys        , 0x0000000042f12000
.equ code_user_19__vsleaf0__gpa         , 0x0000000042f13000
.equ code_user_19__vsleaf0__phys        , 0x0000000042f13000
.equ code_user_20__vsleaf0__gpa         , 0x0000000042f14000
.equ code_user_20__vsleaf0__phys        , 0x0000000042f14000
.equ code_user_21__vsleaf0__gpa         , 0x0000000042f15000
.equ code_user_21__vsleaf0__phys        , 0x0000000042f15000
.equ code_user_22__vsleaf0__gpa         , 0x0000000042f16000
.equ code_user_22__vsleaf0__phys        , 0x0000000042f16000
.equ code_user_23__vsleaf0__gpa         , 0x0000000042f17000
.equ code_user_23__vsleaf0__phys        , 0x0000000042f17000
.equ code_user_24__vsleaf0__gpa         , 0x0000000042f18000
.equ code_user_24__vsleaf0__phys        , 0x0000000042f18000
.equ code_user_25__vsleaf0__gpa         , 0x0000000042f19000
.equ code_user_25__vsleaf0__phys        , 0x0000000042f19000
.equ code_user_26__vsleaf0__gpa         , 0x0000000042f1a000
.equ code_user_26__vsleaf0__phys        , 0x0000000042f1a000
.equ code_user_27__vsleaf0__gpa         , 0x0000000042f1b000
.equ code_user_27__vsleaf0__phys        , 0x0000000042f1b000
.equ code_user_28__vsleaf0__gpa         , 0x0000000042f1c000
.equ code_user_28__vsleaf0__phys        , 0x0000000042f1c000
.equ code_user_29__vsleaf0__gpa         , 0x0000000042f1d000
.equ code_user_29__vsleaf0__phys        , 0x0000000042f1d000
.equ code_user_30__vsleaf0__gpa         , 0x0000000042f1e000
.equ code_user_30__vsleaf0__phys        , 0x0000000042f1e000
.equ code_user_31__vsleaf0__gpa         , 0x0000000042f1f000
.equ code_user_31__vsleaf0__phys        , 0x0000000042f1f000
.equ code_user_32__vsleaf0__gpa         , 0x0000000042f20000
.equ code_user_32__vsleaf0__phys        , 0x0000000042f20000
.equ code_user_33__vsleaf0__gpa         , 0x0000000042f21000
.equ code_user_33__vsleaf0__phys        , 0x0000000042f21000
.equ code_user_34__vsleaf0__gpa         , 0x0000000042f22000
.equ code_user_34__vsleaf0__phys        , 0x0000000042f22000
.equ code_user_35__vsleaf0__gpa         , 0x0000000042f23000
.equ code_user_35__vsleaf0__phys        , 0x0000000042f23000
.equ code_user_36__vsleaf0__gpa         , 0x0000000042f24000
.equ code_user_36__vsleaf0__phys        , 0x0000000042f24000
.equ code_user_37__vsleaf0__gpa         , 0x0000000042f25000
.equ code_user_37__vsleaf0__phys        , 0x0000000042f25000
.equ code_user_38__vsleaf0__gpa         , 0x0000000042f26000
.equ code_user_38__vsleaf0__phys        , 0x0000000042f26000
.equ code_user_39__vsleaf0__gpa         , 0x0000000042f27000
.equ code_user_39__vsleaf0__phys        , 0x0000000042f27000
.equ code_user_40__vsleaf0__gpa         , 0x0000000042f28000
.equ code_user_40__vsleaf0__phys        , 0x0000000042f28000
.equ code_user_41__vsleaf0__gpa         , 0x0000000042f29000
.equ code_user_41__vsleaf0__phys        , 0x0000000042f29000
.equ code_user_42__vsleaf0__gpa         , 0x0000000042f2a000
.equ code_user_42__vsleaf0__phys        , 0x0000000042f2a000
.equ code_user_43__vsleaf0__gpa         , 0x0000000042f2b000
.equ code_user_43__vsleaf0__phys        , 0x0000000042f2b000
.equ code_user_44__vsleaf0__gpa         , 0x0000000042f2c000
.equ code_user_44__vsleaf0__phys        , 0x0000000042f2c000
.equ code_user_45__vsleaf0__gpa         , 0x0000000042f2d000
.equ code_user_45__vsleaf0__phys        , 0x0000000042f2d000
.equ code_user_46__vsleaf0__gpa         , 0x0000000042f2e000
.equ code_user_46__vsleaf0__phys        , 0x0000000042f2e000
.equ code_user_47__vsleaf0__gpa         , 0x0000000042f2f000
.equ code_user_47__vsleaf0__phys        , 0x0000000042f2f000
.equ code_user_48__vsleaf0__gpa         , 0x0000000042f30000
.equ code_user_48__vsleaf0__phys        , 0x0000000042f30000
.equ code_user_49__vsleaf0__gpa         , 0x0000000042f31000
.equ code_user_49__vsleaf0__phys        , 0x0000000042f31000
.equ code_user_50__vsleaf0__gpa         , 0x0000000042f32000
.equ code_user_50__vsleaf0__phys        , 0x0000000042f32000
.equ code_user_51__vsleaf0__gpa         , 0x0000000042f33000
.equ code_user_51__vsleaf0__phys        , 0x0000000042f33000
.equ code_user_52__vsleaf0__gpa         , 0x0000000042f34000
.equ code_user_52__vsleaf0__phys        , 0x0000000042f34000
.equ code_user_53__vsleaf0__gpa         , 0x0000000042f35000
.equ code_user_53__vsleaf0__phys        , 0x0000000042f35000
.equ code_user_54__vsleaf0__gpa         , 0x0000000042f36000
.equ code_user_54__vsleaf0__phys        , 0x0000000042f36000
.equ code_user_55__vsleaf0__gpa         , 0x0000000042f37000
.equ code_user_55__vsleaf0__phys        , 0x0000000042f37000
.equ code_user_56__vsleaf0__gpa         , 0x0000000042f38000
.equ code_user_56__vsleaf0__phys        , 0x0000000042f38000
.equ code_user_57__vsleaf0__gpa         , 0x0000000042f39000
.equ code_user_57__vsleaf0__phys        , 0x0000000042f39000
.equ code_user_58__vsleaf0__gpa         , 0x0000000042f3a000
.equ code_user_58__vsleaf0__phys        , 0x0000000042f3a000
.equ code_user_59__vsleaf0__gpa         , 0x0000000042f3b000
.equ code_user_59__vsleaf0__phys        , 0x0000000042f3b000
.equ code_user_60__vsleaf0__gpa         , 0x0000000042f3c000
.equ code_user_60__vsleaf0__phys        , 0x0000000042f3c000
.equ code_user_61__vsleaf0__gpa         , 0x0000000042f3d000
.equ code_user_61__vsleaf0__phys        , 0x0000000042f3d000
.equ code_user_62__vsleaf0__gpa         , 0x0000000042f3e000
.equ code_user_62__vsleaf0__phys        , 0x0000000042f3e000
.equ code_user_63__vsleaf0__gpa         , 0x0000000042f3f000
.equ code_user_63__vsleaf0__phys        , 0x0000000042f3f000
.equ code_user_64__vsleaf0__gpa         , 0x0000000042f40000
.equ code_user_64__vsleaf0__phys        , 0x0000000042f40000
.equ code_user_65__vsleaf0__gpa         , 0x0000000042f41000
.equ code_user_65__vsleaf0__phys        , 0x0000000042f41000
.equ code_user_66__vsleaf0__gpa         , 0x0000000042f42000
.equ code_user_66__vsleaf0__phys        , 0x0000000042f42000
.equ code_user_67__vsleaf0__gpa         , 0x0000000042f43000
.equ code_user_67__vsleaf0__phys        , 0x0000000042f43000
.equ code_user_68__vsleaf0__gpa         , 0x0000000042f44000
.equ code_user_68__vsleaf0__phys        , 0x0000000042f44000
.equ code_user_69__vsleaf0__gpa         , 0x0000000042f45000
.equ code_user_69__vsleaf0__phys        , 0x0000000042f45000
.equ code_user_70__vsleaf0__gpa         , 0x0000000042f46000
.equ code_user_70__vsleaf0__phys        , 0x0000000042f46000
.equ code_user_71__vsleaf0__gpa         , 0x0000000042f47000
.equ code_user_71__vsleaf0__phys        , 0x0000000042f47000
.equ code_user_72__vsleaf0__gpa         , 0x0000000042f48000
.equ code_user_72__vsleaf0__phys        , 0x0000000042f48000
.equ code_user_73__vsleaf0__gpa         , 0x0000000042f49000
.equ code_user_73__vsleaf0__phys        , 0x0000000042f49000
.equ code_user_74__vsleaf0__gpa         , 0x0000000042f4a000
.equ code_user_74__vsleaf0__phys        , 0x0000000042f4a000
.equ code_user_75__vsleaf0__gpa         , 0x0000000042f4b000
.equ code_user_75__vsleaf0__phys        , 0x0000000042f4b000
.equ code_user_76__vsleaf0__gpa         , 0x0000000042f4c000
.equ code_user_76__vsleaf0__phys        , 0x0000000042f4c000
.equ code_user_77__vsleaf0__gpa         , 0x0000000042f4d000
.equ code_user_77__vsleaf0__phys        , 0x0000000042f4d000
.equ code_user_78__vsleaf0__gpa         , 0x0000000042f4e000
.equ code_user_78__vsleaf0__phys        , 0x0000000042f4e000
.equ code_user_79__vsleaf0__gpa         , 0x0000000042f4f000
.equ code_user_79__vsleaf0__phys        , 0x0000000042f4f000
.equ code_user_80__vsleaf0__gpa         , 0x0000000042f50000
.equ code_user_80__vsleaf0__phys        , 0x0000000042f50000
.equ code_user_81__vsleaf0__gpa         , 0x0000000042f51000
.equ code_user_81__vsleaf0__phys        , 0x0000000042f51000
.equ code_user_82__vsleaf0__gpa         , 0x0000000042f52000
.equ code_user_82__vsleaf0__phys        , 0x0000000042f52000
.equ code_user_83__vsleaf0__gpa         , 0x0000000042f53000
.equ code_user_83__vsleaf0__phys        , 0x0000000042f53000
.equ code_user_84__vsleaf0__gpa         , 0x0000000042f54000
.equ code_user_84__vsleaf0__phys        , 0x0000000042f54000
.equ code_user_85__vsleaf0__gpa         , 0x0000000042f55000
.equ code_user_85__vsleaf0__phys        , 0x0000000042f55000
.equ code_user_86__vsleaf0__gpa         , 0x0000000042f56000
.equ code_user_86__vsleaf0__phys        , 0x0000000042f56000
.equ code_user_87__vsleaf0__gpa         , 0x0000000042f57000
.equ code_user_87__vsleaf0__phys        , 0x0000000042f57000
.equ code_user_88__vsleaf0__gpa         , 0x0000000042f58000
.equ code_user_88__vsleaf0__phys        , 0x0000000042f58000
.equ code_user_89__vsleaf0__gpa         , 0x0000000042f59000
.equ code_user_89__vsleaf0__phys        , 0x0000000042f59000
.equ code_user_90__vsleaf0__gpa         , 0x0000000042f5a000
.equ code_user_90__vsleaf0__phys        , 0x0000000042f5a000
.equ code_user_91__vsleaf0__gpa         , 0x0000000042f5b000
.equ code_user_91__vsleaf0__phys        , 0x0000000042f5b000
.equ code_user_92__vsleaf0__gpa         , 0x0000000042f5c000
.equ code_user_92__vsleaf0__phys        , 0x0000000042f5c000
.equ code_user_93__vsleaf0__gpa         , 0x0000000042f5d000
.equ code_user_93__vsleaf0__phys        , 0x0000000042f5d000
.equ code_user_94__vsleaf0__gpa         , 0x0000000042f5e000
.equ code_user_94__vsleaf0__phys        , 0x0000000042f5e000
.equ code_user_95__vsleaf0__gpa         , 0x0000000042f5f000
.equ code_user_95__vsleaf0__phys        , 0x0000000042f5f000
.equ code_user_96__vsleaf0__gpa         , 0x0000000042f60000
.equ code_user_96__vsleaf0__phys        , 0x0000000042f60000
.equ code_user_97__vsleaf0__gpa         , 0x0000000042f61000
.equ code_user_97__vsleaf0__phys        , 0x0000000042f61000
.equ code_user_98__vsleaf0__gpa         , 0x0000000042f62000
.equ code_user_98__vsleaf0__phys        , 0x0000000042f62000
.equ code_user_99__vsleaf0__gpa         , 0x0000000042f63000
.equ code_user_99__vsleaf0__phys        , 0x0000000042f63000
.equ code_user_100__vsleaf0__gpa        , 0x0000000042f64000
.equ code_user_100__vsleaf0__phys       , 0x0000000042f64000
.equ code_user_101__vsleaf0__gpa        , 0x0000000042f65000
.equ code_user_101__vsleaf0__phys       , 0x0000000042f65000
.equ code_user_102__vsleaf0__gpa        , 0x0000000042f66000
.equ code_user_102__vsleaf0__phys       , 0x0000000042f66000
.equ code_user_103__vsleaf0__gpa        , 0x0000000042f67000
.equ code_user_103__vsleaf0__phys       , 0x0000000042f67000
.equ code_user_104__vsleaf0__gpa        , 0x0000000042f68000
.equ code_user_104__vsleaf0__phys       , 0x0000000042f68000
.equ code_user_105__vsleaf0__gpa        , 0x0000000042f69000
.equ code_user_105__vsleaf0__phys       , 0x0000000042f69000
.equ code_user_106__vsleaf0__gpa        , 0x0000000042f6a000
.equ code_user_106__vsleaf0__phys       , 0x0000000042f6a000
.equ code_user_107__vsleaf0__gpa        , 0x0000000042f6b000
.equ code_user_107__vsleaf0__phys       , 0x0000000042f6b000
.equ code_user_108__vsleaf0__gpa        , 0x0000000042f6c000
.equ code_user_108__vsleaf0__phys       , 0x0000000042f6c000
.equ code_user_109__vsleaf0__gpa        , 0x0000000042f6d000
.equ code_user_109__vsleaf0__phys       , 0x0000000042f6d000
.equ code_user_110__vsleaf0__gpa        , 0x0000000042f6e000
.equ code_user_110__vsleaf0__phys       , 0x0000000042f6e000
.equ code_user_111__vsleaf0__gpa        , 0x0000000042f6f000
.equ code_user_111__vsleaf0__phys       , 0x0000000042f6f000
.equ code_user_112__vsleaf0__gpa        , 0x0000000042f70000
.equ code_user_112__vsleaf0__phys       , 0x0000000042f70000
.equ code_user_113__vsleaf0__gpa        , 0x0000000042f71000
.equ code_user_113__vsleaf0__phys       , 0x0000000042f71000
.equ code_user_114__vsleaf0__gpa        , 0x0000000042f72000
.equ code_user_114__vsleaf0__phys       , 0x0000000042f72000
.equ code_user_115__vsleaf0__gpa        , 0x0000000042f73000
.equ code_user_115__vsleaf0__phys       , 0x0000000042f73000
.equ code_user_116__vsleaf0__gpa        , 0x0000000042f74000
.equ code_user_116__vsleaf0__phys       , 0x0000000042f74000
.equ code_user_117__vsleaf0__gpa        , 0x0000000042f75000
.equ code_user_117__vsleaf0__phys       , 0x0000000042f75000
.equ code_user_118__vsleaf0__gpa        , 0x0000000042f76000
.equ code_user_118__vsleaf0__phys       , 0x0000000042f76000
.equ code_user_119__vsleaf0__gpa        , 0x0000000042f77000
.equ code_user_119__vsleaf0__phys       , 0x0000000042f77000
.equ code_user_120__vsleaf0__gpa        , 0x0000000042f78000
.equ code_user_120__vsleaf0__phys       , 0x0000000042f78000
.equ code_user_121__vsleaf0__gpa        , 0x0000000042f79000
.equ code_user_121__vsleaf0__phys       , 0x0000000042f79000
.equ code_user_122__vsleaf0__gpa        , 0x0000000042f7a000
.equ code_user_122__vsleaf0__phys       , 0x0000000042f7a000
.equ code_user_123__vsleaf0__gpa        , 0x0000000042f7b000
.equ code_user_123__vsleaf0__phys       , 0x0000000042f7b000
.equ code_user_124__vsleaf0__gpa        , 0x0000000042f7c000
.equ code_user_124__vsleaf0__phys       , 0x0000000042f7c000
.equ code_user_125__vsleaf0__gpa        , 0x0000000042f7d000
.equ code_user_125__vsleaf0__phys       , 0x0000000042f7d000
.equ code_user_126__vsleaf0__gpa        , 0x0000000042f7e000
.equ code_user_126__vsleaf0__phys       , 0x0000000042f7e000
.equ code_user_127__vsleaf0__gpa        , 0x0000000042f7f000
.equ code_user_127__vsleaf0__phys       , 0x0000000042f7f000
.equ csr_super_0__vslevel1__gpa         , 0x0000000044f58000
.equ csr_super_0__vslevel1__phys        , 0x0000000044f58000
.equ csr_super_0__vsleaf0__gpa          , 0x0000000043001000
.equ csr_super_0__vsleaf0__phys         , 0x0000000043001000
.equ data__vslevel2__gpa                , 0x0000000043677000
.equ data__vslevel2__phys               , 0x0000000043677000
.equ data__vslevel1__gpa                , 0x00000000434c5000
.equ data__vslevel1__phys               , 0x00000000434c5000
.equ data__vsleaf0__gpa                 , 0x000000004355c000
.equ data__vsleaf0__phys                , 0x000000004355c000
.equ __section_data_1__vsleaf0__gpa     , 0x000000004355d000
.equ __section_data_1__vsleaf0__phys    , 0x000000004355d000
.equ os_data__vslevel1__gpa             , 0x0000000044ee4000
.equ os_data__vslevel1__phys            , 0x0000000044ee4000
.equ os_data__vsleaf0__gpa              , 0x0000000044eba000
.equ os_data__vsleaf0__phys             , 0x0000000044eba000
.equ __section_os_data_1__vsleaf0__gpa  , 0x0000000044ebb000
.equ __section_os_data_1__vsleaf0__phys , 0x0000000044ebb000
.equ hart_context__vslevel3__gpa        , 0x00000000431e8000
.equ hart_context__vslevel3__phys       , 0x00000000431e8000
.equ hart_context__vslevel2__gpa        , 0x0000000042960000
.equ hart_context__vslevel2__phys       , 0x0000000042960000
.equ hart_context__vslevel1__gpa        , 0x0000000041f91000
.equ hart_context__vslevel1__phys       , 0x0000000041f91000
.equ hart_context__vsleaf0__gpa         , 0x000000004500a000
.equ hart_context__vsleaf0__phys        , 0x000000004500a000
.equ hart_stack_0__vslevel3__gpa        , 0x00000000434fa000
.equ hart_stack_0__vslevel3__phys       , 0x00000000434fa000
.equ hart_stack_0__vslevel2__gpa        , 0x0000000044f2e000
.equ hart_stack_0__vslevel2__phys       , 0x0000000044f2e000
.equ hart_stack_0__vslevel1__gpa        , 0x0000000044f44000
.equ hart_stack_0__vslevel1__phys       , 0x0000000044f44000
.equ hart_stack_0__vsleaf0__gpa         , 0x0000000044eb9000
.equ hart_stack_0__vsleaf0__phys        , 0x0000000044eb9000
.equ io_htif__vsleaf0__gpa              , 0x0000000041040000
.equ io_htif__vsleaf0__phys             , 0x0000000041040000
.equ map_os_sptbr_lin__vslevel1__gpa    , 0x0000000043518000
.equ map_os_sptbr_lin__vslevel1__phys   , 0x0000000043518000
.equ map_os_sptbr_lin__vsleaf0__gpa     , 0x0000000045028000
.equ map_os_sptbr_lin__vsleaf0__phys    , 0x0000000045028000
.equ map_hyp_sptbr_lin__vslevel1__gpa   , 0x00000000431f9000
.equ map_hyp_sptbr_lin__vslevel1__phys  , 0x00000000431f9000
.equ map_hyp_sptbr_lin__vsleaf0__gpa    , 0x0000000043200000
.equ map_hyp_sptbr_lin__vsleaf0__phys   , 0x0000000043200000
.equ mem0__vslevel2__gpa                , 0x000000004500d000
.equ mem0__vslevel2__phys               , 0x000000004500d000
.equ mem0__vslevel1__gpa                , 0x000000004340a000
.equ mem0__vslevel1__phys               , 0x000000004340a000
.equ mem0__vsleaf0__gpa                 , 0x000000004428c000
.equ mem0__vsleaf0__phys                , 0x000000004428c000
.equ mem1__vslevel1__gpa                , 0x0000000044fa8000
.equ mem1__vslevel1__phys               , 0x0000000044fa8000
.equ mem1__vsleaf0__gpa                 , 0x0000000044fc8000
.equ mem1__vsleaf0__phys                , 0x0000000044fc8000
.equ mem2__vsleaf0__gpa                 , 0x000000004503e000
.equ mem2__vsleaf0__phys                , 0x000000004503e000
.equ mem3__vslevel3__gpa                , 0x0000000041e5c000
.equ mem3__vslevel3__phys               , 0x0000000041e5c000
.equ mem3__vslevel2__gpa                , 0x0000000041afb000
.equ mem3__vslevel2__phys               , 0x0000000041afb000
.equ mem3__vslevel1__gpa                , 0x00000000417f5000
.equ mem3__vslevel1__phys               , 0x00000000417f5000
.equ mem3__vsleaf0__gpa                 , 0x0000000045007000
.equ mem3__vsleaf0__phys                , 0x0000000045007000
.equ mem4__vslevel2__gpa                , 0x0000000041a9f000
.equ mem4__vslevel2__phys               , 0x0000000041a9f000
.equ mem4__vslevel1__gpa                , 0x0000000043437000
.equ mem4__vslevel1__phys               , 0x0000000043437000
.equ mem4__vsleaf0__gpa                 , 0x000000004503f000
.equ mem4__vsleaf0__phys                , 0x000000004503f000
.equ mem5__vsleaf0__gpa                 , 0x0000000043d56000
.equ mem5__vsleaf0__phys                , 0x0000000043d56000
.equ mem6__vslevel2__gpa                , 0x0000000043800000
.equ mem6__vslevel2__phys               , 0x0000000043800000
.equ mem6__vslevel1__gpa                , 0x0000000042000000
.equ mem6__vslevel1__phys               , 0x0000000042000000
.equ mem6__vsleaf0__gpa                 , 0x000000004347f000
.equ mem6__vsleaf0__phys                , 0x000000004347f000
.equ mem7__vsleaf0__gpa                 , 0x0000000041c1f000
.equ mem7__vsleaf0__phys                , 0x0000000041c1f000
.equ tp_csr_storage__vsleaf0__gpa       , 0x0000000043519000
.equ tp_csr_storage__vsleaf0__phys      , 0x0000000043519000
.equ SID_HEXCEP_05_stack__vsleaf0__gpa  , 0x000000004502c000
.equ SID_HEXCEP_05_stack__vsleaf0__phys , 0x000000004502c000
.equ SID_HEXCEP_07_vs_mode_stack__vslevel2__gpa, 0x00000000434e8000
.equ SID_HEXCEP_07_vs_mode_stack__vslevel2__phys, 0x00000000434e8000
.equ SID_HEXCEP_07_vs_mode_stack__vslevel1__gpa, 0x0000000043408000
.equ SID_HEXCEP_07_vs_mode_stack__vslevel1__phys, 0x0000000043408000
.equ SID_HEXCEP_07_vs_mode_stack__vsleaf0__gpa, 0x0000000045033000
.equ SID_HEXCEP_07_vs_mode_stack__vsleaf0__phys, 0x0000000045033000
.equ SID_HEXCEP_08_stack__vslevel3__gpa , 0x00000000434e4000
.equ SID_HEXCEP_08_stack__vslevel3__phys, 0x00000000434e4000
.equ SID_HEXCEP_08_stack__vslevel2__gpa , 0x0000000042422000
.equ SID_HEXCEP_08_stack__vslevel2__phys, 0x0000000042422000
.equ SID_HEXCEP_08_stack__vslevel1__gpa , 0x00000000434f3000
.equ SID_HEXCEP_08_stack__vslevel1__phys, 0x00000000434f3000
.equ SID_HEXCEP_08_stack__vsleaf0__gpa  , 0x0000000045040000
.equ SID_HEXCEP_08_stack__vsleaf0__phys , 0x0000000045040000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vslevel3__gpa, 0x000000004500c000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vslevel3__phys, 0x000000004500c000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vslevel2__gpa, 0x0000000043409000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vslevel2__phys, 0x0000000043409000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vslevel1__gpa, 0x0000000044ebd000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vslevel1__phys, 0x0000000044ebd000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vsleaf0__gpa, 0x000000004500b000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack__vsleaf0__phys, 0x000000004500b000
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack__vslevel1__gpa, 0x000000004428b000
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack__vslevel1__phys, 0x000000004428b000
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack__vsleaf0__gpa, 0x0000000045027000
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack__vsleaf0__phys, 0x0000000045027000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack__vslevel2__gpa, 0x0000000042c00000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack__vslevel2__phys, 0x0000000042c00000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack__vslevel1__gpa, 0x0000000041400000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack__vslevel1__phys, 0x0000000041400000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack__vsleaf0__gpa, 0x0000000041c20000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack__vsleaf0__phys, 0x0000000041c20000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack__vslevel2__gpa, 0x0000000043071000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack__vslevel2__phys, 0x0000000043071000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack__vslevel1__gpa, 0x0000000044fec000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack__vslevel1__phys, 0x0000000044fec000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack__vsleaf0__gpa, 0x000000004341f000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack__vsleaf0__phys, 0x000000004341f000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack__vslevel2__gpa, 0x0000000043a00000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack__vslevel2__phys, 0x0000000043a00000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack__vslevel1__gpa, 0x0000000042600000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack__vslevel1__phys, 0x0000000042600000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack__vsleaf0__gpa, 0x000000004502f000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack__vsleaf0__phys, 0x000000004502f000
.equ SID_HEXCEP_09_hinval_gvma_vs_stack__vslevel1__gpa, 0x0000000044263000
.equ SID_HEXCEP_09_hinval_gvma_vs_stack__vslevel1__phys, 0x0000000044263000
.equ SID_HEXCEP_09_hinval_gvma_vs_stack__vsleaf0__gpa, 0x000000004502d000
.equ SID_HEXCEP_09_hinval_gvma_vs_stack__vsleaf0__phys, 0x000000004502d000
.equ SID_HEXCEP_10_stack__vslevel2__gpa , 0x0000000044800000
.equ SID_HEXCEP_10_stack__vslevel2__phys, 0x0000000044800000
.equ SID_HEXCEP_10_stack__vslevel1__gpa , 0x0000000044a00000
.equ SID_HEXCEP_10_stack__vslevel1__phys, 0x0000000044a00000
.equ SID_HEXCEP_10_stack__vsleaf0__gpa  , 0x0000000044f21000
.equ SID_HEXCEP_10_stack__vsleaf0__phys , 0x0000000044f21000
.equ SID_HEXCEP_11_stack__vslevel3__gpa , 0x0000000043179000
.equ SID_HEXCEP_11_stack__vslevel3__phys, 0x0000000043179000
.equ SID_HEXCEP_11_stack__vslevel2__gpa , 0x0000000045008000
.equ SID_HEXCEP_11_stack__vslevel2__phys, 0x0000000045008000
.equ SID_HEXCEP_11_stack__vslevel1__gpa , 0x00000000430b1000
.equ SID_HEXCEP_11_stack__vslevel1__phys, 0x00000000430b1000
.equ SID_HEXCEP_11_stack__vsleaf0__gpa  , 0x0000000045035000
.equ SID_HEXCEP_11_stack__vsleaf0__phys , 0x0000000045035000
.equ SID_HEXCEP_16_fs0_both_stack__vslevel3__gpa, 0x0000000043442000
.equ SID_HEXCEP_16_fs0_both_stack__vslevel3__phys, 0x0000000043442000
.equ SID_HEXCEP_16_fs0_both_stack__vslevel2__gpa, 0x0000000044238000
.equ SID_HEXCEP_16_fs0_both_stack__vslevel2__phys, 0x0000000044238000
.equ SID_HEXCEP_16_fs0_both_stack__vslevel1__gpa, 0x0000000043480000
.equ SID_HEXCEP_16_fs0_both_stack__vslevel1__phys, 0x0000000043480000
.equ SID_HEXCEP_16_fs0_both_stack__vsleaf0__gpa, 0x0000000044202000
.equ SID_HEXCEP_16_fs0_both_stack__vsleaf0__phys, 0x0000000044202000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vslevel3__gpa, 0x0000000043404000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vslevel3__phys, 0x0000000043404000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vslevel2__gpa, 0x0000000043072000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vslevel2__phys, 0x0000000043072000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vslevel1__gpa, 0x00000000431fc000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vslevel1__phys, 0x00000000431fc000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vsleaf0__gpa, 0x0000000043403000
.equ SID_HEXCEP_16_vsstatus_fs0_stack__vsleaf0__phys, 0x0000000043403000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vslevel3__gpa, 0x00000000431fd000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vslevel3__phys, 0x00000000431fd000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vslevel2__gpa, 0x000000004350e000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vslevel2__phys, 0x000000004350e000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vslevel1__gpa, 0x000000004350f000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vslevel1__phys, 0x000000004350f000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vsleaf0__gpa, 0x000000004425b000
.equ SID_HEXCEP_16_sstatus_fs0_stack__vsleaf0__phys, 0x000000004425b000
.equ SID_HEXCEP_17_vs0_both_stack__vslevel1__gpa, 0x0000000041c5b000
.equ SID_HEXCEP_17_vs0_both_stack__vslevel1__phys, 0x0000000041c5b000
.equ SID_HEXCEP_17_vs0_both_stack__vsleaf0__gpa, 0x00000000434de000
.equ SID_HEXCEP_17_vs0_both_stack__vsleaf0__phys, 0x00000000434de000
.equ SID_HEXCEP_17_vsstatus_vs0_stack__vslevel2__gpa, 0x0000000044400000
.equ SID_HEXCEP_17_vsstatus_vs0_stack__vslevel2__phys, 0x0000000044400000
.equ SID_HEXCEP_17_vsstatus_vs0_stack__vslevel1__gpa, 0x0000000044c00000
.equ SID_HEXCEP_17_vsstatus_vs0_stack__vslevel1__phys, 0x0000000044c00000
.equ SID_HEXCEP_17_vsstatus_vs0_stack__vsleaf0__gpa, 0x0000000044f73000
.equ SID_HEXCEP_17_vsstatus_vs0_stack__vsleaf0__phys, 0x0000000044f73000
.equ SID_HEXCEP_17_sstatus_vs0_stack__vslevel1__gpa, 0x000000004346d000
.equ SID_HEXCEP_17_sstatus_vs0_stack__vslevel1__phys, 0x000000004346d000
.equ SID_HEXCEP_17_sstatus_vs0_stack__vsleaf0__gpa, 0x0000000043f14000
.equ SID_HEXCEP_17_sstatus_vs0_stack__vsleaf0__phys, 0x0000000043f14000
.equ SID_HEXCEP_19_misaligned_amo_stack__vslevel3__gpa, 0x000000004503d000
.equ SID_HEXCEP_19_misaligned_amo_stack__vslevel3__phys, 0x000000004503d000
.equ SID_HEXCEP_19_misaligned_amo_stack__vslevel2__gpa, 0x00000000431fe000
.equ SID_HEXCEP_19_misaligned_amo_stack__vslevel2__phys, 0x00000000431fe000
.equ SID_HEXCEP_19_misaligned_amo_stack__vslevel1__gpa, 0x00000000434ce000
.equ SID_HEXCEP_19_misaligned_amo_stack__vslevel1__phys, 0x00000000434ce000
.equ SID_HEXCEP_19_misaligned_amo_stack__vsleaf0__gpa, 0x0000000043402000
.equ SID_HEXCEP_19_misaligned_amo_stack__vsleaf0__phys, 0x0000000043402000
.equ SID_HEXCEP_19_misaligned_lr_stack__vsleaf0__gpa, 0x00000000418b1000
.equ SID_HEXCEP_19_misaligned_lr_stack__vsleaf0__phys, 0x00000000418b1000
.equ SID_HEXCEP_19_misaligned_sc_stack__vsleaf0__gpa, 0x0000000043485000
.equ SID_HEXCEP_19_misaligned_sc_stack__vsleaf0__phys, 0x0000000043485000
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack__vslevel1__gpa, 0x0000000043472000
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack__vslevel1__phys, 0x0000000043472000
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack__vsleaf0__gpa, 0x0000000042423000
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack__vsleaf0__phys, 0x0000000042423000
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack__vslevel1__gpa, 0x0000000044000000
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack__vslevel1__phys, 0x0000000044000000
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack__vsleaf0__gpa, 0x000000004344a000
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack__vsleaf0__phys, 0x000000004344a000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack__vslevel2__gpa, 0x0000000041fae000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack__vslevel2__phys, 0x0000000041fae000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack__vslevel1__gpa, 0x000000004344b000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack__vslevel1__phys, 0x000000004344b000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack__vsleaf0__gpa, 0x0000000043451000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack__vsleaf0__phys, 0x0000000043451000

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
.equ code_pa                            , 0x0000000042e00000
.equ code_super_0_pa                    , 0x0000000042e80000
.equ code_super_1_pa                    , 0x0000000042e81000
.equ code_super_2_pa                    , 0x0000000042e82000
.equ code_super_3_pa                    , 0x0000000042e83000
.equ code_super_4_pa                    , 0x0000000042e84000
.equ code_super_5_pa                    , 0x0000000042e85000
.equ code_super_6_pa                    , 0x0000000042e86000
.equ code_super_7_pa                    , 0x0000000042e87000
.equ code_super_8_pa                    , 0x0000000042e88000
.equ code_super_9_pa                    , 0x0000000042e89000
.equ code_super_10_pa                   , 0x0000000042e8a000
.equ code_super_11_pa                   , 0x0000000042e8b000
.equ code_super_12_pa                   , 0x0000000042e8c000
.equ code_super_13_pa                   , 0x0000000042e8d000
.equ code_super_14_pa                   , 0x0000000042e8e000
.equ code_super_15_pa                   , 0x0000000042e8f000
.equ code_super_16_pa                   , 0x0000000042e90000
.equ code_super_17_pa                   , 0x0000000042e91000
.equ code_super_18_pa                   , 0x0000000042e92000
.equ code_super_19_pa                   , 0x0000000042e93000
.equ code_super_20_pa                   , 0x0000000042e94000
.equ code_super_21_pa                   , 0x0000000042e95000
.equ code_super_22_pa                   , 0x0000000042e96000
.equ code_super_23_pa                   , 0x0000000042e97000
.equ code_super_24_pa                   , 0x0000000042e98000
.equ code_super_25_pa                   , 0x0000000042e99000
.equ code_super_26_pa                   , 0x0000000042e9a000
.equ code_super_27_pa                   , 0x0000000042e9b000
.equ code_super_28_pa                   , 0x0000000042e9c000
.equ code_super_29_pa                   , 0x0000000042e9d000
.equ code_super_30_pa                   , 0x0000000042e9e000
.equ code_super_31_pa                   , 0x0000000042e9f000
.equ code_super_32_pa                   , 0x0000000042ea0000
.equ code_super_33_pa                   , 0x0000000042ea1000
.equ code_super_34_pa                   , 0x0000000042ea2000
.equ code_super_35_pa                   , 0x0000000042ea3000
.equ code_super_36_pa                   , 0x0000000042ea4000
.equ code_super_37_pa                   , 0x0000000042ea5000
.equ code_super_38_pa                   , 0x0000000042ea6000
.equ code_super_39_pa                   , 0x0000000042ea7000
.equ code_super_40_pa                   , 0x0000000042ea8000
.equ code_super_41_pa                   , 0x0000000042ea9000
.equ code_super_42_pa                   , 0x0000000042eaa000
.equ code_super_43_pa                   , 0x0000000042eab000
.equ code_super_44_pa                   , 0x0000000042eac000
.equ code_super_45_pa                   , 0x0000000042ead000
.equ code_super_46_pa                   , 0x0000000042eae000
.equ code_super_47_pa                   , 0x0000000042eaf000
.equ code_super_48_pa                   , 0x0000000042eb0000
.equ code_super_49_pa                   , 0x0000000042eb1000
.equ code_super_50_pa                   , 0x0000000042eb2000
.equ code_super_51_pa                   , 0x0000000042eb3000
.equ code_super_52_pa                   , 0x0000000042eb4000
.equ code_super_53_pa                   , 0x0000000042eb5000
.equ code_super_54_pa                   , 0x0000000042eb6000
.equ code_super_55_pa                   , 0x0000000042eb7000
.equ code_super_56_pa                   , 0x0000000042eb8000
.equ code_super_57_pa                   , 0x0000000042eb9000
.equ code_super_58_pa                   , 0x0000000042eba000
.equ code_super_59_pa                   , 0x0000000042ebb000
.equ code_super_60_pa                   , 0x0000000042ebc000
.equ code_super_61_pa                   , 0x0000000042ebd000
.equ code_super_62_pa                   , 0x0000000042ebe000
.equ code_super_63_pa                   , 0x0000000042ebf000
.equ code_super_64_pa                   , 0x0000000042ec0000
.equ code_super_65_pa                   , 0x0000000042ec1000
.equ code_super_66_pa                   , 0x0000000042ec2000
.equ code_super_67_pa                   , 0x0000000042ec3000
.equ code_super_68_pa                   , 0x0000000042ec4000
.equ code_super_69_pa                   , 0x0000000042ec5000
.equ code_super_70_pa                   , 0x0000000042ec6000
.equ code_super_71_pa                   , 0x0000000042ec7000
.equ code_super_72_pa                   , 0x0000000042ec8000
.equ code_super_73_pa                   , 0x0000000042ec9000
.equ code_super_74_pa                   , 0x0000000042eca000
.equ code_super_75_pa                   , 0x0000000042ecb000
.equ code_super_76_pa                   , 0x0000000042ecc000
.equ code_super_77_pa                   , 0x0000000042ecd000
.equ code_super_78_pa                   , 0x0000000042ece000
.equ code_super_79_pa                   , 0x0000000042ecf000
.equ code_super_80_pa                   , 0x0000000042ed0000
.equ code_super_81_pa                   , 0x0000000042ed1000
.equ code_super_82_pa                   , 0x0000000042ed2000
.equ code_super_83_pa                   , 0x0000000042ed3000
.equ code_super_84_pa                   , 0x0000000042ed4000
.equ code_super_85_pa                   , 0x0000000042ed5000
.equ code_super_86_pa                   , 0x0000000042ed6000
.equ code_super_87_pa                   , 0x0000000042ed7000
.equ code_super_88_pa                   , 0x0000000042ed8000
.equ code_super_89_pa                   , 0x0000000042ed9000
.equ code_super_90_pa                   , 0x0000000042eda000
.equ code_super_91_pa                   , 0x0000000042edb000
.equ code_super_92_pa                   , 0x0000000042edc000
.equ code_super_93_pa                   , 0x0000000042edd000
.equ code_super_94_pa                   , 0x0000000042ede000
.equ code_super_95_pa                   , 0x0000000042edf000
.equ code_super_96_pa                   , 0x0000000042ee0000
.equ code_super_97_pa                   , 0x0000000042ee1000
.equ code_super_98_pa                   , 0x0000000042ee2000
.equ code_super_99_pa                   , 0x0000000042ee3000
.equ code_super_100_pa                  , 0x0000000042ee4000
.equ code_super_101_pa                  , 0x0000000042ee5000
.equ code_super_102_pa                  , 0x0000000042ee6000
.equ code_super_103_pa                  , 0x0000000042ee7000
.equ code_super_104_pa                  , 0x0000000042ee8000
.equ code_super_105_pa                  , 0x0000000042ee9000
.equ code_super_106_pa                  , 0x0000000042eea000
.equ code_super_107_pa                  , 0x0000000042eeb000
.equ code_super_108_pa                  , 0x0000000042eec000
.equ code_super_109_pa                  , 0x0000000042eed000
.equ code_super_110_pa                  , 0x0000000042eee000
.equ code_super_111_pa                  , 0x0000000042eef000
.equ code_super_112_pa                  , 0x0000000042ef0000
.equ code_super_113_pa                  , 0x0000000042ef1000
.equ code_super_114_pa                  , 0x0000000042ef2000
.equ code_super_115_pa                  , 0x0000000042ef3000
.equ code_super_116_pa                  , 0x0000000042ef4000
.equ code_super_117_pa                  , 0x0000000042ef5000
.equ code_super_118_pa                  , 0x0000000042ef6000
.equ code_super_119_pa                  , 0x0000000042ef7000
.equ code_super_120_pa                  , 0x0000000042ef8000
.equ code_super_121_pa                  , 0x0000000042ef9000
.equ code_super_122_pa                  , 0x0000000042efa000
.equ code_super_123_pa                  , 0x0000000042efb000
.equ code_super_124_pa                  , 0x0000000042efc000
.equ code_super_125_pa                  , 0x0000000042efd000
.equ code_super_126_pa                  , 0x0000000042efe000
.equ code_super_127_pa                  , 0x0000000042eff000
.equ code_user_0_pa                     , 0x0000000042f00000
.equ code_user_1_pa                     , 0x0000000042f01000
.equ code_user_2_pa                     , 0x0000000042f02000
.equ code_user_3_pa                     , 0x0000000042f03000
.equ code_user_4_pa                     , 0x0000000042f04000
.equ code_user_5_pa                     , 0x0000000042f05000
.equ code_user_6_pa                     , 0x0000000042f06000
.equ code_user_7_pa                     , 0x0000000042f07000
.equ code_user_8_pa                     , 0x0000000042f08000
.equ code_user_9_pa                     , 0x0000000042f09000
.equ code_user_10_pa                    , 0x0000000042f0a000
.equ code_user_11_pa                    , 0x0000000042f0b000
.equ code_user_12_pa                    , 0x0000000042f0c000
.equ code_user_13_pa                    , 0x0000000042f0d000
.equ code_user_14_pa                    , 0x0000000042f0e000
.equ code_user_15_pa                    , 0x0000000042f0f000
.equ code_user_16_pa                    , 0x0000000042f10000
.equ code_user_17_pa                    , 0x0000000042f11000
.equ code_user_18_pa                    , 0x0000000042f12000
.equ code_user_19_pa                    , 0x0000000042f13000
.equ code_user_20_pa                    , 0x0000000042f14000
.equ code_user_21_pa                    , 0x0000000042f15000
.equ code_user_22_pa                    , 0x0000000042f16000
.equ code_user_23_pa                    , 0x0000000042f17000
.equ code_user_24_pa                    , 0x0000000042f18000
.equ code_user_25_pa                    , 0x0000000042f19000
.equ code_user_26_pa                    , 0x0000000042f1a000
.equ code_user_27_pa                    , 0x0000000042f1b000
.equ code_user_28_pa                    , 0x0000000042f1c000
.equ code_user_29_pa                    , 0x0000000042f1d000
.equ code_user_30_pa                    , 0x0000000042f1e000
.equ code_user_31_pa                    , 0x0000000042f1f000
.equ code_user_32_pa                    , 0x0000000042f20000
.equ code_user_33_pa                    , 0x0000000042f21000
.equ code_user_34_pa                    , 0x0000000042f22000
.equ code_user_35_pa                    , 0x0000000042f23000
.equ code_user_36_pa                    , 0x0000000042f24000
.equ code_user_37_pa                    , 0x0000000042f25000
.equ code_user_38_pa                    , 0x0000000042f26000
.equ code_user_39_pa                    , 0x0000000042f27000
.equ code_user_40_pa                    , 0x0000000042f28000
.equ code_user_41_pa                    , 0x0000000042f29000
.equ code_user_42_pa                    , 0x0000000042f2a000
.equ code_user_43_pa                    , 0x0000000042f2b000
.equ code_user_44_pa                    , 0x0000000042f2c000
.equ code_user_45_pa                    , 0x0000000042f2d000
.equ code_user_46_pa                    , 0x0000000042f2e000
.equ code_user_47_pa                    , 0x0000000042f2f000
.equ code_user_48_pa                    , 0x0000000042f30000
.equ code_user_49_pa                    , 0x0000000042f31000
.equ code_user_50_pa                    , 0x0000000042f32000
.equ code_user_51_pa                    , 0x0000000042f33000
.equ code_user_52_pa                    , 0x0000000042f34000
.equ code_user_53_pa                    , 0x0000000042f35000
.equ code_user_54_pa                    , 0x0000000042f36000
.equ code_user_55_pa                    , 0x0000000042f37000
.equ code_user_56_pa                    , 0x0000000042f38000
.equ code_user_57_pa                    , 0x0000000042f39000
.equ code_user_58_pa                    , 0x0000000042f3a000
.equ code_user_59_pa                    , 0x0000000042f3b000
.equ code_user_60_pa                    , 0x0000000042f3c000
.equ code_user_61_pa                    , 0x0000000042f3d000
.equ code_user_62_pa                    , 0x0000000042f3e000
.equ code_user_63_pa                    , 0x0000000042f3f000
.equ code_user_64_pa                    , 0x0000000042f40000
.equ code_user_65_pa                    , 0x0000000042f41000
.equ code_user_66_pa                    , 0x0000000042f42000
.equ code_user_67_pa                    , 0x0000000042f43000
.equ code_user_68_pa                    , 0x0000000042f44000
.equ code_user_69_pa                    , 0x0000000042f45000
.equ code_user_70_pa                    , 0x0000000042f46000
.equ code_user_71_pa                    , 0x0000000042f47000
.equ code_user_72_pa                    , 0x0000000042f48000
.equ code_user_73_pa                    , 0x0000000042f49000
.equ code_user_74_pa                    , 0x0000000042f4a000
.equ code_user_75_pa                    , 0x0000000042f4b000
.equ code_user_76_pa                    , 0x0000000042f4c000
.equ code_user_77_pa                    , 0x0000000042f4d000
.equ code_user_78_pa                    , 0x0000000042f4e000
.equ code_user_79_pa                    , 0x0000000042f4f000
.equ code_user_80_pa                    , 0x0000000042f50000
.equ code_user_81_pa                    , 0x0000000042f51000
.equ code_user_82_pa                    , 0x0000000042f52000
.equ code_user_83_pa                    , 0x0000000042f53000
.equ code_user_84_pa                    , 0x0000000042f54000
.equ code_user_85_pa                    , 0x0000000042f55000
.equ code_user_86_pa                    , 0x0000000042f56000
.equ code_user_87_pa                    , 0x0000000042f57000
.equ code_user_88_pa                    , 0x0000000042f58000
.equ code_user_89_pa                    , 0x0000000042f59000
.equ code_user_90_pa                    , 0x0000000042f5a000
.equ code_user_91_pa                    , 0x0000000042f5b000
.equ code_user_92_pa                    , 0x0000000042f5c000
.equ code_user_93_pa                    , 0x0000000042f5d000
.equ code_user_94_pa                    , 0x0000000042f5e000
.equ code_user_95_pa                    , 0x0000000042f5f000
.equ code_user_96_pa                    , 0x0000000042f60000
.equ code_user_97_pa                    , 0x0000000042f61000
.equ code_user_98_pa                    , 0x0000000042f62000
.equ code_user_99_pa                    , 0x0000000042f63000
.equ code_user_100_pa                   , 0x0000000042f64000
.equ code_user_101_pa                   , 0x0000000042f65000
.equ code_user_102_pa                   , 0x0000000042f66000
.equ code_user_103_pa                   , 0x0000000042f67000
.equ code_user_104_pa                   , 0x0000000042f68000
.equ code_user_105_pa                   , 0x0000000042f69000
.equ code_user_106_pa                   , 0x0000000042f6a000
.equ code_user_107_pa                   , 0x0000000042f6b000
.equ code_user_108_pa                   , 0x0000000042f6c000
.equ code_user_109_pa                   , 0x0000000042f6d000
.equ code_user_110_pa                   , 0x0000000042f6e000
.equ code_user_111_pa                   , 0x0000000042f6f000
.equ code_user_112_pa                   , 0x0000000042f70000
.equ code_user_113_pa                   , 0x0000000042f71000
.equ code_user_114_pa                   , 0x0000000042f72000
.equ code_user_115_pa                   , 0x0000000042f73000
.equ code_user_116_pa                   , 0x0000000042f74000
.equ code_user_117_pa                   , 0x0000000042f75000
.equ code_user_118_pa                   , 0x0000000042f76000
.equ code_user_119_pa                   , 0x0000000042f77000
.equ code_user_120_pa                   , 0x0000000042f78000
.equ code_user_121_pa                   , 0x0000000042f79000
.equ code_user_122_pa                   , 0x0000000042f7a000
.equ code_user_123_pa                   , 0x0000000042f7b000
.equ code_user_124_pa                   , 0x0000000042f7c000
.equ code_user_125_pa                   , 0x0000000042f7d000
.equ code_user_126_pa                   , 0x0000000042f7e000
.equ code_user_127_pa                   , 0x0000000042f7f000
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
.equ csr_super_0_pa                     , 0x0000000043001000
.equ data_pa                            , 0x000000004355c000
.equ os_data_pa                         , 0x0000000044eba000
.equ hart_context_pa                    , 0x000000004500a000
.equ hart_stack_0_pa                    , 0x0000000044eb9000
.equ io_htif_pa                         , 0x0000000041040000
.equ mem0_pa                            , 0x000000004428c000
.equ mem1_pa                            , 0x0000000044fc8000
.equ mem2_pa                            , 0x000000004503e000
.equ mem3_pa                            , 0x0000000045007000
.equ mem4_pa                            , 0x000000004503f000
.equ mem5_pa                            , 0x0000000043d56000
.equ mem6_pa                            , 0x000000004347f000
.equ mem7_pa                            , 0x0000000041c1f000
.equ tp_csr_storage_pa                  , 0x0000000043519000
.equ SID_HEXCEP_05_stack_pa             , 0x000000004502c000
.equ SID_HEXCEP_07_vs_mode_stack_pa     , 0x0000000045033000
.equ SID_HEXCEP_08_stack_pa             , 0x0000000045040000
.equ SID_HEXCEP_09_mret_in_vs_vu_stack_pa, 0x000000004500b000
.equ SID_HEXCEP_09_sret_vtsr1_vs_stack_pa, 0x0000000045027000
.equ SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_pa, 0x0000000041c20000
.equ SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_pa, 0x000000004341f000
.equ SID_HEXCEP_09_hinval_vvma_vs_stack_pa, 0x000000004502f000
.equ SID_HEXCEP_09_hinval_gvma_vs_stack_pa, 0x000000004502d000
.equ SID_HEXCEP_10_stack_pa             , 0x0000000044f21000
.equ SID_HEXCEP_11_stack_pa             , 0x0000000045035000
.equ SID_HEXCEP_16_fs0_both_stack_pa    , 0x0000000044202000
.equ SID_HEXCEP_16_vsstatus_fs0_stack_pa, 0x0000000043403000
.equ SID_HEXCEP_16_sstatus_fs0_stack_pa , 0x000000004425b000
.equ SID_HEXCEP_17_vs0_both_stack_pa    , 0x00000000434de000
.equ SID_HEXCEP_17_vsstatus_vs0_stack_pa, 0x0000000044f73000
.equ SID_HEXCEP_17_sstatus_vs0_stack_pa , 0x0000000043f14000
.equ SID_HEXCEP_19_misaligned_amo_stack_pa, 0x0000000043402000
.equ SID_HEXCEP_19_misaligned_lr_stack_pa, 0x00000000418b1000
.equ SID_HEXCEP_19_misaligned_sc_stack_pa, 0x0000000043485000
.equ SID_HEXCEP_19_misaligned_amo_delegated_stack_pa, 0x0000000042423000
.equ SID_HEXCEP_19_misaligned_lr_delegated_stack_pa, 0x000000004344a000
.equ SID_HEXCEP_19_misaligned_sc_delegated_stack_pa, 0x0000000043451000

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
