declare void @print(i8*) #0
declare void @println(i8*) #0
declare void @printInt(i32) #0
declare void @printlnInt(i32) #0
declare i32 @getInt() #0
declare i8* @getString() #0
declare i8* @toString(i32) #0
declare i8 @__string_slt(i8*, i8*) #0
declare i8 @__string_sle(i8*, i8*) #0
declare i8 @__string_sgt(i8*, i8*) #0
declare i8 @__string_sge(i8*, i8*) #0
declare i8 @__string_eq(i8*, i8*) #0
declare i8 @__string_ne(i8*, i8*) #0
declare i8* @__merge_string(i8*, i8*) #0
declare i8* @__malloc(i32) #0
declare i32 @__string_length(i8*) #0
declare i8* @__string_substring(i8*, i32, i32) #0
declare i32 @__string_parseInt(i8*) #0
declare i32 @__string_ord(i8*, i32) #0

@.str.0 = private unnamed_addr constant [2 x i8] c" \00"
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00"


@make = global i32** null, align 4
@color = global i32* null, align 4
@count = global i32* null, align 4
@i = global i32 0, align 4
@j = global i32 0, align 4

define void @origin(i32 %N_0) #0 {
origin.entry:
	%parameter_ptr_1 = alloca i32, align 4
	store i32 %N_0, i32* %parameter_ptr_1, align 4
	%identifier_register_2 = load i32**, i32*** @make, align 4
	%identifier_register_3 = load i32, i32* %parameter_ptr_1, align 4
	%arr_size_reg_4 = mul i32 %identifier_register_3, 4
	%malloc_size_5 = add i32 %arr_size_reg_4, 4
	%malloc_ptr_6 = call i8* @__malloc(i32 %malloc_size_5)
	%arr_len_ptr_7 = bitcast i8* %malloc_ptr_6 to i32*
	store i32 %identifier_register_3, i32* %arr_len_ptr_7, align 4
	%arr_char_ptr_8 = getelementptr inbounds i8, i8* %malloc_ptr_6, i32 4
	%arr_ptr_9 = bitcast i8* %arr_char_ptr_8 to i32**
	store i32** %arr_ptr_9, i32*** @make, align 4
	%identifier_register_10 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %origin.0_for_condition

origin.0_for_condition:
	%identifier_register_11 = load i32, i32* @i, align 4
	%identifier_register_12 = load i32, i32* %parameter_ptr_1, align 4
	%res_13 = icmp slt i32 %identifier_register_11, %identifier_register_12
	br i1 %res_13, label %origin.0_for_loop, label %origin.0_for_terminate

origin.0_for_loop:
	%identifier_register_14 = load i32, i32* @i, align 4
	%identifier_register_15 = load i32**, i32*** @make, align 4
	%array_id_ptr_16 = getelementptr inbounds i32*, i32** %identifier_register_15, i32 %identifier_register_14
	%res_array_17 = load i32*, i32** %array_id_ptr_16, align 4
	%identifier_register_18 = load i32, i32* %parameter_ptr_1, align 4
	%arr_size_reg_19 = mul i32 %identifier_register_18, 4
	%malloc_size_20 = add i32 %arr_size_reg_19, 4
	%malloc_ptr_21 = call i8* @__malloc(i32 %malloc_size_20)
	%arr_len_ptr_22 = bitcast i8* %malloc_ptr_21 to i32*
	store i32 %identifier_register_18, i32* %arr_len_ptr_22, align 4
	%arr_char_ptr_23 = getelementptr inbounds i8, i8* %malloc_ptr_21, i32 4
	%arr_ptr_24 = bitcast i8* %arr_char_ptr_23 to i32*
	store i32* %arr_ptr_24, i32** %array_id_ptr_16, align 4
	%identifier_register_25 = load i32, i32* @j, align 4
	store i32 0, i32* @j, align 4
	br label %origin.1_for_condition

origin.1_for_condition:
	%identifier_register_26 = load i32, i32* @j, align 4
	%identifier_register_27 = load i32, i32* %parameter_ptr_1, align 4
	%res_28 = icmp slt i32 %identifier_register_26, %identifier_register_27
	br i1 %res_28, label %origin.1_for_loop, label %origin.1_for_terminate

origin.1_for_loop:
	%identifier_register_29 = load i32, i32* @j, align 4
	%identifier_register_30 = load i32, i32* @i, align 4
	%identifier_register_31 = load i32**, i32*** @make, align 4
	%array_id_ptr_32 = getelementptr inbounds i32*, i32** %identifier_register_31, i32 %identifier_register_30
	%res_array_33 = load i32*, i32** %array_id_ptr_32, align 4
	%array_id_ptr_34 = getelementptr inbounds i32, i32* %res_array_33, i32 %identifier_register_29
	%res_array_35 = load i32, i32* %array_id_ptr_34, align 4
	store i32 0, i32* %array_id_ptr_34, align 4
	br label %origin.1_for_execution

origin.1_for_execution:
	%identifier_register_36 = load i32, i32* @j, align 4
	%tmp_37 = load i32, i32* @j, align 4
	%res_38 = add i32 %identifier_register_36, 1
	store i32 %res_38, i32* @j, align 4
	br label %origin.1_for_condition

origin.1_for_terminate:
	br label %origin.0_for_execution

origin.0_for_execution:
	%identifier_register_39 = load i32, i32* @i, align 4
	%tmp_40 = load i32, i32* @i, align 4
	%res_41 = add i32 %identifier_register_39, 1
	store i32 %res_41, i32* @i, align 4
	br label %origin.0_for_condition

origin.0_for_terminate:
	br label %origin.return

origin.return:
	ret void

}

