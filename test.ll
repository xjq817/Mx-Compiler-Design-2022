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

%class.node = type { i32, i32, %class.node* }

@hashsize = global i32 0, align 4
@table = global %class.node** null, align 4

define i32 @getHash(i32 %n_0) #0 {
getHash.entry:
	store i32 %n_0, i32 %__tmp_42, align 4
	store i32 %__tmp_42, i32 %__tmp_44, align 4
	%res_4 = mul i32 %__tmp_44, 237
	%identifier_register_5 = load i32, i32* @hashsize, align 4
	%res_6 = srem i32 %res_4, %identifier_register_5
	store i32 %res_6, i32 %__tmp_43, align 4
	br label %getHash.return

getHash.return:
	store i32 %__tmp_43, i32 %__tmp_45, align 4
	ret i32 %__tmp_45

}

define void @put(i32 %key_0, i32 %data_1) #0 {
put.entry:
	store i32 %key_0, i32 %__tmp_46, align 4
	store i32 %data_1, i32 %__tmp_47, align 4
	store i32 0, i32 %__tmp_48, align 4
	store null null, %class.node* %__tmp_49, align 4
	store i32 %__tmp_48, i32 %__tmp_50, align 4
	store i32 %__tmp_46, i32 %__tmp_51, align 4
	%ret_8 = call i32 @getHash(i32 %__tmp_51)
	store i32 %ret_8, i32 %__tmp_48, align 4
	store i32 %__tmp_48, i32 %__tmp_52, align 4
	%identifier_register_10 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_11 = getelementptr inbounds %class.node*, %class.node** %identifier_register_10, i32 %__tmp_52
	%res_array_12 = load %class.node*, %class.node** %array_id_ptr_11, align 4
	%res_13 = icmp eq %class.node* %res_array_12, null
	br i1 %res_13, label %put.0_if_true, label %put.0_if_terminate

put.0_if_true:
	store i32 %__tmp_48, i32 %__tmp_53, align 4
	%identifier_register_15 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_16 = getelementptr inbounds %class.node*, %class.node** %identifier_register_15, i32 %__tmp_53
	%res_array_17 = load %class.node*, %class.node** %array_id_ptr_16, align 4
	%malloc_ptr_18 = call i8* @__malloc(i32 12)
	%new_class_reg_19 = bitcast i8* %malloc_ptr_18 to %class.node*
	store %class.node* %new_class_reg_19, %class.node** %array_id_ptr_16, align 4
	store i32 %__tmp_48, i32 %__tmp_54, align 4
	%identifier_register_21 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_22 = getelementptr inbounds %class.node*, %class.node** %identifier_register_21, i32 %__tmp_54
	%res_array_23 = load %class.node*, %class.node** %array_id_ptr_22, align 4
	%class_member_ptr_24 = getelementptr inbounds %class.node, %class.node* %res_array_23, i32 0, i32 0
	%class_member_25 = load i32, i32* %class_member_ptr_24, align 4
	store i32 %__tmp_46, i32 %__tmp_55, align 4
	store i32 %__tmp_55, i32* %class_member_ptr_24, align 4
	store i32 %__tmp_48, i32 %__tmp_56, align 4
	%identifier_register_28 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_29 = getelementptr inbounds %class.node*, %class.node** %identifier_register_28, i32 %__tmp_56
	%res_array_30 = load %class.node*, %class.node** %array_id_ptr_29, align 4
	%class_member_ptr_31 = getelementptr inbounds %class.node, %class.node* %res_array_30, i32 0, i32 1
	%class_member_32 = load i32, i32* %class_member_ptr_31, align 4
	store i32 %__tmp_47, i32 %__tmp_57, align 4
	store i32 %__tmp_57, i32* %class_member_ptr_31, align 4
	store i32 %__tmp_48, i32 %__tmp_58, align 4
	%identifier_register_35 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_36 = getelementptr inbounds %class.node*, %class.node** %identifier_register_35, i32 %__tmp_58
	%res_array_37 = load %class.node*, %class.node** %array_id_ptr_36, align 4
	%class_member_ptr_38 = getelementptr inbounds %class.node, %class.node* %res_array_37, i32 0, i32 2
	%class_member_39 = load %class.node*, %class.node** %class_member_ptr_38, align 4
	store null null, %class.node** %class_member_ptr_38, align 4
	br label %put.return

