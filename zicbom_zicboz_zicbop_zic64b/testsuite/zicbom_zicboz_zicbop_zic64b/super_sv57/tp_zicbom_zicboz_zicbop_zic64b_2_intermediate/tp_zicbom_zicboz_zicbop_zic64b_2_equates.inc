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
.equ PAGING_MODE_SV48                   , 0
.equ PAGING_MODE_SV57                   , 1
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
.equ code                               , 0x0000000041014020
.equ __section_code                     , 0x0000000041c00000
.equ __section__code_1                  , 0x0000000041015000
.equ __section__code_1_phys             , 0x0000000041c01000
.equ __section__code_2                  , 0x0000000041016000
.equ __section__code_2_phys             , 0x0000000041c02000
.equ __section__code_3                  , 0x0000000041017000
.equ __section__code_3_phys             , 0x0000000041c03000
.equ __section__code_4                  , 0x0000000041018000
.equ __section__code_4_phys             , 0x0000000041c04000
.equ __section__code_5                  , 0x0000000041019000
.equ __section__code_5_phys             , 0x0000000041c05000
.equ __section__code_6                  , 0x000000004101a000
.equ __section__code_6_phys             , 0x0000000041c06000
.equ __section__code_7                  , 0x000000004101b000
.equ __section__code_7_phys             , 0x0000000041c07000
.equ __section__code_8                  , 0x000000004101c000
.equ __section__code_8_phys             , 0x0000000041c08000
.equ __section__code_9                  , 0x000000004101d000
.equ __section__code_9_phys             , 0x0000000041c09000
.equ __section__code_10                 , 0x000000004101e000
.equ __section__code_10_phys            , 0x0000000041c0a000
.equ __section__code_11                 , 0x000000004101f000
.equ __section__code_11_phys            , 0x0000000041c0b000
.equ __section__code_12                 , 0x0000000041020000
.equ __section__code_12_phys            , 0x0000000041c0c000
.equ __section__code_13                 , 0x0000000041021000
.equ __section__code_13_phys            , 0x0000000041c0d000
.equ __section__code_14                 , 0x0000000041022000
.equ __section__code_14_phys            , 0x0000000041c0e000
.equ __section__code_15                 , 0x0000000041023000
.equ __section__code_15_phys            , 0x0000000041c0f000
.equ __section__code_16                 , 0x0000000041024000
.equ __section__code_16_phys            , 0x0000000041c10000
.equ __section__code_17                 , 0x0000000041025000
.equ __section__code_17_phys            , 0x0000000041c11000
.equ __section__code_18                 , 0x0000000041026000
.equ __section__code_18_phys            , 0x0000000041c12000
.equ __section__code_19                 , 0x0000000041027000
.equ __section__code_19_phys            , 0x0000000041c13000
.equ __section__code_20                 , 0x0000000041028000
.equ __section__code_20_phys            , 0x0000000041c14000
.equ __section__code_21                 , 0x0000000041029000
.equ __section__code_21_phys            , 0x0000000041c15000
.equ __section__code_22                 , 0x000000004102a000
.equ __section__code_22_phys            , 0x0000000041c16000
.equ __section__code_23                 , 0x000000004102b000
.equ __section__code_23_phys            , 0x0000000041c17000
.equ __section__code_24                 , 0x000000004102c000
.equ __section__code_24_phys            , 0x0000000041c18000
.equ __section__code_25                 , 0x000000004102d000
.equ __section__code_25_phys            , 0x0000000041c19000
.equ __section__code_26                 , 0x000000004102e000
.equ __section__code_26_phys            , 0x0000000041c1a000
.equ __section__code_27                 , 0x000000004102f000
.equ __section__code_27_phys            , 0x0000000041c1b000
.equ __section__code_28                 , 0x0000000041030000
.equ __section__code_28_phys            , 0x0000000041c1c000
.equ __section__code_29                 , 0x0000000041031000
.equ __section__code_29_phys            , 0x0000000041c1d000
.equ __section__code_30                 , 0x0000000041032000
.equ __section__code_30_phys            , 0x0000000041c1e000
.equ __section__code_31                 , 0x0000000041033000
.equ __section__code_31_phys            , 0x0000000041c1f000
.equ __section__code_32                 , 0x0000000041034000
.equ __section__code_32_phys            , 0x0000000041c20000
.equ __section__code_33                 , 0x0000000041035000
.equ __section__code_33_phys            , 0x0000000041c21000
.equ __section__code_34                 , 0x0000000041036000
.equ __section__code_34_phys            , 0x0000000041c22000
.equ __section__code_35                 , 0x0000000041037000
.equ __section__code_35_phys            , 0x0000000041c23000
.equ __section__code_36                 , 0x0000000041038000
.equ __section__code_36_phys            , 0x0000000041c24000
.equ __section__code_37                 , 0x0000000041039000
.equ __section__code_37_phys            , 0x0000000041c25000
.equ __section__code_38                 , 0x000000004103a000
.equ __section__code_38_phys            , 0x0000000041c26000
.equ __section__code_39                 , 0x000000004103b000
.equ __section__code_39_phys            , 0x0000000041c27000
.equ __section__code_40                 , 0x000000004103c000
.equ __section__code_40_phys            , 0x0000000041c28000
.equ __section__code_41                 , 0x000000004103d000
.equ __section__code_41_phys            , 0x0000000041c29000
.equ __section__code_42                 , 0x000000004103e000
.equ __section__code_42_phys            , 0x0000000041c2a000
.equ __section__code_43                 , 0x000000004103f000
.equ __section__code_43_phys            , 0x0000000041c2b000
.equ __section__code_44                 , 0x0000000041040000
.equ __section__code_44_phys            , 0x0000000041c2c000
.equ __section__code_45                 , 0x0000000041041000
.equ __section__code_45_phys            , 0x0000000041c2d000
.equ __section__code_46                 , 0x0000000041042000
.equ __section__code_46_phys            , 0x0000000041c2e000
.equ __section__code_47                 , 0x0000000041043000
.equ __section__code_47_phys            , 0x0000000041c2f000
.equ __section__code_48                 , 0x0000000041044000
.equ __section__code_48_phys            , 0x0000000041c30000
.equ __section__code_49                 , 0x0000000041045000
.equ __section__code_49_phys            , 0x0000000041c31000
.equ __section__code_50                 , 0x0000000041046000
.equ __section__code_50_phys            , 0x0000000041c32000
.equ __section__code_51                 , 0x0000000041047000
.equ __section__code_51_phys            , 0x0000000041c33000
.equ __section__code_52                 , 0x0000000041048000
.equ __section__code_52_phys            , 0x0000000041c34000
.equ __section__code_53                 , 0x0000000041049000
.equ __section__code_53_phys            , 0x0000000041c35000
.equ __section__code_54                 , 0x000000004104a000
.equ __section__code_54_phys            , 0x0000000041c36000
.equ __section__code_55                 , 0x000000004104b000
.equ __section__code_55_phys            , 0x0000000041c37000
.equ __section__code_56                 , 0x000000004104c000
.equ __section__code_56_phys            , 0x0000000041c38000
.equ __section__code_57                 , 0x000000004104d000
.equ __section__code_57_phys            , 0x0000000041c39000
.equ __section__code_58                 , 0x000000004104e000
.equ __section__code_58_phys            , 0x0000000041c3a000
.equ __section__code_59                 , 0x000000004104f000
.equ __section__code_59_phys            , 0x0000000041c3b000
.equ __section__code_60                 , 0x0000000041050000
.equ __section__code_60_phys            , 0x0000000041c3c000
.equ __section__code_61                 , 0x0000000041051000
.equ __section__code_61_phys            , 0x0000000041c3d000
.equ __section__code_62                 , 0x0000000041052000
.equ __section__code_62_phys            , 0x0000000041c3e000
.equ __section__code_63                 , 0x0000000041053000
.equ __section__code_63_phys            , 0x0000000041c3f000
.equ __section__code_64                 , 0x0000000041054000
.equ __section__code_64_phys            , 0x0000000041c40000
.equ __section__code_65                 , 0x0000000041055000
.equ __section__code_65_phys            , 0x0000000041c41000
.equ __section__code_66                 , 0x0000000041056000
.equ __section__code_66_phys            , 0x0000000041c42000
.equ __section__code_67                 , 0x0000000041057000
.equ __section__code_67_phys            , 0x0000000041c43000
.equ __section__code_68                 , 0x0000000041058000
.equ __section__code_68_phys            , 0x0000000041c44000
.equ __section__code_69                 , 0x0000000041059000
.equ __section__code_69_phys            , 0x0000000041c45000
.equ __section__code_70                 , 0x000000004105a000
.equ __section__code_70_phys            , 0x0000000041c46000
.equ __section__code_71                 , 0x000000004105b000
.equ __section__code_71_phys            , 0x0000000041c47000
.equ __section__code_72                 , 0x000000004105c000
.equ __section__code_72_phys            , 0x0000000041c48000
.equ __section__code_73                 , 0x000000004105d000
.equ __section__code_73_phys            , 0x0000000041c49000
.equ __section__code_74                 , 0x000000004105e000
.equ __section__code_74_phys            , 0x0000000041c4a000
.equ __section__code_75                 , 0x000000004105f000
.equ __section__code_75_phys            , 0x0000000041c4b000
.equ __section__code_76                 , 0x0000000041060000
.equ __section__code_76_phys            , 0x0000000041c4c000
.equ __section__code_77                 , 0x0000000041061000
.equ __section__code_77_phys            , 0x0000000041c4d000
.equ __section__code_78                 , 0x0000000041062000
.equ __section__code_78_phys            , 0x0000000041c4e000
.equ __section__code_79                 , 0x0000000041063000
.equ __section__code_79_phys            , 0x0000000041c4f000
.equ __section__code_80                 , 0x0000000041064000
.equ __section__code_80_phys            , 0x0000000041c50000
.equ __section__code_81                 , 0x0000000041065000
.equ __section__code_81_phys            , 0x0000000041c51000
.equ __section__code_82                 , 0x0000000041066000
.equ __section__code_82_phys            , 0x0000000041c52000
.equ __section__code_83                 , 0x0000000041067000
.equ __section__code_83_phys            , 0x0000000041c53000
.equ __section__code_84                 , 0x0000000041068000
.equ __section__code_84_phys            , 0x0000000041c54000
.equ __section__code_85                 , 0x0000000041069000
.equ __section__code_85_phys            , 0x0000000041c55000
.equ __section__code_86                 , 0x000000004106a000
.equ __section__code_86_phys            , 0x0000000041c56000
.equ __section__code_87                 , 0x000000004106b000
.equ __section__code_87_phys            , 0x0000000041c57000
.equ __section__code_88                 , 0x000000004106c000
.equ __section__code_88_phys            , 0x0000000041c58000
.equ __section__code_89                 , 0x000000004106d000
.equ __section__code_89_phys            , 0x0000000041c59000
.equ __section__code_90                 , 0x000000004106e000
.equ __section__code_90_phys            , 0x0000000041c5a000
.equ __section__code_91                 , 0x000000004106f000
.equ __section__code_91_phys            , 0x0000000041c5b000
.equ __section__code_92                 , 0x0000000041070000
.equ __section__code_92_phys            , 0x0000000041c5c000
.equ __section__code_93                 , 0x0000000041071000
.equ __section__code_93_phys            , 0x0000000041c5d000
.equ __section__code_94                 , 0x0000000041072000
.equ __section__code_94_phys            , 0x0000000041c5e000
.equ __section__code_95                 , 0x0000000041073000
.equ __section__code_95_phys            , 0x0000000041c5f000
.equ __section__code_96                 , 0x0000000041074000
.equ __section__code_96_phys            , 0x0000000041c60000
.equ __section__code_97                 , 0x0000000041075000
.equ __section__code_97_phys            , 0x0000000041c61000
.equ __section__code_98                 , 0x0000000041076000
.equ __section__code_98_phys            , 0x0000000041c62000
.equ __section__code_99                 , 0x0000000041077000
.equ __section__code_99_phys            , 0x0000000041c63000
.equ __section__code_100                , 0x0000000041078000
.equ __section__code_100_phys           , 0x0000000041c64000
.equ __section__code_101                , 0x0000000041079000
.equ __section__code_101_phys           , 0x0000000041c65000
.equ __section__code_102                , 0x000000004107a000
.equ __section__code_102_phys           , 0x0000000041c66000
.equ __section__code_103                , 0x000000004107b000
.equ __section__code_103_phys           , 0x0000000041c67000
.equ __section__code_104                , 0x000000004107c000
.equ __section__code_104_phys           , 0x0000000041c68000
.equ __section__code_105                , 0x000000004107d000
.equ __section__code_105_phys           , 0x0000000041c69000
.equ __section__code_106                , 0x000000004107e000
.equ __section__code_106_phys           , 0x0000000041c6a000
.equ __section__code_107                , 0x000000004107f000
.equ __section__code_107_phys           , 0x0000000041c6b000
.equ __section__code_108                , 0x0000000041080000
.equ __section__code_108_phys           , 0x0000000041c6c000
.equ __section__code_109                , 0x0000000041081000
.equ __section__code_109_phys           , 0x0000000041c6d000
.equ __section__code_110                , 0x0000000041082000
.equ __section__code_110_phys           , 0x0000000041c6e000
.equ __section__code_111                , 0x0000000041083000
.equ __section__code_111_phys           , 0x0000000041c6f000
.equ __section__code_112                , 0x0000000041084000
.equ __section__code_112_phys           , 0x0000000041c70000
.equ __section__code_113                , 0x0000000041085000
.equ __section__code_113_phys           , 0x0000000041c71000
.equ __section__code_114                , 0x0000000041086000
.equ __section__code_114_phys           , 0x0000000041c72000
.equ __section__code_115                , 0x0000000041087000
.equ __section__code_115_phys           , 0x0000000041c73000
.equ __section__code_116                , 0x0000000041088000
.equ __section__code_116_phys           , 0x0000000041c74000
.equ __section__code_117                , 0x0000000041089000
.equ __section__code_117_phys           , 0x0000000041c75000
.equ __section__code_118                , 0x000000004108a000
.equ __section__code_118_phys           , 0x0000000041c76000
.equ __section__code_119                , 0x000000004108b000
.equ __section__code_119_phys           , 0x0000000041c77000
.equ __section__code_120                , 0x000000004108c000
.equ __section__code_120_phys           , 0x0000000041c78000
.equ __section__code_121                , 0x000000004108d000
.equ __section__code_121_phys           , 0x0000000041c79000
.equ __section__code_122                , 0x000000004108e000
.equ __section__code_122_phys           , 0x0000000041c7a000
.equ __section__code_123                , 0x000000004108f000
.equ __section__code_123_phys           , 0x0000000041c7b000
.equ __section__code_124                , 0x0000000041090000
.equ __section__code_124_phys           , 0x0000000041c7c000
.equ __section__code_125                , 0x0000000041091000
.equ __section__code_125_phys           , 0x0000000041c7d000
.equ __section__code_126                , 0x0000000041092000
.equ __section__code_126_phys           , 0x0000000041c7e000
.equ __section__code_127                , 0x0000000041093000
.equ __section__code_127_phys           , 0x0000000041c7f000
.equ code_super_0                       , 0x0000000041094000
.equ __section_code_super_0             , 0x0000000041c80000
.equ code_super_1                       , 0x0000000041095000
.equ __section_code_super_1             , 0x0000000041c81000
.equ code_super_2                       , 0x0000000041096000
.equ __section_code_super_2             , 0x0000000041c82000
.equ code_super_3                       , 0x0000000041097000
.equ __section_code_super_3             , 0x0000000041c83000
.equ code_super_4                       , 0x0000000041098000
.equ __section_code_super_4             , 0x0000000041c84000
.equ code_super_5                       , 0x0000000041099000
.equ __section_code_super_5             , 0x0000000041c85000
.equ code_super_6                       , 0x000000004109a000
.equ __section_code_super_6             , 0x0000000041c86000
.equ code_super_7                       , 0x000000004109b000
.equ __section_code_super_7             , 0x0000000041c87000
.equ code_super_8                       , 0x000000004109c000
.equ __section_code_super_8             , 0x0000000041c88000
.equ code_super_9                       , 0x000000004109d000
.equ __section_code_super_9             , 0x0000000041c89000
.equ code_super_10                      , 0x000000004109e000
.equ __section_code_super_10            , 0x0000000041c8a000
.equ code_super_11                      , 0x000000004109f000
.equ __section_code_super_11            , 0x0000000041c8b000
.equ code_super_12                      , 0x00000000410a0000
.equ __section_code_super_12            , 0x0000000041c8c000
.equ code_super_13                      , 0x00000000410a1000
.equ __section_code_super_13            , 0x0000000041c8d000
.equ code_super_14                      , 0x00000000410a2000
.equ __section_code_super_14            , 0x0000000041c8e000
.equ code_super_15                      , 0x00000000410a3000
.equ __section_code_super_15            , 0x0000000041c8f000
.equ code_super_16                      , 0x00000000410a4000
.equ __section_code_super_16            , 0x0000000041c90000
.equ code_super_17                      , 0x00000000410a5000
.equ __section_code_super_17            , 0x0000000041c91000
.equ code_super_18                      , 0x00000000410a6000
.equ __section_code_super_18            , 0x0000000041c92000
.equ code_super_19                      , 0x00000000410a7000
.equ __section_code_super_19            , 0x0000000041c93000
.equ code_super_20                      , 0x00000000410a8000
.equ __section_code_super_20            , 0x0000000041c94000
.equ code_super_21                      , 0x00000000410a9000
.equ __section_code_super_21            , 0x0000000041c95000
.equ code_super_22                      , 0x00000000410aa000
.equ __section_code_super_22            , 0x0000000041c96000
.equ code_super_23                      , 0x00000000410ab000
.equ __section_code_super_23            , 0x0000000041c97000
.equ code_super_24                      , 0x00000000410ac000
.equ __section_code_super_24            , 0x0000000041c98000
.equ code_super_25                      , 0x00000000410ad000
.equ __section_code_super_25            , 0x0000000041c99000
.equ code_super_26                      , 0x00000000410ae000
.equ __section_code_super_26            , 0x0000000041c9a000
.equ code_super_27                      , 0x00000000410af000
.equ __section_code_super_27            , 0x0000000041c9b000
.equ code_super_28                      , 0x00000000410b0000
.equ __section_code_super_28            , 0x0000000041c9c000
.equ code_super_29                      , 0x00000000410b1000
.equ __section_code_super_29            , 0x0000000041c9d000
.equ code_super_30                      , 0x00000000410b2000
.equ __section_code_super_30            , 0x0000000041c9e000
.equ code_super_31                      , 0x00000000410b3000
.equ __section_code_super_31            , 0x0000000041c9f000
.equ code_super_32                      , 0x00000000410b4000
.equ __section_code_super_32            , 0x0000000041ca0000
.equ code_super_33                      , 0x00000000410b5000
.equ __section_code_super_33            , 0x0000000041ca1000
.equ code_super_34                      , 0x00000000410b6000
.equ __section_code_super_34            , 0x0000000041ca2000
.equ code_super_35                      , 0x00000000410b7000
.equ __section_code_super_35            , 0x0000000041ca3000
.equ code_super_36                      , 0x00000000410b8000
.equ __section_code_super_36            , 0x0000000041ca4000
.equ code_super_37                      , 0x00000000410b9000
.equ __section_code_super_37            , 0x0000000041ca5000
.equ code_super_38                      , 0x00000000410ba000
.equ __section_code_super_38            , 0x0000000041ca6000
.equ code_super_39                      , 0x00000000410bb000
.equ __section_code_super_39            , 0x0000000041ca7000
.equ code_super_40                      , 0x00000000410bc000
.equ __section_code_super_40            , 0x0000000041ca8000
.equ code_super_41                      , 0x00000000410bd000
.equ __section_code_super_41            , 0x0000000041ca9000
.equ code_super_42                      , 0x00000000410be000
.equ __section_code_super_42            , 0x0000000041caa000
.equ code_super_43                      , 0x00000000410bf000
.equ __section_code_super_43            , 0x0000000041cab000
.equ code_super_44                      , 0x00000000410c0000
.equ __section_code_super_44            , 0x0000000041cac000
.equ code_super_45                      , 0x00000000410c1000
.equ __section_code_super_45            , 0x0000000041cad000
.equ code_super_46                      , 0x00000000410c2000
.equ __section_code_super_46            , 0x0000000041cae000
.equ code_super_47                      , 0x00000000410c3000
.equ __section_code_super_47            , 0x0000000041caf000
.equ code_super_48                      , 0x00000000410c4000
.equ __section_code_super_48            , 0x0000000041cb0000
.equ code_super_49                      , 0x00000000410c5000
.equ __section_code_super_49            , 0x0000000041cb1000
.equ code_super_50                      , 0x00000000410c6000
.equ __section_code_super_50            , 0x0000000041cb2000
.equ code_super_51                      , 0x00000000410c7000
.equ __section_code_super_51            , 0x0000000041cb3000
.equ code_super_52                      , 0x00000000410c8000
.equ __section_code_super_52            , 0x0000000041cb4000
.equ code_super_53                      , 0x00000000410c9000
.equ __section_code_super_53            , 0x0000000041cb5000
.equ code_super_54                      , 0x00000000410ca000
.equ __section_code_super_54            , 0x0000000041cb6000
.equ code_super_55                      , 0x00000000410cb000
.equ __section_code_super_55            , 0x0000000041cb7000
.equ code_super_56                      , 0x00000000410cc000
.equ __section_code_super_56            , 0x0000000041cb8000
.equ code_super_57                      , 0x00000000410cd000
.equ __section_code_super_57            , 0x0000000041cb9000
.equ code_super_58                      , 0x00000000410ce000
.equ __section_code_super_58            , 0x0000000041cba000
.equ code_super_59                      , 0x00000000410cf000
.equ __section_code_super_59            , 0x0000000041cbb000
.equ code_super_60                      , 0x00000000410d0000
.equ __section_code_super_60            , 0x0000000041cbc000
.equ code_super_61                      , 0x00000000410d1000
.equ __section_code_super_61            , 0x0000000041cbd000
.equ code_super_62                      , 0x00000000410d2000
.equ __section_code_super_62            , 0x0000000041cbe000
.equ code_super_63                      , 0x00000000410d3000
.equ __section_code_super_63            , 0x0000000041cbf000
.equ code_super_64                      , 0x00000000410d4000
.equ __section_code_super_64            , 0x0000000041cc0000
.equ code_super_65                      , 0x00000000410d5000
.equ __section_code_super_65            , 0x0000000041cc1000
.equ code_super_66                      , 0x00000000410d6000
.equ __section_code_super_66            , 0x0000000041cc2000
.equ code_super_67                      , 0x00000000410d7000
.equ __section_code_super_67            , 0x0000000041cc3000
.equ code_super_68                      , 0x00000000410d8000
.equ __section_code_super_68            , 0x0000000041cc4000
.equ code_super_69                      , 0x00000000410d9000
.equ __section_code_super_69            , 0x0000000041cc5000
.equ code_super_70                      , 0x00000000410da000
.equ __section_code_super_70            , 0x0000000041cc6000
.equ code_super_71                      , 0x00000000410db000
.equ __section_code_super_71            , 0x0000000041cc7000
.equ code_super_72                      , 0x00000000410dc000
.equ __section_code_super_72            , 0x0000000041cc8000
.equ code_super_73                      , 0x00000000410dd000
.equ __section_code_super_73            , 0x0000000041cc9000
.equ code_super_74                      , 0x00000000410de000
.equ __section_code_super_74            , 0x0000000041cca000
.equ code_super_75                      , 0x00000000410df000
.equ __section_code_super_75            , 0x0000000041ccb000
.equ code_super_76                      , 0x00000000410e0000
.equ __section_code_super_76            , 0x0000000041ccc000
.equ code_super_77                      , 0x00000000410e1000
.equ __section_code_super_77            , 0x0000000041ccd000
.equ code_super_78                      , 0x00000000410e2000
.equ __section_code_super_78            , 0x0000000041cce000
.equ code_super_79                      , 0x00000000410e3000
.equ __section_code_super_79            , 0x0000000041ccf000
.equ code_super_80                      , 0x00000000410e4000
.equ __section_code_super_80            , 0x0000000041cd0000
.equ code_super_81                      , 0x00000000410e5000
.equ __section_code_super_81            , 0x0000000041cd1000
.equ code_super_82                      , 0x00000000410e6000
.equ __section_code_super_82            , 0x0000000041cd2000
.equ code_super_83                      , 0x00000000410e7000
.equ __section_code_super_83            , 0x0000000041cd3000
.equ code_super_84                      , 0x00000000410e8000
.equ __section_code_super_84            , 0x0000000041cd4000
.equ code_super_85                      , 0x00000000410e9000
.equ __section_code_super_85            , 0x0000000041cd5000
.equ code_super_86                      , 0x00000000410ea000
.equ __section_code_super_86            , 0x0000000041cd6000
.equ code_super_87                      , 0x00000000410eb000
.equ __section_code_super_87            , 0x0000000041cd7000
.equ code_super_88                      , 0x00000000410ec000
.equ __section_code_super_88            , 0x0000000041cd8000
.equ code_super_89                      , 0x00000000410ed000
.equ __section_code_super_89            , 0x0000000041cd9000
.equ code_super_90                      , 0x00000000410ee000
.equ __section_code_super_90            , 0x0000000041cda000
.equ code_super_91                      , 0x00000000410ef000
.equ __section_code_super_91            , 0x0000000041cdb000
.equ code_super_92                      , 0x00000000410f0000
.equ __section_code_super_92            , 0x0000000041cdc000
.equ code_super_93                      , 0x00000000410f1000
.equ __section_code_super_93            , 0x0000000041cdd000
.equ code_super_94                      , 0x00000000410f2000
.equ __section_code_super_94            , 0x0000000041cde000
.equ code_super_95                      , 0x00000000410f3000
.equ __section_code_super_95            , 0x0000000041cdf000
.equ code_super_96                      , 0x00000000410f4000
.equ __section_code_super_96            , 0x0000000041ce0000
.equ code_super_97                      , 0x00000000410f5000
.equ __section_code_super_97            , 0x0000000041ce1000
.equ code_super_98                      , 0x00000000410f6000
.equ __section_code_super_98            , 0x0000000041ce2000
.equ code_super_99                      , 0x00000000410f7000
.equ __section_code_super_99            , 0x0000000041ce3000
.equ code_super_100                     , 0x00000000410f8000
.equ __section_code_super_100           , 0x0000000041ce4000
.equ code_super_101                     , 0x00000000410f9000
.equ __section_code_super_101           , 0x0000000041ce5000
.equ code_super_102                     , 0x00000000410fa000
.equ __section_code_super_102           , 0x0000000041ce6000
.equ code_super_103                     , 0x00000000410fb000
.equ __section_code_super_103           , 0x0000000041ce7000
.equ code_super_104                     , 0x00000000410fc000
.equ __section_code_super_104           , 0x0000000041ce8000
.equ code_super_105                     , 0x00000000410fd000
.equ __section_code_super_105           , 0x0000000041ce9000
.equ code_super_106                     , 0x00000000410fe000
.equ __section_code_super_106           , 0x0000000041cea000
.equ code_super_107                     , 0x00000000410ff000
.equ __section_code_super_107           , 0x0000000041ceb000
.equ code_super_108                     , 0x0000000041100000
.equ __section_code_super_108           , 0x0000000041cec000
.equ code_super_109                     , 0x0000000041101000
.equ __section_code_super_109           , 0x0000000041ced000
.equ code_super_110                     , 0x0000000041102000
.equ __section_code_super_110           , 0x0000000041cee000
.equ code_super_111                     , 0x0000000041103000
.equ __section_code_super_111           , 0x0000000041cef000
.equ code_super_112                     , 0x0000000041104000
.equ __section_code_super_112           , 0x0000000041cf0000
.equ code_super_113                     , 0x0000000041105000
.equ __section_code_super_113           , 0x0000000041cf1000
.equ code_super_114                     , 0x0000000041106000
.equ __section_code_super_114           , 0x0000000041cf2000
.equ code_super_115                     , 0x0000000041107000
.equ __section_code_super_115           , 0x0000000041cf3000
.equ code_super_116                     , 0x0000000041108000
.equ __section_code_super_116           , 0x0000000041cf4000
.equ code_super_117                     , 0x0000000041109000
.equ __section_code_super_117           , 0x0000000041cf5000
.equ code_super_118                     , 0x000000004110a000
.equ __section_code_super_118           , 0x0000000041cf6000
.equ code_super_119                     , 0x000000004110b000
.equ __section_code_super_119           , 0x0000000041cf7000
.equ code_super_120                     , 0x000000004110c000
.equ __section_code_super_120           , 0x0000000041cf8000
.equ code_super_121                     , 0x000000004110d000
.equ __section_code_super_121           , 0x0000000041cf9000
.equ code_super_122                     , 0x000000004110e000
.equ __section_code_super_122           , 0x0000000041cfa000
.equ code_super_123                     , 0x000000004110f000
.equ __section_code_super_123           , 0x0000000041cfb000
.equ code_super_124                     , 0x0000000041110000
.equ __section_code_super_124           , 0x0000000041cfc000
.equ code_super_125                     , 0x0000000041111000
.equ __section_code_super_125           , 0x0000000041cfd000
.equ code_super_126                     , 0x0000000041112000
.equ __section_code_super_126           , 0x0000000041cfe000
.equ code_super_127                     , 0x0000000041113000
.equ __section_code_super_127           , 0x0000000041cff000
.equ code_user_0                        , 0x0000000041114000
.equ __section_code_user_0              , 0x0000000041d00000
.equ code_user_1                        , 0x0000000041115000
.equ __section_code_user_1              , 0x0000000041d01000
.equ code_user_2                        , 0x0000000041116000
.equ __section_code_user_2              , 0x0000000041d02000
.equ code_user_3                        , 0x0000000041117000
.equ __section_code_user_3              , 0x0000000041d03000
.equ code_user_4                        , 0x0000000041118000
.equ __section_code_user_4              , 0x0000000041d04000
.equ code_user_5                        , 0x0000000041119000
.equ __section_code_user_5              , 0x0000000041d05000
.equ code_user_6                        , 0x000000004111a000
.equ __section_code_user_6              , 0x0000000041d06000
.equ code_user_7                        , 0x000000004111b000
.equ __section_code_user_7              , 0x0000000041d07000
.equ code_user_8                        , 0x000000004111c000
.equ __section_code_user_8              , 0x0000000041d08000
.equ code_user_9                        , 0x000000004111d000
.equ __section_code_user_9              , 0x0000000041d09000
.equ code_user_10                       , 0x000000004111e000
.equ __section_code_user_10             , 0x0000000041d0a000
.equ code_user_11                       , 0x000000004111f000
.equ __section_code_user_11             , 0x0000000041d0b000
.equ code_user_12                       , 0x0000000041120000
.equ __section_code_user_12             , 0x0000000041d0c000
.equ code_user_13                       , 0x0000000041121000
.equ __section_code_user_13             , 0x0000000041d0d000
.equ code_user_14                       , 0x0000000041122000
.equ __section_code_user_14             , 0x0000000041d0e000
.equ code_user_15                       , 0x0000000041123000
.equ __section_code_user_15             , 0x0000000041d0f000
.equ code_user_16                       , 0x0000000041124000
.equ __section_code_user_16             , 0x0000000041d10000
.equ code_user_17                       , 0x0000000041125000
.equ __section_code_user_17             , 0x0000000041d11000
.equ code_user_18                       , 0x0000000041126000
.equ __section_code_user_18             , 0x0000000041d12000
.equ code_user_19                       , 0x0000000041127000
.equ __section_code_user_19             , 0x0000000041d13000
.equ code_user_20                       , 0x0000000041128000
.equ __section_code_user_20             , 0x0000000041d14000
.equ code_user_21                       , 0x0000000041129000
.equ __section_code_user_21             , 0x0000000041d15000
.equ code_user_22                       , 0x000000004112a000
.equ __section_code_user_22             , 0x0000000041d16000
.equ code_user_23                       , 0x000000004112b000
.equ __section_code_user_23             , 0x0000000041d17000
.equ code_user_24                       , 0x000000004112c000
.equ __section_code_user_24             , 0x0000000041d18000
.equ code_user_25                       , 0x000000004112d000
.equ __section_code_user_25             , 0x0000000041d19000
.equ code_user_26                       , 0x000000004112e000
.equ __section_code_user_26             , 0x0000000041d1a000
.equ code_user_27                       , 0x000000004112f000
.equ __section_code_user_27             , 0x0000000041d1b000
.equ code_user_28                       , 0x0000000041130000
.equ __section_code_user_28             , 0x0000000041d1c000
.equ code_user_29                       , 0x0000000041131000
.equ __section_code_user_29             , 0x0000000041d1d000
.equ code_user_30                       , 0x0000000041132000
.equ __section_code_user_30             , 0x0000000041d1e000
.equ code_user_31                       , 0x0000000041133000
.equ __section_code_user_31             , 0x0000000041d1f000
.equ code_user_32                       , 0x0000000041134000
.equ __section_code_user_32             , 0x0000000041d20000
.equ code_user_33                       , 0x0000000041135000
.equ __section_code_user_33             , 0x0000000041d21000
.equ code_user_34                       , 0x0000000041136000
.equ __section_code_user_34             , 0x0000000041d22000
.equ code_user_35                       , 0x0000000041137000
.equ __section_code_user_35             , 0x0000000041d23000
.equ code_user_36                       , 0x0000000041138000
.equ __section_code_user_36             , 0x0000000041d24000
.equ code_user_37                       , 0x0000000041139000
.equ __section_code_user_37             , 0x0000000041d25000
.equ code_user_38                       , 0x000000004113a000
.equ __section_code_user_38             , 0x0000000041d26000
.equ code_user_39                       , 0x000000004113b000
.equ __section_code_user_39             , 0x0000000041d27000
.equ code_user_40                       , 0x000000004113c000
.equ __section_code_user_40             , 0x0000000041d28000
.equ code_user_41                       , 0x000000004113d000
.equ __section_code_user_41             , 0x0000000041d29000
.equ code_user_42                       , 0x000000004113e000
.equ __section_code_user_42             , 0x0000000041d2a000
.equ code_user_43                       , 0x000000004113f000
.equ __section_code_user_43             , 0x0000000041d2b000
.equ code_user_44                       , 0x0000000041140000
.equ __section_code_user_44             , 0x0000000041d2c000
.equ code_user_45                       , 0x0000000041141000
.equ __section_code_user_45             , 0x0000000041d2d000
.equ code_user_46                       , 0x0000000041142000
.equ __section_code_user_46             , 0x0000000041d2e000
.equ code_user_47                       , 0x0000000041143000
.equ __section_code_user_47             , 0x0000000041d2f000
.equ code_user_48                       , 0x0000000041144000
.equ __section_code_user_48             , 0x0000000041d30000
.equ code_user_49                       , 0x0000000041145000
.equ __section_code_user_49             , 0x0000000041d31000
.equ code_user_50                       , 0x0000000041146000
.equ __section_code_user_50             , 0x0000000041d32000
.equ code_user_51                       , 0x0000000041147000
.equ __section_code_user_51             , 0x0000000041d33000
.equ code_user_52                       , 0x0000000041148000
.equ __section_code_user_52             , 0x0000000041d34000
.equ code_user_53                       , 0x0000000041149000
.equ __section_code_user_53             , 0x0000000041d35000
.equ code_user_54                       , 0x000000004114a000
.equ __section_code_user_54             , 0x0000000041d36000
.equ code_user_55                       , 0x000000004114b000
.equ __section_code_user_55             , 0x0000000041d37000
.equ code_user_56                       , 0x000000004114c000
.equ __section_code_user_56             , 0x0000000041d38000
.equ code_user_57                       , 0x000000004114d000
.equ __section_code_user_57             , 0x0000000041d39000
.equ code_user_58                       , 0x000000004114e000
.equ __section_code_user_58             , 0x0000000041d3a000
.equ code_user_59                       , 0x000000004114f000
.equ __section_code_user_59             , 0x0000000041d3b000
.equ code_user_60                       , 0x0000000041150000
.equ __section_code_user_60             , 0x0000000041d3c000
.equ code_user_61                       , 0x0000000041151000
.equ __section_code_user_61             , 0x0000000041d3d000
.equ code_user_62                       , 0x0000000041152000
.equ __section_code_user_62             , 0x0000000041d3e000
.equ code_user_63                       , 0x0000000041153000
.equ __section_code_user_63             , 0x0000000041d3f000
.equ code_user_64                       , 0x0000000041154000
.equ __section_code_user_64             , 0x0000000041d40000
.equ code_user_65                       , 0x0000000041155000
.equ __section_code_user_65             , 0x0000000041d41000
.equ code_user_66                       , 0x0000000041156000
.equ __section_code_user_66             , 0x0000000041d42000
.equ code_user_67                       , 0x0000000041157000
.equ __section_code_user_67             , 0x0000000041d43000
.equ code_user_68                       , 0x0000000041158000
.equ __section_code_user_68             , 0x0000000041d44000
.equ code_user_69                       , 0x0000000041159000
.equ __section_code_user_69             , 0x0000000041d45000
.equ code_user_70                       , 0x000000004115a000
.equ __section_code_user_70             , 0x0000000041d46000
.equ code_user_71                       , 0x000000004115b000
.equ __section_code_user_71             , 0x0000000041d47000
.equ code_user_72                       , 0x000000004115c000
.equ __section_code_user_72             , 0x0000000041d48000
.equ code_user_73                       , 0x000000004115d000
.equ __section_code_user_73             , 0x0000000041d49000
.equ code_user_74                       , 0x000000004115e000
.equ __section_code_user_74             , 0x0000000041d4a000
.equ code_user_75                       , 0x000000004115f000
.equ __section_code_user_75             , 0x0000000041d4b000
.equ code_user_76                       , 0x0000000041160000
.equ __section_code_user_76             , 0x0000000041d4c000
.equ code_user_77                       , 0x0000000041161000
.equ __section_code_user_77             , 0x0000000041d4d000
.equ code_user_78                       , 0x0000000041162000
.equ __section_code_user_78             , 0x0000000041d4e000
.equ code_user_79                       , 0x0000000041163000
.equ __section_code_user_79             , 0x0000000041d4f000
.equ code_user_80                       , 0x0000000041164000
.equ __section_code_user_80             , 0x0000000041d50000
.equ code_user_81                       , 0x0000000041165000
.equ __section_code_user_81             , 0x0000000041d51000
.equ code_user_82                       , 0x0000000041166000
.equ __section_code_user_82             , 0x0000000041d52000
.equ code_user_83                       , 0x0000000041167000
.equ __section_code_user_83             , 0x0000000041d53000
.equ code_user_84                       , 0x0000000041168000
.equ __section_code_user_84             , 0x0000000041d54000
.equ code_user_85                       , 0x0000000041169000
.equ __section_code_user_85             , 0x0000000041d55000
.equ code_user_86                       , 0x000000004116a000
.equ __section_code_user_86             , 0x0000000041d56000
.equ code_user_87                       , 0x000000004116b000
.equ __section_code_user_87             , 0x0000000041d57000
.equ code_user_88                       , 0x000000004116c000
.equ __section_code_user_88             , 0x0000000041d58000
.equ code_user_89                       , 0x000000004116d000
.equ __section_code_user_89             , 0x0000000041d59000
.equ code_user_90                       , 0x000000004116e000
.equ __section_code_user_90             , 0x0000000041d5a000
.equ code_user_91                       , 0x000000004116f000
.equ __section_code_user_91             , 0x0000000041d5b000
.equ code_user_92                       , 0x0000000041170000
.equ __section_code_user_92             , 0x0000000041d5c000
.equ code_user_93                       , 0x0000000041171000
.equ __section_code_user_93             , 0x0000000041d5d000
.equ code_user_94                       , 0x0000000041172000
.equ __section_code_user_94             , 0x0000000041d5e000
.equ code_user_95                       , 0x0000000041173000
.equ __section_code_user_95             , 0x0000000041d5f000
.equ code_user_96                       , 0x0000000041174000
.equ __section_code_user_96             , 0x0000000041d60000
.equ code_user_97                       , 0x0000000041175000
.equ __section_code_user_97             , 0x0000000041d61000
.equ code_user_98                       , 0x0000000041176000
.equ __section_code_user_98             , 0x0000000041d62000
.equ code_user_99                       , 0x0000000041177000
.equ __section_code_user_99             , 0x0000000041d63000
.equ code_user_100                      , 0x0000000041178000
.equ __section_code_user_100            , 0x0000000041d64000
.equ code_user_101                      , 0x0000000041179000
.equ __section_code_user_101            , 0x0000000041d65000
.equ code_user_102                      , 0x000000004117a000
.equ __section_code_user_102            , 0x0000000041d66000
.equ code_user_103                      , 0x000000004117b000
.equ __section_code_user_103            , 0x0000000041d67000
.equ code_user_104                      , 0x000000004117c000
.equ __section_code_user_104            , 0x0000000041d68000
.equ code_user_105                      , 0x000000004117d000
.equ __section_code_user_105            , 0x0000000041d69000
.equ code_user_106                      , 0x000000004117e000
.equ __section_code_user_106            , 0x0000000041d6a000
.equ code_user_107                      , 0x000000004117f000
.equ __section_code_user_107            , 0x0000000041d6b000
.equ code_user_108                      , 0x0000000041180000
.equ __section_code_user_108            , 0x0000000041d6c000
.equ code_user_109                      , 0x0000000041181000
.equ __section_code_user_109            , 0x0000000041d6d000
.equ code_user_110                      , 0x0000000041182000
.equ __section_code_user_110            , 0x0000000041d6e000
.equ code_user_111                      , 0x0000000041183000
.equ __section_code_user_111            , 0x0000000041d6f000
.equ code_user_112                      , 0x0000000041184000
.equ __section_code_user_112            , 0x0000000041d70000
.equ code_user_113                      , 0x0000000041185000
.equ __section_code_user_113            , 0x0000000041d71000
.equ code_user_114                      , 0x0000000041186000
.equ __section_code_user_114            , 0x0000000041d72000
.equ code_user_115                      , 0x0000000041187000
.equ __section_code_user_115            , 0x0000000041d73000
.equ code_user_116                      , 0x0000000041188000
.equ __section_code_user_116            , 0x0000000041d74000
.equ code_user_117                      , 0x0000000041189000
.equ __section_code_user_117            , 0x0000000041d75000
.equ code_user_118                      , 0x000000004118a000
.equ __section_code_user_118            , 0x0000000041d76000
.equ code_user_119                      , 0x000000004118b000
.equ __section_code_user_119            , 0x0000000041d77000
.equ code_user_120                      , 0x000000004118c000
.equ __section_code_user_120            , 0x0000000041d78000
.equ code_user_121                      , 0x000000004118d000
.equ __section_code_user_121            , 0x0000000041d79000
.equ code_user_122                      , 0x000000004118e000
.equ __section_code_user_122            , 0x0000000041d7a000
.equ code_user_123                      , 0x000000004118f000
.equ __section_code_user_123            , 0x0000000041d7b000
.equ code_user_124                      , 0x0000000041190000
.equ __section_code_user_124            , 0x0000000041d7c000
.equ code_user_125                      , 0x0000000041191000
.equ __section_code_user_125            , 0x0000000041d7d000
.equ code_user_126                      , 0x0000000041192000
.equ __section_code_user_126            , 0x0000000041d7e000
.equ code_user_127                      , 0x0000000041193000
.equ __section_code_user_127            , 0x0000000041d7f000
.equ code_machine_0                     , 0x0000000041194000
.equ __section_code_machine_0           , 0x0000000041d80000
.equ code_machine_1                     , 0x0000000041195000
.equ __section_code_machine_1           , 0x0000000041d81000
.equ code_machine_2                     , 0x0000000041196000
.equ __section_code_machine_2           , 0x0000000041d82000
.equ code_machine_3                     , 0x0000000041197000
.equ __section_code_machine_3           , 0x0000000041d83000
.equ code_machine_4                     , 0x0000000041198000
.equ __section_code_machine_4           , 0x0000000041d84000
.equ code_machine_5                     , 0x0000000041199000
.equ __section_code_machine_5           , 0x0000000041d85000
.equ code_machine_6                     , 0x000000004119a000
.equ __section_code_machine_6           , 0x0000000041d86000
.equ code_machine_7                     , 0x000000004119b000
.equ __section_code_machine_7           , 0x0000000041d87000
.equ code_machine_8                     , 0x000000004119c000
.equ __section_code_machine_8           , 0x0000000041d88000
.equ code_machine_9                     , 0x000000004119d000
.equ __section_code_machine_9           , 0x0000000041d89000
.equ code_machine_10                    , 0x000000004119e000
.equ __section_code_machine_10          , 0x0000000041d8a000
.equ code_machine_11                    , 0x000000004119f000
.equ __section_code_machine_11          , 0x0000000041d8b000
.equ code_machine_12                    , 0x00000000411a0000
.equ __section_code_machine_12          , 0x0000000041d8c000
.equ code_machine_13                    , 0x00000000411a1000
.equ __section_code_machine_13          , 0x0000000041d8d000
.equ code_machine_14                    , 0x00000000411a2000
.equ __section_code_machine_14          , 0x0000000041d8e000
.equ code_machine_15                    , 0x00000000411a3000
.equ __section_code_machine_15          , 0x0000000041d8f000
.equ code_machine_16                    , 0x00000000411a4000
.equ __section_code_machine_16          , 0x0000000041d90000
.equ code_machine_17                    , 0x00000000411a5000
.equ __section_code_machine_17          , 0x0000000041d91000
.equ code_machine_18                    , 0x00000000411a6000
.equ __section_code_machine_18          , 0x0000000041d92000
.equ code_machine_19                    , 0x00000000411a7000
.equ __section_code_machine_19          , 0x0000000041d93000
.equ code_machine_20                    , 0x00000000411a8000
.equ __section_code_machine_20          , 0x0000000041d94000
.equ code_machine_21                    , 0x00000000411a9000
.equ __section_code_machine_21          , 0x0000000041d95000
.equ code_machine_22                    , 0x00000000411aa000
.equ __section_code_machine_22          , 0x0000000041d96000
.equ code_machine_23                    , 0x00000000411ab000
.equ __section_code_machine_23          , 0x0000000041d97000
.equ code_machine_24                    , 0x00000000411ac000
.equ __section_code_machine_24          , 0x0000000041d98000
.equ code_machine_25                    , 0x00000000411ad000
.equ __section_code_machine_25          , 0x0000000041d99000
.equ code_machine_26                    , 0x00000000411ae000
.equ __section_code_machine_26          , 0x0000000041d9a000
.equ code_machine_27                    , 0x00000000411af000
.equ __section_code_machine_27          , 0x0000000041d9b000
.equ code_machine_28                    , 0x00000000411b0000
.equ __section_code_machine_28          , 0x0000000041d9c000
.equ code_machine_29                    , 0x00000000411b1000
.equ __section_code_machine_29          , 0x0000000041d9d000
.equ code_machine_30                    , 0x00000000411b2000
.equ __section_code_machine_30          , 0x0000000041d9e000
.equ code_machine_31                    , 0x00000000411b3000
.equ __section_code_machine_31          , 0x0000000041d9f000
.equ code_machine_32                    , 0x00000000411b4000
.equ __section_code_machine_32          , 0x0000000041da0000
.equ code_machine_33                    , 0x00000000411b5000
.equ __section_code_machine_33          , 0x0000000041da1000
.equ code_machine_34                    , 0x00000000411b6000
.equ __section_code_machine_34          , 0x0000000041da2000
.equ code_machine_35                    , 0x00000000411b7000
.equ __section_code_machine_35          , 0x0000000041da3000
.equ code_machine_36                    , 0x00000000411b8000
.equ __section_code_machine_36          , 0x0000000041da4000
.equ code_machine_37                    , 0x00000000411b9000
.equ __section_code_machine_37          , 0x0000000041da5000
.equ code_machine_38                    , 0x00000000411ba000
.equ __section_code_machine_38          , 0x0000000041da6000
.equ code_machine_39                    , 0x00000000411bb000
.equ __section_code_machine_39          , 0x0000000041da7000
.equ code_machine_40                    , 0x00000000411bc000
.equ __section_code_machine_40          , 0x0000000041da8000
.equ code_machine_41                    , 0x00000000411bd000
.equ __section_code_machine_41          , 0x0000000041da9000
.equ code_machine_42                    , 0x00000000411be000
.equ __section_code_machine_42          , 0x0000000041daa000
.equ code_machine_43                    , 0x00000000411bf000
.equ __section_code_machine_43          , 0x0000000041dab000
.equ code_machine_44                    , 0x00000000411c0000
.equ __section_code_machine_44          , 0x0000000041dac000
.equ code_machine_45                    , 0x00000000411c1000
.equ __section_code_machine_45          , 0x0000000041dad000
.equ code_machine_46                    , 0x00000000411c2000
.equ __section_code_machine_46          , 0x0000000041dae000
.equ code_machine_47                    , 0x00000000411c3000
.equ __section_code_machine_47          , 0x0000000041daf000
.equ code_machine_48                    , 0x00000000411c4000
.equ __section_code_machine_48          , 0x0000000041db0000
.equ code_machine_49                    , 0x00000000411c5000
.equ __section_code_machine_49          , 0x0000000041db1000
.equ code_machine_50                    , 0x00000000411c6000
.equ __section_code_machine_50          , 0x0000000041db2000
.equ code_machine_51                    , 0x00000000411c7000
.equ __section_code_machine_51          , 0x0000000041db3000
.equ code_machine_52                    , 0x00000000411c8000
.equ __section_code_machine_52          , 0x0000000041db4000
.equ code_machine_53                    , 0x00000000411c9000
.equ __section_code_machine_53          , 0x0000000041db5000
.equ code_machine_54                    , 0x00000000411ca000
.equ __section_code_machine_54          , 0x0000000041db6000
.equ code_machine_55                    , 0x00000000411cb000
.equ __section_code_machine_55          , 0x0000000041db7000
.equ code_machine_56                    , 0x00000000411cc000
.equ __section_code_machine_56          , 0x0000000041db8000
.equ code_machine_57                    , 0x00000000411cd000
.equ __section_code_machine_57          , 0x0000000041db9000
.equ code_machine_58                    , 0x00000000411ce000
.equ __section_code_machine_58          , 0x0000000041dba000
.equ code_machine_59                    , 0x00000000411cf000
.equ __section_code_machine_59          , 0x0000000041dbb000
.equ code_machine_60                    , 0x00000000411d0000
.equ __section_code_machine_60          , 0x0000000041dbc000
.equ code_machine_61                    , 0x00000000411d1000
.equ __section_code_machine_61          , 0x0000000041dbd000
.equ code_machine_62                    , 0x00000000411d2000
.equ __section_code_machine_62          , 0x0000000041dbe000
.equ code_machine_63                    , 0x00000000411d3000
.equ __section_code_machine_63          , 0x0000000041dbf000
.equ code_machine_64                    , 0x00000000411d4000
.equ __section_code_machine_64          , 0x0000000041dc0000
.equ code_machine_65                    , 0x00000000411d5000
.equ __section_code_machine_65          , 0x0000000041dc1000
.equ code_machine_66                    , 0x00000000411d6000
.equ __section_code_machine_66          , 0x0000000041dc2000
.equ code_machine_67                    , 0x00000000411d7000
.equ __section_code_machine_67          , 0x0000000041dc3000
.equ code_machine_68                    , 0x00000000411d8000
.equ __section_code_machine_68          , 0x0000000041dc4000
.equ code_machine_69                    , 0x00000000411d9000
.equ __section_code_machine_69          , 0x0000000041dc5000
.equ code_machine_70                    , 0x00000000411da000
.equ __section_code_machine_70          , 0x0000000041dc6000
.equ code_machine_71                    , 0x00000000411db000
.equ __section_code_machine_71          , 0x0000000041dc7000
.equ code_machine_72                    , 0x00000000411dc000
.equ __section_code_machine_72          , 0x0000000041dc8000
.equ code_machine_73                    , 0x00000000411dd000
.equ __section_code_machine_73          , 0x0000000041dc9000
.equ code_machine_74                    , 0x00000000411de000
.equ __section_code_machine_74          , 0x0000000041dca000
.equ code_machine_75                    , 0x00000000411df000
.equ __section_code_machine_75          , 0x0000000041dcb000
.equ code_machine_76                    , 0x00000000411e0000
.equ __section_code_machine_76          , 0x0000000041dcc000
.equ code_machine_77                    , 0x00000000411e1000
.equ __section_code_machine_77          , 0x0000000041dcd000
.equ code_machine_78                    , 0x00000000411e2000
.equ __section_code_machine_78          , 0x0000000041dce000
.equ code_machine_79                    , 0x00000000411e3000
.equ __section_code_machine_79          , 0x0000000041dcf000
.equ code_machine_80                    , 0x00000000411e4000
.equ __section_code_machine_80          , 0x0000000041dd0000
.equ code_machine_81                    , 0x00000000411e5000
.equ __section_code_machine_81          , 0x0000000041dd1000
.equ code_machine_82                    , 0x00000000411e6000
.equ __section_code_machine_82          , 0x0000000041dd2000
.equ code_machine_83                    , 0x00000000411e7000
.equ __section_code_machine_83          , 0x0000000041dd3000
.equ code_machine_84                    , 0x00000000411e8000
.equ __section_code_machine_84          , 0x0000000041dd4000
.equ code_machine_85                    , 0x00000000411e9000
.equ __section_code_machine_85          , 0x0000000041dd5000
.equ code_machine_86                    , 0x00000000411ea000
.equ __section_code_machine_86          , 0x0000000041dd6000
.equ code_machine_87                    , 0x00000000411eb000
.equ __section_code_machine_87          , 0x0000000041dd7000
.equ code_machine_88                    , 0x00000000411ec000
.equ __section_code_machine_88          , 0x0000000041dd8000
.equ code_machine_89                    , 0x00000000411ed000
.equ __section_code_machine_89          , 0x0000000041dd9000
.equ code_machine_90                    , 0x00000000411ee000
.equ __section_code_machine_90          , 0x0000000041dda000
.equ code_machine_91                    , 0x00000000411ef000
.equ __section_code_machine_91          , 0x0000000041ddb000
.equ code_machine_92                    , 0x00000000411f0000
.equ __section_code_machine_92          , 0x0000000041ddc000
.equ code_machine_93                    , 0x00000000411f1000
.equ __section_code_machine_93          , 0x0000000041ddd000
.equ code_machine_94                    , 0x00000000411f2000
.equ __section_code_machine_94          , 0x0000000041dde000
.equ code_machine_95                    , 0x00000000411f3000
.equ __section_code_machine_95          , 0x0000000041ddf000
.equ code_machine_96                    , 0x00000000411f4000
.equ __section_code_machine_96          , 0x0000000041de0000
.equ code_machine_97                    , 0x00000000411f5000
.equ __section_code_machine_97          , 0x0000000041de1000
.equ code_machine_98                    , 0x00000000411f6000
.equ __section_code_machine_98          , 0x0000000041de2000
.equ code_machine_99                    , 0x00000000411f7000
.equ __section_code_machine_99          , 0x0000000041de3000
.equ code_machine_100                   , 0x00000000411f8000
.equ __section_code_machine_100         , 0x0000000041de4000
.equ code_machine_101                   , 0x00000000411f9000
.equ __section_code_machine_101         , 0x0000000041de5000
.equ code_machine_102                   , 0x00000000411fa000
.equ __section_code_machine_102         , 0x0000000041de6000
.equ code_machine_103                   , 0x00000000411fb000
.equ __section_code_machine_103         , 0x0000000041de7000
.equ code_machine_104                   , 0x00000000411fc000
.equ __section_code_machine_104         , 0x0000000041de8000
.equ code_machine_105                   , 0x00000000411fd000
.equ __section_code_machine_105         , 0x0000000041de9000
.equ code_machine_106                   , 0x00000000411fe000
.equ __section_code_machine_106         , 0x0000000041dea000
.equ code_machine_107                   , 0x00000000411ff000
.equ __section_code_machine_107         , 0x0000000041deb000
.equ code_machine_108                   , 0x0000000041200000
.equ __section_code_machine_108         , 0x0000000041dec000
.equ code_machine_109                   , 0x0000000041201000
.equ __section_code_machine_109         , 0x0000000041ded000
.equ code_machine_110                   , 0x0000000041202000
.equ __section_code_machine_110         , 0x0000000041dee000
.equ code_machine_111                   , 0x0000000041203000
.equ __section_code_machine_111         , 0x0000000041def000
.equ code_machine_112                   , 0x0000000041204000
.equ __section_code_machine_112         , 0x0000000041df0000
.equ code_machine_113                   , 0x0000000041205000
.equ __section_code_machine_113         , 0x0000000041df1000
.equ code_machine_114                   , 0x0000000041206000
.equ __section_code_machine_114         , 0x0000000041df2000
.equ code_machine_115                   , 0x0000000041207000
.equ __section_code_machine_115         , 0x0000000041df3000
.equ code_machine_116                   , 0x0000000041208000
.equ __section_code_machine_116         , 0x0000000041df4000
.equ code_machine_117                   , 0x0000000041209000
.equ __section_code_machine_117         , 0x0000000041df5000
.equ code_machine_118                   , 0x000000004120a000
.equ __section_code_machine_118         , 0x0000000041df6000
.equ code_machine_119                   , 0x000000004120b000
.equ __section_code_machine_119         , 0x0000000041df7000
.equ code_machine_120                   , 0x000000004120c000
.equ __section_code_machine_120         , 0x0000000041df8000
.equ code_machine_121                   , 0x000000004120d000
.equ __section_code_machine_121         , 0x0000000041df9000
.equ code_machine_122                   , 0x000000004120e000
.equ __section_code_machine_122         , 0x0000000041dfa000
.equ code_machine_123                   , 0x000000004120f000
.equ __section_code_machine_123         , 0x0000000041dfb000
.equ code_machine_124                   , 0x0000000041210000
.equ __section_code_machine_124         , 0x0000000041dfc000
.equ code_machine_125                   , 0x0000000041211000
.equ __section_code_machine_125         , 0x0000000041dfd000
.equ code_machine_126                   , 0x0000000041212000
.equ __section_code_machine_126         , 0x0000000041dfe000
.equ code_machine_127                   , 0x0000000041213000
.equ __section_code_machine_127         , 0x0000000041dff000
.equ csr_machine_0                      , 0x0000000041214000
.equ __section_csr_machine_0            , 0x0000000041e00000
.equ csr_super_0                        , 0x0000000041215000
.equ __section_csr_super_0              , 0x0000000041e01000
.equ data                               , 0x0000000000002000
.equ __section_data                     , 0x0000000044b8c000
.equ __section_data_1                   , 0x0000000000003000
.equ __section_data_1_phys              , 0x0000000044b8d000
.equ os_data                            , 0x00000003f10ec000
.equ __section_os_data                  , 0x0000000044c72000
.equ __section_os_data_1                , 0x00000003f10ed000
.equ __section_os_data_1_phys           , 0x0000000044c73000
.equ hart_context                       , 0x009da6df9821d000
.equ __section_hart_context             , 0x0000000044c37000
.equ hart_stack_0                       , 0x0000000000004000
.equ __section_hart_stack_0             , 0x0000000041e02000
.equ io_htif                            , 0x0000000041040000
.equ io_htif_phys                       , 0x0000000041040000
.equ map_os_sptbr                       , 0x0000000044c6e000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0                               , 0x0000000000047000
# ;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem0_phys                          , 0x0000000043146000
# ;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem1                               , 0x000000061bc4b000
# ;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem1_phys                          , 0x0000000041229000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2                               , 0x000000000000d000
# ;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem2_phys                          , 0x0000000044b8e000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3                               , 0x0009aef97973e000
# ;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem3_phys                          , 0x0000000044c74000
# ;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem4                               , 0x000e53c831099000
# ;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem4_phys                          , 0x0000000044c38000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5                               , 0x0000000cc5809000
# ;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem5_phys                          , 0x0000000045024000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6                               , 0x00001e85bf56d000
# ;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem6_phys                          , 0x0000000044c66000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7                               , 0x000006e99a1f9000
# ;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem7_phys                          , 0x0000000044e6e000
# ;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem8                               , 0x0003aa0e78b8b000
# ;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem8_phys                          , 0x0000000041aa2000
# ;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem9                               , 0x00001e85bf56b000
# ;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem9_phys                          , 0x0000000044efd000
# ;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem10                              , 0x0002153443add000
# ;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem10_phys                         , 0x0000000044c6b000
# ;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem11                              , 0x0000000000005000
# ;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem11_phys                         , 0x0000000044eab000
# ;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem12                              , 0x0000033b57079000
# ;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem12_phys                         , 0x000000004502b000
# ;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem13                              , 0x00000367f832a000
# ;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem13_phys                         , 0x0000000044c67000
# ;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem14                              , 0x0000000140fd8000
# ;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], x=1, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ mem14_phys                         , 0x0000000044bc4000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage                     , 0x0046a6861c368000
# ;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ tp_csr_storage_phys                , 0x0000000044f1f000
# ;#page_mapping(lin_name=SID_ZICBO_001_stack, phys_name=SID_ZICBO_001_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_001_stack                , 0x00003bfafe11d000
# ;#page_mapping(lin_name=SID_ZICBO_001_stack, phys_name=SID_ZICBO_001_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_001_stack_phys           , 0x0000000045031000
# ;#page_mapping(lin_name=SID_ZICBO_003_stack, phys_name=SID_ZICBO_003_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_003_stack                , 0x0000000000085000
# ;#page_mapping(lin_name=SID_ZICBO_003_stack, phys_name=SID_ZICBO_003_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_003_stack_phys           , 0x0000000044c6c000
# ;#page_mapping(lin_name=SID_ZICBO_005_stack, phys_name=SID_ZICBO_005_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_005_stack                , 0x0000000b87688000
# ;#page_mapping(lin_name=SID_ZICBO_005_stack, phys_name=SID_ZICBO_005_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_005_stack_phys           , 0x0000000044c60000
# ;#page_mapping(lin_name=SID_ZICBO_013_stack, phys_name=SID_ZICBO_013_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_013_stack                , 0x009a1326390cc000
# ;#page_mapping(lin_name=SID_ZICBO_013_stack, phys_name=SID_ZICBO_013_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_013_stack_phys           , 0x0000000044f11000
# ;#page_mapping(lin_name=SID_ZICBO_015_stack, phys_name=SID_ZICBO_015_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_015_stack                , 0x0000000000045000
# ;#page_mapping(lin_name=SID_ZICBO_015_stack, phys_name=SID_ZICBO_015_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_015_stack_phys           , 0x0000000045028000
# ;#page_mapping(lin_name=SID_ZICBO_016_stack, phys_name=SID_ZICBO_016_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_016_stack                , 0x0000000001573000
# ;#page_mapping(lin_name=SID_ZICBO_016_stack, phys_name=SID_ZICBO_016_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_016_stack_phys           , 0x0000000044c68000
# ;#page_mapping(lin_name=SID_ZICBO_017_stack, phys_name=SID_ZICBO_017_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_017_stack                , 0x00005c742c8c9000
# ;#page_mapping(lin_name=SID_ZICBO_017_stack, phys_name=SID_ZICBO_017_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_017_stack_phys           , 0x0000000044c69000
# ;#page_mapping(lin_name=SID_ZICBO_018_stack, phys_name=SID_ZICBO_018_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_018_stack                , 0x000000000234c000
# ;#page_mapping(lin_name=SID_ZICBO_018_stack, phys_name=SID_ZICBO_018_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_018_stack_phys           , 0x0000000044c6a000
# ;#page_mapping(lin_name=SID_ZICBO_019_stack, phys_name=SID_ZICBO_019_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_019_stack                , 0x0000012b715dc000
# ;#page_mapping(lin_name=SID_ZICBO_019_stack, phys_name=SID_ZICBO_019_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_019_stack_phys           , 0x000000004503b000
# ;#page_mapping(lin_name=SID_ZICBO_020_stack, phys_name=SID_ZICBO_020_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_020_stack                , 0x0000000000141000
# ;#page_mapping(lin_name=SID_ZICBO_020_stack, phys_name=SID_ZICBO_020_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_020_stack_phys           , 0x0000000044b8b000
# ;#page_mapping(lin_name=SID_ZICBO_047_stack, phys_name=SID_ZICBO_047_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_047_stack                , 0x00001f87f8194000
# ;#page_mapping(lin_name=SID_ZICBO_047_stack, phys_name=SID_ZICBO_047_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_047_stack_phys           , 0x0000000044b92000
# ;#page_mapping(lin_name=SID_ZICBO_049_stack, phys_name=SID_ZICBO_049_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_049_stack                , 0x0046b6a39045d000
# ;#page_mapping(lin_name=SID_ZICBO_049_stack, phys_name=SID_ZICBO_049_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_049_stack_phys           , 0x0000000044baa000
# ;#page_mapping(lin_name=SID_ZICBO_50_ZIC64B_01_stack, phys_name=SID_ZICBO_50_ZIC64B_01_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_50_ZIC64B_01_stack       , 0x00228cac06d52000
# ;#page_mapping(lin_name=SID_ZICBO_50_ZIC64B_01_stack, phys_name=SID_ZICBO_50_ZIC64B_01_stack_phys, pagesize=['4kb'], x=0, v=1, r=1, w=1, modify_pt=0, modify_leaf_pt=0, modify_nonleaf_pt=0, g=0, a=1, d=1, page_maps=['map_os'])
.equ SID_ZICBO_50_ZIC64B_01_stack_phys  , 0x0000000043d33000

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
.equ code_pa                            , 0x0000000041c00000
.equ code_super_0_pa                    , 0x0000000041c80000
.equ code_super_1_pa                    , 0x0000000041c81000
.equ code_super_2_pa                    , 0x0000000041c82000
.equ code_super_3_pa                    , 0x0000000041c83000
.equ code_super_4_pa                    , 0x0000000041c84000
.equ code_super_5_pa                    , 0x0000000041c85000
.equ code_super_6_pa                    , 0x0000000041c86000
.equ code_super_7_pa                    , 0x0000000041c87000
.equ code_super_8_pa                    , 0x0000000041c88000
.equ code_super_9_pa                    , 0x0000000041c89000
.equ code_super_10_pa                   , 0x0000000041c8a000
.equ code_super_11_pa                   , 0x0000000041c8b000
.equ code_super_12_pa                   , 0x0000000041c8c000
.equ code_super_13_pa                   , 0x0000000041c8d000
.equ code_super_14_pa                   , 0x0000000041c8e000
.equ code_super_15_pa                   , 0x0000000041c8f000
.equ code_super_16_pa                   , 0x0000000041c90000
.equ code_super_17_pa                   , 0x0000000041c91000
.equ code_super_18_pa                   , 0x0000000041c92000
.equ code_super_19_pa                   , 0x0000000041c93000
.equ code_super_20_pa                   , 0x0000000041c94000
.equ code_super_21_pa                   , 0x0000000041c95000
.equ code_super_22_pa                   , 0x0000000041c96000
.equ code_super_23_pa                   , 0x0000000041c97000
.equ code_super_24_pa                   , 0x0000000041c98000
.equ code_super_25_pa                   , 0x0000000041c99000
.equ code_super_26_pa                   , 0x0000000041c9a000
.equ code_super_27_pa                   , 0x0000000041c9b000
.equ code_super_28_pa                   , 0x0000000041c9c000
.equ code_super_29_pa                   , 0x0000000041c9d000
.equ code_super_30_pa                   , 0x0000000041c9e000
.equ code_super_31_pa                   , 0x0000000041c9f000
.equ code_super_32_pa                   , 0x0000000041ca0000
.equ code_super_33_pa                   , 0x0000000041ca1000
.equ code_super_34_pa                   , 0x0000000041ca2000
.equ code_super_35_pa                   , 0x0000000041ca3000
.equ code_super_36_pa                   , 0x0000000041ca4000
.equ code_super_37_pa                   , 0x0000000041ca5000
.equ code_super_38_pa                   , 0x0000000041ca6000
.equ code_super_39_pa                   , 0x0000000041ca7000
.equ code_super_40_pa                   , 0x0000000041ca8000
.equ code_super_41_pa                   , 0x0000000041ca9000
.equ code_super_42_pa                   , 0x0000000041caa000
.equ code_super_43_pa                   , 0x0000000041cab000
.equ code_super_44_pa                   , 0x0000000041cac000
.equ code_super_45_pa                   , 0x0000000041cad000
.equ code_super_46_pa                   , 0x0000000041cae000
.equ code_super_47_pa                   , 0x0000000041caf000
.equ code_super_48_pa                   , 0x0000000041cb0000
.equ code_super_49_pa                   , 0x0000000041cb1000
.equ code_super_50_pa                   , 0x0000000041cb2000
.equ code_super_51_pa                   , 0x0000000041cb3000
.equ code_super_52_pa                   , 0x0000000041cb4000
.equ code_super_53_pa                   , 0x0000000041cb5000
.equ code_super_54_pa                   , 0x0000000041cb6000
.equ code_super_55_pa                   , 0x0000000041cb7000
.equ code_super_56_pa                   , 0x0000000041cb8000
.equ code_super_57_pa                   , 0x0000000041cb9000
.equ code_super_58_pa                   , 0x0000000041cba000
.equ code_super_59_pa                   , 0x0000000041cbb000
.equ code_super_60_pa                   , 0x0000000041cbc000
.equ code_super_61_pa                   , 0x0000000041cbd000
.equ code_super_62_pa                   , 0x0000000041cbe000
.equ code_super_63_pa                   , 0x0000000041cbf000
.equ code_super_64_pa                   , 0x0000000041cc0000
.equ code_super_65_pa                   , 0x0000000041cc1000
.equ code_super_66_pa                   , 0x0000000041cc2000
.equ code_super_67_pa                   , 0x0000000041cc3000
.equ code_super_68_pa                   , 0x0000000041cc4000
.equ code_super_69_pa                   , 0x0000000041cc5000
.equ code_super_70_pa                   , 0x0000000041cc6000
.equ code_super_71_pa                   , 0x0000000041cc7000
.equ code_super_72_pa                   , 0x0000000041cc8000
.equ code_super_73_pa                   , 0x0000000041cc9000
.equ code_super_74_pa                   , 0x0000000041cca000
.equ code_super_75_pa                   , 0x0000000041ccb000
.equ code_super_76_pa                   , 0x0000000041ccc000
.equ code_super_77_pa                   , 0x0000000041ccd000
.equ code_super_78_pa                   , 0x0000000041cce000
.equ code_super_79_pa                   , 0x0000000041ccf000
.equ code_super_80_pa                   , 0x0000000041cd0000
.equ code_super_81_pa                   , 0x0000000041cd1000
.equ code_super_82_pa                   , 0x0000000041cd2000
.equ code_super_83_pa                   , 0x0000000041cd3000
.equ code_super_84_pa                   , 0x0000000041cd4000
.equ code_super_85_pa                   , 0x0000000041cd5000
.equ code_super_86_pa                   , 0x0000000041cd6000
.equ code_super_87_pa                   , 0x0000000041cd7000
.equ code_super_88_pa                   , 0x0000000041cd8000
.equ code_super_89_pa                   , 0x0000000041cd9000
.equ code_super_90_pa                   , 0x0000000041cda000
.equ code_super_91_pa                   , 0x0000000041cdb000
.equ code_super_92_pa                   , 0x0000000041cdc000
.equ code_super_93_pa                   , 0x0000000041cdd000
.equ code_super_94_pa                   , 0x0000000041cde000
.equ code_super_95_pa                   , 0x0000000041cdf000
.equ code_super_96_pa                   , 0x0000000041ce0000
.equ code_super_97_pa                   , 0x0000000041ce1000
.equ code_super_98_pa                   , 0x0000000041ce2000
.equ code_super_99_pa                   , 0x0000000041ce3000
.equ code_super_100_pa                  , 0x0000000041ce4000
.equ code_super_101_pa                  , 0x0000000041ce5000
.equ code_super_102_pa                  , 0x0000000041ce6000
.equ code_super_103_pa                  , 0x0000000041ce7000
.equ code_super_104_pa                  , 0x0000000041ce8000
.equ code_super_105_pa                  , 0x0000000041ce9000
.equ code_super_106_pa                  , 0x0000000041cea000
.equ code_super_107_pa                  , 0x0000000041ceb000
.equ code_super_108_pa                  , 0x0000000041cec000
.equ code_super_109_pa                  , 0x0000000041ced000
.equ code_super_110_pa                  , 0x0000000041cee000
.equ code_super_111_pa                  , 0x0000000041cef000
.equ code_super_112_pa                  , 0x0000000041cf0000
.equ code_super_113_pa                  , 0x0000000041cf1000
.equ code_super_114_pa                  , 0x0000000041cf2000
.equ code_super_115_pa                  , 0x0000000041cf3000
.equ code_super_116_pa                  , 0x0000000041cf4000
.equ code_super_117_pa                  , 0x0000000041cf5000
.equ code_super_118_pa                  , 0x0000000041cf6000
.equ code_super_119_pa                  , 0x0000000041cf7000
.equ code_super_120_pa                  , 0x0000000041cf8000
.equ code_super_121_pa                  , 0x0000000041cf9000
.equ code_super_122_pa                  , 0x0000000041cfa000
.equ code_super_123_pa                  , 0x0000000041cfb000
.equ code_super_124_pa                  , 0x0000000041cfc000
.equ code_super_125_pa                  , 0x0000000041cfd000
.equ code_super_126_pa                  , 0x0000000041cfe000
.equ code_super_127_pa                  , 0x0000000041cff000
.equ code_user_0_pa                     , 0x0000000041d00000
.equ code_user_1_pa                     , 0x0000000041d01000
.equ code_user_2_pa                     , 0x0000000041d02000
.equ code_user_3_pa                     , 0x0000000041d03000
.equ code_user_4_pa                     , 0x0000000041d04000
.equ code_user_5_pa                     , 0x0000000041d05000
.equ code_user_6_pa                     , 0x0000000041d06000
.equ code_user_7_pa                     , 0x0000000041d07000
.equ code_user_8_pa                     , 0x0000000041d08000
.equ code_user_9_pa                     , 0x0000000041d09000
.equ code_user_10_pa                    , 0x0000000041d0a000
.equ code_user_11_pa                    , 0x0000000041d0b000
.equ code_user_12_pa                    , 0x0000000041d0c000
.equ code_user_13_pa                    , 0x0000000041d0d000
.equ code_user_14_pa                    , 0x0000000041d0e000
.equ code_user_15_pa                    , 0x0000000041d0f000
.equ code_user_16_pa                    , 0x0000000041d10000
.equ code_user_17_pa                    , 0x0000000041d11000
.equ code_user_18_pa                    , 0x0000000041d12000
.equ code_user_19_pa                    , 0x0000000041d13000
.equ code_user_20_pa                    , 0x0000000041d14000
.equ code_user_21_pa                    , 0x0000000041d15000
.equ code_user_22_pa                    , 0x0000000041d16000
.equ code_user_23_pa                    , 0x0000000041d17000
.equ code_user_24_pa                    , 0x0000000041d18000
.equ code_user_25_pa                    , 0x0000000041d19000
.equ code_user_26_pa                    , 0x0000000041d1a000
.equ code_user_27_pa                    , 0x0000000041d1b000
.equ code_user_28_pa                    , 0x0000000041d1c000
.equ code_user_29_pa                    , 0x0000000041d1d000
.equ code_user_30_pa                    , 0x0000000041d1e000
.equ code_user_31_pa                    , 0x0000000041d1f000
.equ code_user_32_pa                    , 0x0000000041d20000
.equ code_user_33_pa                    , 0x0000000041d21000
.equ code_user_34_pa                    , 0x0000000041d22000
.equ code_user_35_pa                    , 0x0000000041d23000
.equ code_user_36_pa                    , 0x0000000041d24000
.equ code_user_37_pa                    , 0x0000000041d25000
.equ code_user_38_pa                    , 0x0000000041d26000
.equ code_user_39_pa                    , 0x0000000041d27000
.equ code_user_40_pa                    , 0x0000000041d28000
.equ code_user_41_pa                    , 0x0000000041d29000
.equ code_user_42_pa                    , 0x0000000041d2a000
.equ code_user_43_pa                    , 0x0000000041d2b000
.equ code_user_44_pa                    , 0x0000000041d2c000
.equ code_user_45_pa                    , 0x0000000041d2d000
.equ code_user_46_pa                    , 0x0000000041d2e000
.equ code_user_47_pa                    , 0x0000000041d2f000
.equ code_user_48_pa                    , 0x0000000041d30000
.equ code_user_49_pa                    , 0x0000000041d31000
.equ code_user_50_pa                    , 0x0000000041d32000
.equ code_user_51_pa                    , 0x0000000041d33000
.equ code_user_52_pa                    , 0x0000000041d34000
.equ code_user_53_pa                    , 0x0000000041d35000
.equ code_user_54_pa                    , 0x0000000041d36000
.equ code_user_55_pa                    , 0x0000000041d37000
.equ code_user_56_pa                    , 0x0000000041d38000
.equ code_user_57_pa                    , 0x0000000041d39000
.equ code_user_58_pa                    , 0x0000000041d3a000
.equ code_user_59_pa                    , 0x0000000041d3b000
.equ code_user_60_pa                    , 0x0000000041d3c000
.equ code_user_61_pa                    , 0x0000000041d3d000
.equ code_user_62_pa                    , 0x0000000041d3e000
.equ code_user_63_pa                    , 0x0000000041d3f000
.equ code_user_64_pa                    , 0x0000000041d40000
.equ code_user_65_pa                    , 0x0000000041d41000
.equ code_user_66_pa                    , 0x0000000041d42000
.equ code_user_67_pa                    , 0x0000000041d43000
.equ code_user_68_pa                    , 0x0000000041d44000
.equ code_user_69_pa                    , 0x0000000041d45000
.equ code_user_70_pa                    , 0x0000000041d46000
.equ code_user_71_pa                    , 0x0000000041d47000
.equ code_user_72_pa                    , 0x0000000041d48000
.equ code_user_73_pa                    , 0x0000000041d49000
.equ code_user_74_pa                    , 0x0000000041d4a000
.equ code_user_75_pa                    , 0x0000000041d4b000
.equ code_user_76_pa                    , 0x0000000041d4c000
.equ code_user_77_pa                    , 0x0000000041d4d000
.equ code_user_78_pa                    , 0x0000000041d4e000
.equ code_user_79_pa                    , 0x0000000041d4f000
.equ code_user_80_pa                    , 0x0000000041d50000
.equ code_user_81_pa                    , 0x0000000041d51000
.equ code_user_82_pa                    , 0x0000000041d52000
.equ code_user_83_pa                    , 0x0000000041d53000
.equ code_user_84_pa                    , 0x0000000041d54000
.equ code_user_85_pa                    , 0x0000000041d55000
.equ code_user_86_pa                    , 0x0000000041d56000
.equ code_user_87_pa                    , 0x0000000041d57000
.equ code_user_88_pa                    , 0x0000000041d58000
.equ code_user_89_pa                    , 0x0000000041d59000
.equ code_user_90_pa                    , 0x0000000041d5a000
.equ code_user_91_pa                    , 0x0000000041d5b000
.equ code_user_92_pa                    , 0x0000000041d5c000
.equ code_user_93_pa                    , 0x0000000041d5d000
.equ code_user_94_pa                    , 0x0000000041d5e000
.equ code_user_95_pa                    , 0x0000000041d5f000
.equ code_user_96_pa                    , 0x0000000041d60000
.equ code_user_97_pa                    , 0x0000000041d61000
.equ code_user_98_pa                    , 0x0000000041d62000
.equ code_user_99_pa                    , 0x0000000041d63000
.equ code_user_100_pa                   , 0x0000000041d64000
.equ code_user_101_pa                   , 0x0000000041d65000
.equ code_user_102_pa                   , 0x0000000041d66000
.equ code_user_103_pa                   , 0x0000000041d67000
.equ code_user_104_pa                   , 0x0000000041d68000
.equ code_user_105_pa                   , 0x0000000041d69000
.equ code_user_106_pa                   , 0x0000000041d6a000
.equ code_user_107_pa                   , 0x0000000041d6b000
.equ code_user_108_pa                   , 0x0000000041d6c000
.equ code_user_109_pa                   , 0x0000000041d6d000
.equ code_user_110_pa                   , 0x0000000041d6e000
.equ code_user_111_pa                   , 0x0000000041d6f000
.equ code_user_112_pa                   , 0x0000000041d70000
.equ code_user_113_pa                   , 0x0000000041d71000
.equ code_user_114_pa                   , 0x0000000041d72000
.equ code_user_115_pa                   , 0x0000000041d73000
.equ code_user_116_pa                   , 0x0000000041d74000
.equ code_user_117_pa                   , 0x0000000041d75000
.equ code_user_118_pa                   , 0x0000000041d76000
.equ code_user_119_pa                   , 0x0000000041d77000
.equ code_user_120_pa                   , 0x0000000041d78000
.equ code_user_121_pa                   , 0x0000000041d79000
.equ code_user_122_pa                   , 0x0000000041d7a000
.equ code_user_123_pa                   , 0x0000000041d7b000
.equ code_user_124_pa                   , 0x0000000041d7c000
.equ code_user_125_pa                   , 0x0000000041d7d000
.equ code_user_126_pa                   , 0x0000000041d7e000
.equ code_user_127_pa                   , 0x0000000041d7f000
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
.equ csr_super_0_pa                     , 0x0000000041e01000
.equ data_pa                            , 0x0000000044b8c000
.equ os_data_pa                         , 0x0000000044c72000
.equ hart_context_pa                    , 0x0000000044c37000
.equ hart_stack_0_pa                    , 0x0000000041e02000
.equ io_htif_pa                         , 0x0000000041040000
.equ mem0_pa                            , 0x0000000043146000
.equ mem1_pa                            , 0x0000000041229000
.equ mem2_pa                            , 0x0000000044b8e000
.equ mem3_pa                            , 0x0000000044c74000
.equ mem4_pa                            , 0x0000000044c38000
.equ mem5_pa                            , 0x0000000045024000
.equ mem6_pa                            , 0x0000000044c66000
.equ mem7_pa                            , 0x0000000044e6e000
.equ mem8_pa                            , 0x0000000041aa2000
.equ mem9_pa                            , 0x0000000044efd000
.equ mem10_pa                           , 0x0000000044c6b000
.equ mem11_pa                           , 0x0000000044eab000
.equ mem12_pa                           , 0x000000004502b000
.equ mem13_pa                           , 0x0000000044c67000
.equ mem14_pa                           , 0x0000000044bc4000
.equ tp_csr_storage_pa                  , 0x0000000044f1f000
.equ SID_ZICBO_001_stack_pa             , 0x0000000045031000
.equ SID_ZICBO_003_stack_pa             , 0x0000000044c6c000
.equ SID_ZICBO_005_stack_pa             , 0x0000000044c60000
.equ SID_ZICBO_013_stack_pa             , 0x0000000044f11000
.equ SID_ZICBO_015_stack_pa             , 0x0000000045028000
.equ SID_ZICBO_016_stack_pa             , 0x0000000044c68000
.equ SID_ZICBO_017_stack_pa             , 0x0000000044c69000
.equ SID_ZICBO_018_stack_pa             , 0x0000000044c6a000
.equ SID_ZICBO_019_stack_pa             , 0x000000004503b000
.equ SID_ZICBO_020_stack_pa             , 0x0000000044b8b000
.equ SID_ZICBO_047_stack_pa             , 0x0000000044b92000
.equ SID_ZICBO_049_stack_pa             , 0x0000000044baa000
.equ SID_ZICBO_50_ZIC64B_01_stack_pa    , 0x0000000043d33000

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
.equ rvcp_passed_str,                    os_data + 98
.equ rvcp_passed_str_pa,                 os_data_pa + 98
.equ rvcp_failed_str,                    os_data + 105
.equ rvcp_failed_str_pa,                 os_data_pa + 105
.equ rvcp_space_str,                     os_data + 112
.equ rvcp_space_str_pa,                  os_data_pa + 112
.equ rvcp_newline_str,                   os_data + 114
.equ rvcp_newline_str_pa,                os_data_pa + 114