define void @search(i32 %x_0, i32 %y_1, i32 %z_2) #0 {
search.entry:
	%parameter_ptr_3 = alloca i32, align 4
	%parameter_ptr_4 = alloca i32, align 4
	%parameter_ptr_5 = alloca i32, align 4
	store i32 %x_0, i32* %parameter_ptr_3, align 4
	store i32 %y_1, i32* %parameter_ptr_4, align 4
	store i32 %z_2, i32* %parameter_ptr_5, align 4
	%alloca_s_6 = alloca i32, align 4
	store i32 0, i32* %alloca_s_6, align 4
	%alloca_i_7 = alloca i32, align 4
	store i32 0, i32* %alloca_i_7, align 4
	%alloca_j_8 = alloca i32, align 4
	store i32 0, i32* %alloca_j_8, align 4
	%phi_9 = alloca i1, align 4
	%phi_10 = alloca i1, align 4
	%phi_11 = alloca i1, align 4
	%identifier_register_12 = load i32, i32* %parameter_ptr_4, align 4
	%res_13 = icmp sgt i32 %identifier_register_12, 0
	store i1 %res_13, i1* %phi_11, align 4
	br i1 %res_13, label %search.2_or_terminate_block, label %search.2_or_rhs_block

search.2_or_rhs_block:
	%identifier_register_14 = load i32, i32* %parameter_ptr_4, align 4
	%res_15 = icmp slt i32 %identifier_register_14, 0
	%res_16 = or i1 %res_13, %res_15
	store i1 %res_16, i1* %phi_11, align 4
	br label %search.2_or_terminate_block

search.2_or_terminate_block:
	%ret_17 = load i1, i1* %phi_11, align 4
	store i1 %ret_17, i1* %phi_10, align 4
	br i1 %ret_17, label %search.3_or_terminate_block, label %search.3_or_rhs_block

search.3_or_rhs_block:
	%identifier_register_18 = load i32, i32* %parameter_ptr_3, align 4
	%res_19 = icmp eq i32 %identifier_register_18, 0
	%res_20 = or i1 %ret_17, %res_19
	store i1 %res_20, i1* %phi_10, align 4
	br label %search.3_or_terminate_block

search.3_or_terminate_block:
	%ret_21 = load i1, i1* %phi_10, align 4
	store i1 %ret_21, i1* %phi_9, align 4
	br i1 %ret_21, label %search.4_or_terminate_block, label %search.4_or_rhs_block

search.4_or_rhs_block:
	%identifier_register_22 = load i32, i32* %parameter_ptr_3, align 4
	%res_23 = sub nsw i32 %identifier_register_22, 1
	%identifier_register_24 = load i32**, i32*** @make, align 4
	%array_id_ptr_25 = getelementptr inbounds i32*, i32** %identifier_register_24, i32 %res_23
	%res_array_26 = load i32*, i32** %array_id_ptr_25, align 4
	%array_id_ptr_27 = getelementptr inbounds i32, i32* %res_array_26, i32 0
	%res_array_28 = load i32, i32* %array_id_ptr_27, align 4
	%identifier_register_29 = load i32, i32* %parameter_ptr_3, align 4
	%res_30 = sub nsw i32 %identifier_register_29, 1
	%identifier_register_31 = load i32**, i32*** @make, align 4
	%array_id_ptr_32 = getelementptr inbounds i32*, i32** %identifier_register_31, i32 %res_30
	%res_array_33 = load i32*, i32** %array_id_ptr_32, align 4
	%array_id_ptr_34 = getelementptr inbounds i32, i32* %res_array_33, i32 1
	%res_array_35 = load i32, i32* %array_id_ptr_34, align 4
	%res_36 = add i32 %res_array_28, %res_array_35
	%identifier_register_37 = load i32, i32* %parameter_ptr_3, align 4
	%res_38 = sub nsw i32 %identifier_register_37, 1
	%identifier_register_39 = load i32**, i32*** @make, align 4
	%array_id_ptr_40 = getelementptr inbounds i32*, i32** %identifier_register_39, i32 %res_38
	%res_array_41 = load i32*, i32** %array_id_ptr_40, align 4
	%array_id_ptr_42 = getelementptr inbounds i32, i32* %res_array_41, i32 2
	%res_array_43 = load i32, i32* %array_id_ptr_42, align 4
	%res_44 = add i32 %res_36, %res_array_43
	%res_45 = icmp eq i32 %res_44, 15
	%res_46 = or i1 %ret_21, %res_45
	store i1 %res_46, i1* %phi_9, align 4
	br label %search.4_or_terminate_block

search.4_or_terminate_block:
	%ret_47 = load i1, i1* %phi_9, align 4
	br i1 %ret_47, label %search.5_if_true, label %search.5_if_terminate

search.5_if_true:
	%phi_48 = alloca i1, align 4
	%identifier_register_49 = load i32, i32* %parameter_ptr_3, align 4
	%res_50 = icmp eq i32 %identifier_register_49, 2
	store i1 %res_50, i1* %phi_48, align 4
	br i1 %res_50, label %search.6_and_rhs_block, label %search.6_and_terminate_block

search.6_and_rhs_block:
	%identifier_register_51 = load i32, i32* %parameter_ptr_4, align 4
	%res_52 = icmp eq i32 %identifier_register_51, 2
	%res_53 = and i1 %res_50, %res_52
	store i1 %res_53, i1* %phi_48, align 4
	br label %search.6_and_terminate_block

search.6_and_terminate_block:
	%ret_54 = load i1, i1* %phi_48, align 4
	br i1 %ret_54, label %search.7_if_true, label %search.7_if_false