put.0_if_terminate:
	store %class.node* %__tmp_49, %class.node* %__tmp_59, align 4
	store i32 %__tmp_48, i32 %__tmp_60, align 4
	%identifier_register_42 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_43 = getelementptr inbounds %class.node*, %class.node** %identifier_register_42, i32 %__tmp_60
	%res_array_44 = load %class.node*, %class.node** %array_id_ptr_43, align 4
	store %class.node* %res_array_44, %class.node* %__tmp_49, align 4
	br label %put.1_while_condition

put.1_while_condition:
	store %class.node* %__tmp_49, %class.node* %__tmp_61, align 4
	%class_member_ptr_46 = getelementptr inbounds %class.node, %class.node* %__tmp_61, i32 0, i32 0
	%class_member_47 = load i32, i32* %class_member_ptr_46, align 4
	store i32 %__tmp_46, i32 %__tmp_62, align 4
	%res_49 = icmp ne i32 %class_member_47, %__tmp_62
	br i1 %res_49, label %put.1_while_loop, label %put.1_while_terminate

put.1_while_loop:
	store %class.node* %__tmp_49, %class.node* %__tmp_63, align 4
	%class_member_ptr_51 = getelementptr inbounds %class.node, %class.node* %__tmp_63, i32 0, i32 2
	%class_member_52 = load %class.node*, %class.node** %class_member_ptr_51, align 4
	%res_53 = icmp eq %class.node* %class_member_52, null
	br i1 %res_53, label %put.2_if_true, label %put.2_if_terminate

put.2_if_true:
	store %class.node* %__tmp_49, %class.node* %__tmp_64, align 4
	%class_member_ptr_55 = getelementptr inbounds %class.node, %class.node* %__tmp_64, i32 0, i32 2
	%class_member_56 = load %class.node*, %class.node** %class_member_ptr_55, align 4
	%malloc_ptr_57 = call i8* @__malloc(i32 12)
	%new_class_reg_58 = bitcast i8* %malloc_ptr_57 to %class.node*
	store %class.node* %new_class_reg_58, %class.node** %class_member_ptr_55, align 4
	store %class.node* %__tmp_49, %class.node* %__tmp_65, align 4
	%class_member_ptr_60 = getelementptr inbounds %class.node, %class.node* %__tmp_65, i32 0, i32 2
	%class_member_61 = load %class.node*, %class.node** %class_member_ptr_60, align 4
	%class_member_ptr_62 = getelementptr inbounds %class.node, %class.node* %class_member_61, i32 0, i32 0
	%class_member_63 = load i32, i32* %class_member_ptr_62, align 4
	store i32 %__tmp_46, i32 %__tmp_66, align 4
	store i32 %__tmp_66, i32* %class_member_ptr_62, align 4
	store %class.node* %__tmp_49, %class.node* %__tmp_67, align 4
	%class_member_ptr_66 = getelementptr inbounds %class.node, %class.node* %__tmp_67, i32 0, i32 2
	%class_member_67 = load %class.node*, %class.node** %class_member_ptr_66, align 4
	%class_member_ptr_68 = getelementptr inbounds %class.node, %class.node* %class_member_67, i32 0, i32 2
	%class_member_69 = load %class.node*, %class.node** %class_member_ptr_68, align 4
	store null null, %class.node** %class_member_ptr_68, align 4
	br label %put.2_if_terminate

put.2_if_terminate:
	store %class.node* %__tmp_49, %class.node* %__tmp_68, align 4
	store %class.node* %__tmp_49, %class.node* %__tmp_69, align 4
	%class_member_ptr_72 = getelementptr inbounds %class.node, %class.node* %__tmp_69, i32 0, i32 2
	%class_member_73 = load %class.node*, %class.node** %class_member_ptr_72, align 4
	store %class.node* %class_member_73, %class.node* %__tmp_49, align 4
	br label %put.1_while_condition