# Runtime Variables (VA)
.equ excp_ignored_count,                 os_data + 120
.equ machine_flags,                      os_data + 128
.equ user_flags,                         os_data + 136
.equ super_flags,                        os_data + 144
.equ machine_area,                       os_data + 152
.equ user_area,                          os_data + 160
.equ super_area,                         os_data + 168
.equ zero_data,                          os_data + 176
.equ machine_csr_jump_table_flags,       os_data + 184
.equ super_csr_jump_table_flags,         os_data + 192
.equ pte_access_flags,                   os_data + 200
.equ num_harts_ended,                    os_data + 224
.equ num_hard_fails,                     os_data + 232

# Runtime Variables (PA)
.equ excp_ignored_count_pa,              os_data_pa + 120
.equ machine_flags_pa,                   os_data_pa + 128
.equ user_flags_pa,                      os_data_pa + 136
.equ super_flags_pa,                     os_data_pa + 144
.equ machine_area_pa,                    os_data_pa + 152
.equ user_area_pa,                       os_data_pa + 160
.equ super_area_pa,                      os_data_pa + 168
.equ zero_data_pa,                       os_data_pa + 176
.equ machine_csr_jump_table_flags_pa,    os_data_pa + 184
.equ super_csr_jump_table_flags_pa,      os_data_pa + 192
.equ pte_access_flags_pa,                os_data_pa + 200
.equ num_harts_ended_pa,                 os_data_pa + 224
.equ num_hard_fails_pa,                  os_data_pa + 232

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