search.7_if_true:
	%identifier_register_55 = load i32**, i32*** @make, align 4
	%array_id_ptr_56 = getelementptr inbounds i32*, i32** %identifier_register_55, i32 2
	%res_array_57 = load i32*, i32** %array_id_ptr_56, align 4
	%array_id_ptr_58 = getelementptr inbounds i32, i32* %res_array_57, i32 2
	%res_array_59 = load i32, i32* %array_id_ptr_58, align 4
	%identifier_register_60 = load i32, i32* %parameter_ptr_5, align 4
	%res_61 = sub nsw i32 45, %identifier_register_60
	store i32 %res_61, i32* %array_id_ptr_58, align 4
	%identifier_register_62 = load i32, i32* %alloca_s_6, align 4
	%identifier_register_63 = load i32**, i32*** @make, align 4
	%array_id_ptr_64 = getelementptr inbounds i32*, i32** %identifier_register_63, i32 0
	%res_array_65 = load i32*, i32** %array_id_ptr_64, align 4
	%array_id_ptr_66 = getelementptr inbounds i32, i32* %res_array_65, i32 0
	%res_array_67 = load i32, i32* %array_id_ptr_66, align 4
	%identifier_register_68 = load i32**, i32*** @make, align 4
	%array_id_ptr_69 = getelementptr inbounds i32*, i32** %identifier_register_68, i32 0
	%res_array_70 = load i32*, i32** %array_id_ptr_69, align 4
	%array_id_ptr_71 = getelementptr inbounds i32, i32* %res_array_70, i32 1
	%res_array_72 = load i32, i32* %array_id_ptr_71, align 4
	%res_73 = add i32 %res_array_67, %res_array_72
	%identifier_register_74 = load i32**, i32*** @make, align 4
	%array_id_ptr_75 = getelementptr inbounds i32*, i32** %identifier_register_74, i32 0
	%res_array_76 = load i32*, i32** %array_id_ptr_75, align 4
	%array_id_ptr_77 = getelementptr inbounds i32, i32* %res_array_76, i32 2
	%res_array_78 = load i32, i32* %array_id_ptr_77, align 4
	%res_79 = add i32 %res_73, %res_array_78
	store i32 %res_79, i32* %alloca_s_6, align 4
	%phi_80 = alloca i1, align 4
	%phi_81 = alloca i1, align 4
	%phi_82 = alloca i1, align 4
	%phi_83 = alloca i1, align 4
	%phi_84 = alloca i1, align 4
	%phi_85 = alloca i1, align 4
	%identifier_register_86 = load i32**, i32*** @make, align 4
	%array_id_ptr_87 = getelementptr inbounds i32*, i32** %identifier_register_86, i32 1
	%res_array_88 = load i32*, i32** %array_id_ptr_87, align 4
	%array_id_ptr_89 = getelementptr inbounds i32, i32* %res_array_88, i32 0
	%res_array_90 = load i32, i32* %array_id_ptr_89, align 4
	%identifier_register_91 = load i32**, i32*** @make, align 4
	%array_id_ptr_92 = getelementptr inbounds i32*, i32** %identifier_register_91, i32 1
	%res_array_93 = load i32*, i32** %array_id_ptr_92, align 4
	%array_id_ptr_94 = getelementptr inbounds i32, i32* %res_array_93, i32 1
	%res_array_95 = load i32, i32* %array_id_ptr_94, align 4
	%res_96 = add i32 %res_array_90, %res_array_95
	%identifier_register_97 = load i32**, i32*** @make, align 4
	%array_id_ptr_98 = getelementptr inbounds i32*, i32** %identifier_register_97, i32 1
	%res_array_99 = load i32*, i32** %array_id_ptr_98, align 4
	%array_id_ptr_100 = getelementptr inbounds i32, i32* %res_array_99, i32 2
	%res_array_101 = load i32, i32* %array_id_ptr_100, align 4
	%res_102 = add i32 %res_96, %res_array_101
	%identifier_register_103 = load i32, i32* %alloca_s_6, align 4
	%res_104 = icmp eq i32 %res_102, %identifier_register_103
	store i1 %res_104, i1* %phi_85, align 4
	br i1 %res_104, label %search.8_and_rhs_block, label %search.8_and_terminate_block

search.8_and_rhs_block:
	%identifier_register_105 = load i32**, i32*** @make, align 4
	%array_id_ptr_106 = getelementptr inbounds i32*, i32** %identifier_register_105, i32 2
	%res_array_107 = load i32*, i32** %array_id_ptr_106, align 4
	%array_id_ptr_108 = getelementptr inbounds i32, i32* %res_array_107, i32 0
	%res_array_109 = load i32, i32* %array_id_ptr_108, align 4
	%identifier_register_110 = load i32**, i32*** @make, align 4
	%array_id_ptr_111 = getelementptr inbounds i32*, i32** %identifier_register_110, i32 2
	%res_array_112 = load i32*, i32** %array_id_ptr_111, align 4
	%array_id_ptr_113 = getelementptr inbounds i32, i32* %res_array_112, i32 1
	%res_array_114 = load i32, i32* %array_id_ptr_113, align 4
	%res_115 = add i32 %res_array_109, %res_array_114
	%identifier_register_116 = load i32**, i32*** @make, align 4
	%array_id_ptr_117 = getelementptr inbounds i32*, i32** %identifier_register_116, i32 2
	%res_array_118 = load i32*, i32** %array_id_ptr_117, align 4
	%array_id_ptr_119 = getelementptr inbounds i32, i32* %res_array_118, i32 2
	%res_array_120 = load i32, i32* %array_id_ptr_119, align 4
	%res_121 = add i32 %res_115, %res_array_120
	%identifier_register_122 = load i32, i32* %alloca_s_6, align 4
	%res_123 = icmp eq i32 %res_121, %identifier_register_122
	%res_124 = and i1 %res_104, %res_123
	store i1 %res_124, i1* %phi_85, align 4
	br label %search.8_and_terminate_block

search.8_and_terminate_block:
	%ret_125 = load i1, i1* %phi_85, align 4
	store i1 %ret_125, i1* %phi_84, align 4
	br i1 %ret_125, label %search.9_and_rhs_block, label %search.9_and_terminate_block