put.1_while_terminate:
	store %class.node* %__tmp_49, %class.node* %__tmp_70, align 4
	%class_member_ptr_75 = getelementptr inbounds %class.node, %class.node* %__tmp_70, i32 0, i32 1
	%class_member_76 = load i32, i32* %class_member_ptr_75, align 4
	store i32 %__tmp_47, i32 %__tmp_71, align 4
	store i32 %__tmp_71, i32* %class_member_ptr_75, align 4
	br label %put.return

put.return:
	ret void

}

define i32 @get(i32 %key_0) #0 {
get.entry:
	store i32 %key_0, i32 %__tmp_72, align 4
	store null null, %class.node* %__tmp_74, align 4
	store %class.node* %__tmp_74, %class.node* %__tmp_75, align 4
	store i32 %__tmp_72, i32 %__tmp_76, align 4
	%ret_6 = call i32 @getHash(i32 %__tmp_76)
	%identifier_register_7 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_8 = getelementptr inbounds %class.node*, %class.node** %identifier_register_7, i32 %ret_6
	%res_array_9 = load %class.node*, %class.node** %array_id_ptr_8, align 4
	store %class.node* %res_array_9, %class.node* %__tmp_74, align 4
	br label %get.3_while_condition

get.3_while_condition:
	store %class.node* %__tmp_74, %class.node* %__tmp_77, align 4
	%class_member_ptr_11 = getelementptr inbounds %class.node, %class.node* %__tmp_77, i32 0, i32 0
	%class_member_12 = load i32, i32* %class_member_ptr_11, align 4
	store i32 %__tmp_72, i32 %__tmp_78, align 4
	%res_14 = icmp ne i32 %class_member_12, %__tmp_78
	br i1 %res_14, label %get.3_while_loop, label %get.3_while_terminate

get.3_while_loop:
	store %class.node* %__tmp_74, %class.node* %__tmp_79, align 4
	store %class.node* %__tmp_74, %class.node* %__tmp_80, align 4
	%class_member_ptr_17 = getelementptr inbounds %class.node, %class.node* %__tmp_80, i32 0, i32 2
	%class_member_18 = load %class.node*, %class.node** %class_member_ptr_17, align 4
	store %class.node* %class_member_18, %class.node* %__tmp_74, align 4
	br label %get.3_while_condition

get.3_while_terminate:
	store %class.node* %__tmp_74, %class.node* %__tmp_81, align 4
	%class_member_ptr_20 = getelementptr inbounds %class.node, %class.node* %__tmp_81, i32 0, i32 1
	%class_member_21 = load i32, i32* %class_member_ptr_20, align 4
	store i32 %class_member_21, i32 %__tmp_73, align 4
	br label %get.return

get.return:
	store i32 %__tmp_73, i32 %__tmp_82, align 4
	ret i32 %__tmp_82

}

define i32 @main() #0 {
main.entry:
	call void @__global_init_0()
	store i32 0, i32 %__tmp_83, align 4
	store i32 0, i32 %__tmp_84, align 4
	%identifier_register_2 = load %class.node**, %class.node*** @table, align 4
	%arr_size_reg_3 = mul i32 100, 4
	%malloc_size_4 = add i32 %arr_size_reg_3, 4
	%malloc_ptr_5 = call i8* @__malloc(i32 %malloc_size_4)
	%arr_len_ptr_6 = bitcast i8* %malloc_ptr_5 to i32*
	store i32 100, i32* %arr_len_ptr_6, align 4
	%arr_char_ptr_7 = getelementptr inbounds i8, i8* %malloc_ptr_5, i32 4
	%arr_ptr_8 = bitcast i8* %arr_char_ptr_7 to %class.node**
	store %class.node** %arr_ptr_8, %class.node*** @table, align 4
	store i32 %__tmp_84, i32 %__tmp_85, align 4
	store i32 0, i32 %__tmp_84, align 4
	br label %main.4_for_condition