search.9_and_rhs_block:
	%identifier_register_126 = load i32**, i32*** @make, align 4
	%array_id_ptr_127 = getelementptr inbounds i32*, i32** %identifier_register_126, i32 0
	%res_array_128 = load i32*, i32** %array_id_ptr_127, align 4
	%array_id_ptr_129 = getelementptr inbounds i32, i32* %res_array_128, i32 0
	%res_array_130 = load i32, i32* %array_id_ptr_129, align 4
	%identifier_register_131 = load i32**, i32*** @make, align 4
	%array_id_ptr_132 = getelementptr inbounds i32*, i32** %identifier_register_131, i32 1
	%res_array_133 = load i32*, i32** %array_id_ptr_132, align 4
	%array_id_ptr_134 = getelementptr inbounds i32, i32* %res_array_133, i32 0
	%res_array_135 = load i32, i32* %array_id_ptr_134, align 4
	%res_136 = add i32 %res_array_130, %res_array_135
	%identifier_register_137 = load i32**, i32*** @make, align 4
	%array_id_ptr_138 = getelementptr inbounds i32*, i32** %identifier_register_137, i32 2
	%res_array_139 = load i32*, i32** %array_id_ptr_138, align 4
	%array_id_ptr_140 = getelementptr inbounds i32, i32* %res_array_139, i32 0
	%res_array_141 = load i32, i32* %array_id_ptr_140, align 4
	%res_142 = add i32 %res_136, %res_array_141
	%identifier_register_143 = load i32, i32* %alloca_s_6, align 4
	%res_144 = icmp eq i32 %res_142, %identifier_register_143
	%res_145 = and i1 %ret_125, %res_144
	store i1 %res_145, i1* %phi_84, align 4
	br label %search.9_and_terminate_block

search.9_and_terminate_block:
	%ret_146 = load i1, i1* %phi_84, align 4
	store i1 %ret_146, i1* %phi_83, align 4
	br i1 %ret_146, label %search.10_and_rhs_block, label %search.10_and_terminate_block

search.10_and_rhs_block:
	%identifier_register_147 = load i32**, i32*** @make, align 4
	%array_id_ptr_148 = getelementptr inbounds i32*, i32** %identifier_register_147, i32 0
	%res_array_149 = load i32*, i32** %array_id_ptr_148, align 4
	%array_id_ptr_150 = getelementptr inbounds i32, i32* %res_array_149, i32 1
	%res_array_151 = load i32, i32* %array_id_ptr_150, align 4
	%identifier_register_152 = load i32**, i32*** @make, align 4
	%array_id_ptr_153 = getelementptr inbounds i32*, i32** %identifier_register_152, i32 1
	%res_array_154 = load i32*, i32** %array_id_ptr_153, align 4
	%array_id_ptr_155 = getelementptr inbounds i32, i32* %res_array_154, i32 1
	%res_array_156 = load i32, i32* %array_id_ptr_155, align 4
	%res_157 = add i32 %res_array_151, %res_array_156
	%identifier_register_158 = load i32**, i32*** @make, align 4
	%array_id_ptr_159 = getelementptr inbounds i32*, i32** %identifier_register_158, i32 2
	%res_array_160 = load i32*, i32** %array_id_ptr_159, align 4
	%array_id_ptr_161 = getelementptr inbounds i32, i32* %res_array_160, i32 1
	%res_array_162 = load i32, i32* %array_id_ptr_161, align 4
	%res_163 = add i32 %res_157, %res_array_162
	%identifier_register_164 = load i32, i32* %alloca_s_6, align 4
	%res_165 = icmp eq i32 %res_163, %identifier_register_164
	%res_166 = and i1 %ret_146, %res_165
	store i1 %res_166, i1* %phi_83, align 4
	br label %search.10_and_terminate_block

search.10_and_terminate_block:
	%ret_167 = load i1, i1* %phi_83, align 4
	store i1 %ret_167, i1* %phi_82, align 4
	br i1 %ret_167, label %search.11_and_rhs_block, label %search.11_and_terminate_block

search.11_and_rhs_block:
	%identifier_register_168 = load i32**, i32*** @make, align 4
	%array_id_ptr_169 = getelementptr inbounds i32*, i32** %identifier_register_168, i32 0
	%res_array_170 = load i32*, i32** %array_id_ptr_169, align 4
	%array_id_ptr_171 = getelementptr inbounds i32, i32* %res_array_170, i32 2
	%res_array_172 = load i32, i32* %array_id_ptr_171, align 4
	%identifier_register_173 = load i32**, i32*** @make, align 4
	%array_id_ptr_174 = getelementptr inbounds i32*, i32** %identifier_register_173, i32 1
	%res_array_175 = load i32*, i32** %array_id_ptr_174, align 4
	%array_id_ptr_176 = getelementptr inbounds i32, i32* %res_array_175, i32 2
	%res_array_177 = load i32, i32* %array_id_ptr_176, align 4
	%res_178 = add i32 %res_array_172, %res_array_177
	%identifier_register_179 = load i32**, i32*** @make, align 4
	%array_id_ptr_180 = getelementptr inbounds i32*, i32** %identifier_register_179, i32 2
	%res_array_181 = load i32*, i32** %array_id_ptr_180, align 4
	%array_id_ptr_182 = getelementptr inbounds i32, i32* %res_array_181, i32 2
	%res_array_183 = load i32, i32* %array_id_ptr_182, align 4
	%res_184 = add i32 %res_178, %res_array_183
	%identifier_register_185 = load i32, i32* %alloca_s_6, align 4
	%res_186 = icmp eq i32 %res_184, %identifier_register_185
	%res_187 = and i1 %ret_167, %res_186
	store i1 %res_187, i1* %phi_82, align 4
	br label %search.11_and_terminate_block

search.11_and_terminate_block:
	%ret_188 = load i1, i1* %phi_82, align 4
	store i1 %ret_188, i1* %phi_81, align 4
	br i1 %ret_188, label %search.12_and_rhs_block, label %search.12_and_terminate_block

search.12_and_rhs_block:
	%identifier_register_189 = load i32**, i32*** @make, align 4
	%array_id_ptr_190 = getelementptr inbounds i32*, i32** %identifier_register_189, i32 0
	%res_array_191 = load i32*, i32** %array_id_ptr_190, align 4
	%array_id_ptr_192 = getelementptr inbounds i32, i32* %res_array_191, i32 0
	%res_array_193 = load i32, i32* %array_id_ptr_192, align 4
	%identifier_register_194 = load i32**, i32*** @make, align 4
	%array_id_ptr_195 = getelementptr inbounds i32*, i32** %identifier_register_194, i32 1
	%res_array_196 = load i32*, i32** %array_id_ptr_195, align 4
	%array_id_ptr_197 = getelementptr inbounds i32, i32* %res_array_196, i32 1
	%res_array_198 = load i32, i32* %array_id_ptr_197, align 4
	%res_199 = add i32 %res_array_193, %res_array_198
	%identifier_register_200 = load i32**, i32*** @make, align 4
	%array_id_ptr_201 = getelementptr inbounds i32*, i32** %identifier_register_200, i32 2
	%res_array_202 = load i32*, i32** %array_id_ptr_201, align 4
	%array_id_ptr_203 = getelementptr inbounds i32, i32* %res_array_202, i32 2
	%res_array_204 = load i32, i32* %array_id_ptr_203, align 4
	%res_205 = add i32 %res_199, %res_array_204
	%identifier_register_206 = load i32, i32* %alloca_s_6, align 4
	%res_207 = icmp eq i32 %res_205, %identifier_register_206
	%res_208 = and i1 %ret_188, %res_207
	store i1 %res_208, i1* %phi_81, align 4
	br label %search.12_and_terminate_block

search.12_and_terminate_block:
	%ret_209 = load i1, i1* %phi_81, align 4
	store i1 %ret_209, i1* %phi_80, align 4
	br i1 %ret_209, label %search.13_and_rhs_block, label %search.13_and_terminate_block

search.13_and_rhs_block:
	%identifier_register_210 = load i32**, i32*** @make, align 4
	%array_id_ptr_211 = getelementptr inbounds i32*, i32** %identifier_register_210, i32 2
	%res_array_212 = load i32*, i32** %array_id_ptr_211, align 4
	%array_id_ptr_213 = getelementptr inbounds i32, i32* %res_array_212, i32 0
	%res_array_214 = load i32, i32* %array_id_ptr_213, align 4
	%identifier_register_215 = load i32**, i32*** @make, align 4
	%array_id_ptr_216 = getelementptr inbounds i32*, i32** %identifier_register_215, i32 1
	%res_array_217 = load i32*, i32** %array_id_ptr_216, align 4
	%array_id_ptr_218 = getelementptr inbounds i32, i32* %res_array_217, i32 1
	%res_array_219 = load i32, i32* %array_id_ptr_218, align 4
	%res_220 = add i32 %res_array_214, %res_array_219
	%identifier_register_221 = load i32**, i32*** @make, align 4
	%array_id_ptr_222 = getelementptr inbounds i32*, i32** %identifier_register_221, i32 0
	%res_array_223 = load i32*, i32** %array_id_ptr_222, align 4
	%array_id_ptr_224 = getelementptr inbounds i32, i32* %res_array_223, i32 2
	%res_array_225 = load i32, i32* %array_id_ptr_224, align 4
	%res_226 = add i32 %res_220, %res_array_225
	%identifier_register_227 = load i32, i32* %alloca_s_6, align 4
	%res_228 = icmp eq i32 %res_226, %identifier_register_227
	%res_229 = and i1 %ret_209, %res_228
	store i1 %res_229, i1* %phi_80, align 4
	br label %search.13_and_terminate_block

search.13_and_terminate_block:
	%ret_230 = load i1, i1* %phi_80, align 4
	br i1 %ret_230, label %search.14_if_true, label %search.14_if_terminate

search.14_if_true:
	%identifier_register_231 = load i32*, i32** @count, align 4
	%array_id_ptr_232 = getelementptr inbounds i32, i32* %identifier_register_231, i32 0
	%res_array_233 = load i32, i32* %array_id_ptr_232, align 4
	%identifier_register_234 = load i32*, i32** @count, align 4
	%array_id_ptr_235 = getelementptr inbounds i32, i32* %identifier_register_234, i32 0
	%res_array_236 = load i32, i32* %array_id_ptr_235, align 4
	%res_237 = add i32 %res_array_236, 1
	store i32 %res_237, i32* %array_id_ptr_232, align 4
	%identifier_register_238 = load i32, i32* %alloca_i_7, align 4
	store i32 0, i32* %alloca_i_7, align 4
	br label %search.15_for_condition

search.15_for_condition:
	%identifier_register_239 = load i32, i32* %alloca_i_7, align 4
	%res_240 = icmp sle i32 %identifier_register_239, 2
	br i1 %res_240, label %search.15_for_loop, label %search.15_for_terminate

search.15_for_loop:
	%identifier_register_241 = load i32, i32* %alloca_j_8, align 4
	store i32 0, i32* %alloca_j_8, align 4
	br label %search.16_for_condition

search.16_for_condition:
	%identifier_register_242 = load i32, i32* %alloca_j_8, align 4
	%res_243 = icmp sle i32 %identifier_register_242, 2
	br i1 %res_243, label %search.16_for_loop, label %search.16_for_terminate