main.4_for_condition:
	store i32 %__tmp_84, i32 %__tmp_86, align 4
	%identifier_register_11 = load i32, i32* @hashsize, align 4
	%res_12 = icmp slt i32 %__tmp_86, %identifier_register_11
	br i1 %res_12, label %main.4_for_loop, label %main.4_for_terminate

main.4_for_loop:
	store i32 %__tmp_84, i32 %__tmp_87, align 4
	%identifier_register_14 = load %class.node**, %class.node*** @table, align 4
	%array_id_ptr_15 = getelementptr inbounds %class.node*, %class.node** %identifier_register_14, i32 %__tmp_87
	%res_array_16 = load %class.node*, %class.node** %array_id_ptr_15, align 4
	store null null, %class.node** %array_id_ptr_15, align 4
	br label %main.4_for_execution

main.4_for_execution:
	store i32 %__tmp_84, i32 %__tmp_88, align 4
	store i32 %__tmp_84, i32 %__tmp_89, align 4
	%res_19 = add i32 %__tmp_88, 1
	store i32 %res_19, i32 %__tmp_84, align 4
	br label %main.4_for_condition

main.4_for_terminate:
	store i32 %__tmp_84, i32 %__tmp_90, align 4
	store i32 0, i32 %__tmp_84, align 4
	br label %main.5_for_condition

main.5_for_condition:
	store i32 %__tmp_84, i32 %__tmp_91, align 4
	%res_22 = icmp slt i32 %__tmp_91, 1000
	br i1 %res_22, label %main.5_for_loop, label %main.5_for_terminate

main.5_for_loop:
	store i32 %__tmp_84, i32 %__tmp_92, align 4
	store i32 %__tmp_84, i32 %__tmp_93, align 4
	call void @put(i32 %__tmp_92, i32 %__tmp_93)
	br label %main.5_for_execution

main.5_for_execution:
	store i32 %__tmp_84, i32 %__tmp_94, align 4
	store i32 %__tmp_84, i32 %__tmp_95, align 4
	%res_27 = add i32 %__tmp_94, 1
	store i32 %res_27, i32 %__tmp_84, align 4
	br label %main.5_for_condition

main.5_for_terminate:
	store i32 %__tmp_84, i32 %__tmp_96, align 4
	store i32 0, i32 %__tmp_84, align 4
	br label %main.6_for_condition

main.6_for_condition:
	store i32 %__tmp_84, i32 %__tmp_97, align 4
	%res_30 = icmp slt i32 %__tmp_97, 1000
	br i1 %res_30, label %main.6_for_loop, label %main.6_for_terminate

main.6_for_loop:
	store i32 %__tmp_84, i32 %__tmp_98, align 4
	%ret_32 = call i8* @toString(i32 %__tmp_98)
	%res_33 = call i8* @__merge_string(i8* %ret_32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.0, i32 0, i32 0))
	store i32 %__tmp_84, i32 %__tmp_99, align 4
	%ret_35 = call i32 @get(i32 %__tmp_99)
	%ret_36 = call i8* @toString(i32 %ret_35)
	%res_37 = call i8* @__merge_string(i8* %res_33, i8* %ret_36)
	call void @println(i8* %res_37)
	br label %main.6_for_execution

main.6_for_execution:
	store i32 %__tmp_84, i32 %__tmp_100, align 4
	store i32 %__tmp_84, i32 %__tmp_101, align 4
	%res_40 = add i32 %__tmp_100, 1
	store i32 %res_40, i32 %__tmp_84, align 4
	br label %main.6_for_condition

main.6_for_terminate:
	store i32 0, i32 %__tmp_83, align 4
	br label %main.return

main.return:
	store i32 %__tmp_83, i32 %__tmp_102, align 4
	ret i32 %__tmp_102

}

define void @__global_init_0() #0 {
__global_init_0.entry:
	store i32 100, i32* @hashsize, align 4
	br label %__global_init_0.return

__global_init_0.return:
	ret void

}