search.16_for_loop:
	%identifier_register_244 = load i32, i32* %alloca_j_8, align 4
	%identifier_register_245 = load i32, i32* %alloca_i_7, align 4
	%identifier_register_246 = load i32**, i32*** @make, align 4
	%array_id_ptr_247 = getelementptr inbounds i32*, i32** %identifier_register_246, i32 %identifier_register_245
	%res_array_248 = load i32*, i32** %array_id_ptr_247, align 4
	%array_id_ptr_249 = getelementptr inbounds i32, i32* %res_array_248, i32 %identifier_register_244
	%res_array_250 = load i32, i32* %array_id_ptr_249, align 4
	%ret_251 = call i8* @toString(i32 %res_array_250)
	call void @print(i8* %ret_251)
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.0, i32 0, i32 0))
	br label %search.16_for_execution

search.16_for_execution:
	%identifier_register_252 = load i32, i32* %alloca_j_8, align 4
	%tmp_253 = load i32, i32* %alloca_j_8, align 4
	%res_254 = add i32 %identifier_register_252, 1
	store i32 %res_254, i32* %alloca_j_8, align 4
	br label %search.16_for_condition

search.16_for_terminate:
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
	br label %search.15_for_execution

search.15_for_execution:
	%identifier_register_255 = load i32, i32* %alloca_i_7, align 4
	%tmp_256 = load i32, i32* %alloca_i_7, align 4
	%res_257 = add i32 %identifier_register_255, 1
	store i32 %res_257, i32* %alloca_i_7, align 4
	br label %search.15_for_condition

search.15_for_terminate:
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
	br label %search.14_if_terminate

search.14_if_terminate:
	br label %search.7_if_terminate

search.7_if_false:
	%identifier_register_258 = load i32, i32* %parameter_ptr_4, align 4
	%res_259 = icmp eq i32 %identifier_register_258, 2
	br i1 %res_259, label %search.17_if_true, label %search.17_if_false

search.17_if_true:
	%identifier_register_260 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_261 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_262 = load i32**, i32*** @make, align 4
	%array_id_ptr_263 = getelementptr inbounds i32*, i32** %identifier_register_262, i32 %identifier_register_261
	%res_array_264 = load i32*, i32** %array_id_ptr_263, align 4
	%array_id_ptr_265 = getelementptr inbounds i32, i32* %res_array_264, i32 %identifier_register_260
	%res_array_266 = load i32, i32* %array_id_ptr_265, align 4
	%identifier_register_267 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_268 = load i32**, i32*** @make, align 4
	%array_id_ptr_269 = getelementptr inbounds i32*, i32** %identifier_register_268, i32 %identifier_register_267
	%res_array_270 = load i32*, i32** %array_id_ptr_269, align 4
	%array_id_ptr_271 = getelementptr inbounds i32, i32* %res_array_270, i32 0
	%res_array_272 = load i32, i32* %array_id_ptr_271, align 4
	%res_273 = sub nsw i32 15, %res_array_272
	%identifier_register_274 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_275 = load i32**, i32*** @make, align 4
	%array_id_ptr_276 = getelementptr inbounds i32*, i32** %identifier_register_275, i32 %identifier_register_274
	%res_array_277 = load i32*, i32** %array_id_ptr_276, align 4
	%array_id_ptr_278 = getelementptr inbounds i32, i32* %res_array_277, i32 1
	%res_array_279 = load i32, i32* %array_id_ptr_278, align 4
	%res_280 = sub nsw i32 %res_273, %res_array_279
	store i32 %res_280, i32* %array_id_ptr_265, align 4
	%phi_281 = alloca i1, align 4
	%phi_282 = alloca i1, align 4
	%identifier_register_283 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_284 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_285 = load i32**, i32*** @make, align 4
	%array_id_ptr_286 = getelementptr inbounds i32*, i32** %identifier_register_285, i32 %identifier_register_284
	%res_array_287 = load i32*, i32** %array_id_ptr_286, align 4
	%array_id_ptr_288 = getelementptr inbounds i32, i32* %res_array_287, i32 %identifier_register_283
	%res_array_289 = load i32, i32* %array_id_ptr_288, align 4
	%res_290 = icmp sgt i32 %res_array_289, 0
	store i1 %res_290, i1* %phi_282, align 4
	br i1 %res_290, label %search.18_and_rhs_block, label %search.18_and_terminate_block

search.18_and_rhs_block:
	%identifier_register_291 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_292 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_293 = load i32**, i32*** @make, align 4
	%array_id_ptr_294 = getelementptr inbounds i32*, i32** %identifier_register_293, i32 %identifier_register_292
	%res_array_295 = load i32*, i32** %array_id_ptr_294, align 4
	%array_id_ptr_296 = getelementptr inbounds i32, i32* %res_array_295, i32 %identifier_register_291
	%res_array_297 = load i32, i32* %array_id_ptr_296, align 4
	%res_298 = icmp slt i32 %res_array_297, 10
	%res_299 = and i1 %res_290, %res_298
	store i1 %res_299, i1* %phi_282, align 4
	br label %search.18_and_terminate_block

search.18_and_terminate_block:
	%ret_300 = load i1, i1* %phi_282, align 4
	store i1 %ret_300, i1* %phi_281, align 4
	br i1 %ret_300, label %search.19_and_rhs_block, label %search.19_and_terminate_block

search.19_and_rhs_block:
	%identifier_register_301 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_302 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_303 = load i32**, i32*** @make, align 4
	%array_id_ptr_304 = getelementptr inbounds i32*, i32** %identifier_register_303, i32 %identifier_register_302
	%res_array_305 = load i32*, i32** %array_id_ptr_304, align 4
	%array_id_ptr_306 = getelementptr inbounds i32, i32* %res_array_305, i32 %identifier_register_301
	%res_array_307 = load i32, i32* %array_id_ptr_306, align 4
	%identifier_register_308 = load i32*, i32** @color, align 4
	%array_id_ptr_309 = getelementptr inbounds i32, i32* %identifier_register_308, i32 %res_array_307
	%res_array_310 = load i32, i32* %array_id_ptr_309, align 4
	%res_311 = icmp eq i32 %res_array_310, 0
	%res_312 = and i1 %ret_300, %res_311
	store i1 %res_312, i1* %phi_281, align 4
	br label %search.19_and_terminate_block

search.19_and_terminate_block:
	%ret_313 = load i1, i1* %phi_281, align 4
	br i1 %ret_313, label %search.20_if_true, label %search.20_if_terminate

search.20_if_true:
	%identifier_register_314 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_315 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_316 = load i32**, i32*** @make, align 4
	%array_id_ptr_317 = getelementptr inbounds i32*, i32** %identifier_register_316, i32 %identifier_register_315
	%res_array_318 = load i32*, i32** %array_id_ptr_317, align 4
	%array_id_ptr_319 = getelementptr inbounds i32, i32* %res_array_318, i32 %identifier_register_314
	%res_array_320 = load i32, i32* %array_id_ptr_319, align 4
	%identifier_register_321 = load i32*, i32** @color, align 4
	%array_id_ptr_322 = getelementptr inbounds i32, i32* %identifier_register_321, i32 %res_array_320
	%res_array_323 = load i32, i32* %array_id_ptr_322, align 4
	store i32 1, i32* %array_id_ptr_322, align 4
	%identifier_register_324 = load i32, i32* %parameter_ptr_4, align 4
	%res_325 = icmp eq i32 %identifier_register_324, 2
	br i1 %res_325, label %search.21_if_true, label %search.21_if_false

search.21_if_true:
	%identifier_register_326 = load i32, i32* %parameter_ptr_3, align 4
	%res_327 = add i32 %identifier_register_326, 1
	%identifier_register_328 = load i32, i32* %parameter_ptr_5, align 4
	%identifier_register_329 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_330 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_331 = load i32**, i32*** @make, align 4
	%array_id_ptr_332 = getelementptr inbounds i32*, i32** %identifier_register_331, i32 %identifier_register_330
	%res_array_333 = load i32*, i32** %array_id_ptr_332, align 4
	%array_id_ptr_334 = getelementptr inbounds i32, i32* %res_array_333, i32 %identifier_register_329
	%res_array_335 = load i32, i32* %array_id_ptr_334, align 4
	%res_336 = add i32 %identifier_register_328, %res_array_335
	call void @search(i32 %res_327, i32 0, i32 %res_336)
	br label %search.21_if_terminate

search.21_if_false:
	%identifier_register_337 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_338 = load i32, i32* %parameter_ptr_4, align 4
	%res_339 = add i32 %identifier_register_338, 1
	%identifier_register_340 = load i32, i32* %parameter_ptr_5, align 4
	%identifier_register_341 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_342 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_343 = load i32**, i32*** @make, align 4
	%array_id_ptr_344 = getelementptr inbounds i32*, i32** %identifier_register_343, i32 %identifier_register_342
	%res_array_345 = load i32*, i32** %array_id_ptr_344, align 4
	%array_id_ptr_346 = getelementptr inbounds i32, i32* %res_array_345, i32 %identifier_register_341
	%res_array_347 = load i32, i32* %array_id_ptr_346, align 4
	%res_348 = add i32 %identifier_register_340, %res_array_347
	call void @search(i32 %identifier_register_337, i32 %res_339, i32 %res_348)
	br label %search.21_if_terminate

search.21_if_terminate:
	%identifier_register_349 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_350 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_351 = load i32**, i32*** @make, align 4
	%array_id_ptr_352 = getelementptr inbounds i32*, i32** %identifier_register_351, i32 %identifier_register_350
	%res_array_353 = load i32*, i32** %array_id_ptr_352, align 4
	%array_id_ptr_354 = getelementptr inbounds i32, i32* %res_array_353, i32 %identifier_register_349
	%res_array_355 = load i32, i32* %array_id_ptr_354, align 4
	%identifier_register_356 = load i32*, i32** @color, align 4
	%array_id_ptr_357 = getelementptr inbounds i32, i32* %identifier_register_356, i32 %res_array_355
	%res_array_358 = load i32, i32* %array_id_ptr_357, align 4
	store i32 0, i32* %array_id_ptr_357, align 4
	br label %search.20_if_terminate

search.20_if_terminate:
	br label %search.17_if_terminate

search.17_if_false:
	%identifier_register_359 = load i32, i32* %alloca_i_7, align 4
	store i32 1, i32* %alloca_i_7, align 4
	br label %search.22_for_condition

search.22_for_condition:
	%identifier_register_360 = load i32, i32* %alloca_i_7, align 4
	%res_361 = icmp sle i32 %identifier_register_360, 9
	br i1 %res_361, label %search.22_for_loop, label %search.22_for_terminate

search.22_for_loop:
	%identifier_register_362 = load i32, i32* %alloca_i_7, align 4
	%identifier_register_363 = load i32*, i32** @color, align 4
	%array_id_ptr_364 = getelementptr inbounds i32, i32* %identifier_register_363, i32 %identifier_register_362
	%res_array_365 = load i32, i32* %array_id_ptr_364, align 4
	%res_366 = icmp eq i32 %res_array_365, 0
	br i1 %res_366, label %search.23_if_true, label %search.23_if_terminate

search.23_if_true:
	%identifier_register_367 = load i32, i32* %alloca_i_7, align 4
	%identifier_register_368 = load i32*, i32** @color, align 4
	%array_id_ptr_369 = getelementptr inbounds i32, i32* %identifier_register_368, i32 %identifier_register_367
	%res_array_370 = load i32, i32* %array_id_ptr_369, align 4
	store i32 1, i32* %array_id_ptr_369, align 4
	%identifier_register_371 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_372 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_373 = load i32**, i32*** @make, align 4
	%array_id_ptr_374 = getelementptr inbounds i32*, i32** %identifier_register_373, i32 %identifier_register_372
	%res_array_375 = load i32*, i32** %array_id_ptr_374, align 4
	%array_id_ptr_376 = getelementptr inbounds i32, i32* %res_array_375, i32 %identifier_register_371
	%res_array_377 = load i32, i32* %array_id_ptr_376, align 4
	%identifier_register_378 = load i32, i32* %alloca_i_7, align 4
	store i32 %identifier_register_378, i32* %array_id_ptr_376, align 4
	%identifier_register_379 = load i32, i32* %parameter_ptr_4, align 4
	%res_380 = icmp eq i32 %identifier_register_379, 2
	br i1 %res_380, label %search.24_if_true, label %search.24_if_false

search.24_if_true:
	%identifier_register_381 = load i32, i32* %parameter_ptr_3, align 4
	%res_382 = add i32 %identifier_register_381, 1
	%identifier_register_383 = load i32, i32* %parameter_ptr_5, align 4
	%identifier_register_384 = load i32, i32* %alloca_i_7, align 4
	%res_385 = add i32 %identifier_register_383, %identifier_register_384
	call void @search(i32 %res_382, i32 0, i32 %res_385)
	br label %search.24_if_terminate

search.24_if_false:
	%identifier_register_386 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_387 = load i32, i32* %parameter_ptr_4, align 4
	%res_388 = add i32 %identifier_register_387, 1
	%identifier_register_389 = load i32, i32* %parameter_ptr_5, align 4
	%identifier_register_390 = load i32, i32* %alloca_i_7, align 4
	%res_391 = add i32 %identifier_register_389, %identifier_register_390
	call void @search(i32 %identifier_register_386, i32 %res_388, i32 %res_391)
	br label %search.24_if_terminate

search.24_if_terminate:
	%identifier_register_392 = load i32, i32* %parameter_ptr_4, align 4
	%identifier_register_393 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_394 = load i32**, i32*** @make, align 4
	%array_id_ptr_395 = getelementptr inbounds i32*, i32** %identifier_register_394, i32 %identifier_register_393
	%res_array_396 = load i32*, i32** %array_id_ptr_395, align 4
	%array_id_ptr_397 = getelementptr inbounds i32, i32* %res_array_396, i32 %identifier_register_392
	%res_array_398 = load i32, i32* %array_id_ptr_397, align 4
	store i32 0, i32* %array_id_ptr_397, align 4
	%identifier_register_399 = load i32, i32* %alloca_i_7, align 4
	%identifier_register_400 = load i32*, i32** @color, align 4
	%array_id_ptr_401 = getelementptr inbounds i32, i32* %identifier_register_400, i32 %identifier_register_399
	%res_array_402 = load i32, i32* %array_id_ptr_401, align 4
	store i32 0, i32* %array_id_ptr_401, align 4
	br label %search.23_if_terminate

search.23_if_terminate:
	br label %search.22_for_execution

search.22_for_execution:
	%identifier_register_403 = load i32, i32* %alloca_i_7, align 4
	%tmp_404 = load i32, i32* %alloca_i_7, align 4
	%res_405 = add i32 %identifier_register_403, 1
	store i32 %res_405, i32* %alloca_i_7, align 4
	br label %search.22_for_condition

search.22_for_terminate:
	br label %search.17_if_terminate

search.17_if_terminate:
	br label %search.7_if_terminate

search.7_if_terminate:
	br label %search.5_if_terminate

search.5_if_terminate:
	br label %search.return

search.return:
	ret void

}

define i32 @main() #0 {
main.entry:
	call void @__global_init_0()
	call void @__global_init_1()
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
	%identifier_register_1 = load i32*, i32** @count, align 4
	%array_id_ptr_2 = getelementptr inbounds i32, i32* %identifier_register_1, i32 0
	%res_array_3 = load i32, i32* %array_id_ptr_2, align 4
	store i32 0, i32* %array_id_ptr_2, align 4
	call void @origin(i32 3)
	call void @search(i32 0, i32 0, i32 0)
	%identifier_register_4 = load i32*, i32** @count, align 4
	%array_id_ptr_5 = getelementptr inbounds i32, i32* %identifier_register_4, i32 0
	%res_array_6 = load i32, i32* %array_id_ptr_5, align 4
	%ret_7 = call i8* @toString(i32 %res_array_6)
	call void @println(i8* %ret_7)
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_8 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_8

}

define void @__global_init_0() #0 {
__global_init_0.entry:
	%arr_size_reg_0 = mul i32 10, 4
	%malloc_size_1 = add i32 %arr_size_reg_0, 4
	%malloc_ptr_2 = call i8* @__malloc(i32 %malloc_size_1)
	%arr_len_ptr_3 = bitcast i8* %malloc_ptr_2 to i32*
	store i32 10, i32* %arr_len_ptr_3, align 4
	%arr_char_ptr_4 = getelementptr inbounds i8, i8* %malloc_ptr_2, i32 4
	%arr_ptr_5 = bitcast i8* %arr_char_ptr_4 to i32*
	store i32* %arr_ptr_5, i32** @color, align 4
	br label %__global_init_0.return

__global_init_0.return:
	ret void

}

define void @__global_init_1() #0 {
__global_init_1.entry:
	%arr_size_reg_0 = mul i32 1, 4
	%malloc_size_1 = add i32 %arr_size_reg_0, 4
	%malloc_ptr_2 = call i8* @__malloc(i32 %malloc_size_1)
	%arr_len_ptr_3 = bitcast i8* %malloc_ptr_2 to i32*
	store i32 1, i32* %arr_len_ptr_3, align 4
	%arr_char_ptr_4 = getelementptr inbounds i8, i8* %malloc_ptr_2, i32 4
	%arr_ptr_5 = bitcast i8* %arr_char_ptr_4 to i32*
	store i32* %arr_ptr_5, i32** @count, align 4
	br label %__global_init_1.return

__global_init_1.return:
	ret void

}

