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

@.str.0 = private unnamed_addr constant [3 x i8] c"-1\00"
@.str.1 = private unnamed_addr constant [2 x i8] c" \00"
@.str.2 = private unnamed_addr constant [1 x i8] c"\00"

%class.Edge = type { i32, i32, i32 }
%class.EdgeList = type { %class.Edge**, i32*, i32*, i32 }
%class.Array_Node = type { %class.Node**, i32 }
%class.Heap_Node = type { %class.Array_Node* }
%class.Node = type { i32, i32 }

@n = global i32 0, align 4
@m = global i32 0, align 4
@g = common global %class.EdgeList* null, align 4
@INF = global i32 0, align 4

define void @EdgeList.init(%class.EdgeList* %__this_ptr_0, i32 %n_1, i32 %m_2) #0 {
EdgeList.init.entry:
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList* %__tmp_30, align 4
	store i32 %n_1, i32 %__tmp_31, align 4
	store i32 %m_2, i32 %__tmp_32, align 4
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_34, align 4
	%var_reg_7 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_34, i32 0, i32 0
	%identifier_register_8 = load %class.Edge**, %class.Edge*** %var_reg_7, align 4
	store i32 %__tmp_32, i32 %__tmp_35, align 4
	%arr_size_reg_10 = mul i32 %__tmp_35, 4
	%malloc_size_11 = add i32 %arr_size_reg_10, 4
	%malloc_ptr_12 = call i8* @__malloc(i32 %malloc_size_11)
	%arr_len_ptr_13 = bitcast i8* %malloc_ptr_12 to i32*
	store i32 %__tmp_35, i32* %arr_len_ptr_13, align 4
	%arr_char_ptr_14 = getelementptr inbounds i8, i8* %malloc_ptr_12, i32 4
	%arr_ptr_15 = bitcast i8* %arr_char_ptr_14 to %class.Edge**
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_36, align 4
	%var_reg_17 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_36, i32 0, i32 0
	store %class.Edge** %arr_ptr_15, %class.Edge*** %var_reg_17, align 4
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_37, align 4
	%var_reg_19 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_37, i32 0, i32 1
	%identifier_register_20 = load i32*, i32** %var_reg_19, align 4
	store i32 %__tmp_32, i32 %__tmp_38, align 4
	%arr_size_reg_22 = mul i32 %__tmp_38, 4
	%malloc_size_23 = add i32 %arr_size_reg_22, 4
	%malloc_ptr_24 = call i8* @__malloc(i32 %malloc_size_23)
	%arr_len_ptr_25 = bitcast i8* %malloc_ptr_24 to i32*
	store i32 %__tmp_38, i32* %arr_len_ptr_25, align 4
	%arr_char_ptr_26 = getelementptr inbounds i8, i8* %malloc_ptr_24, i32 4
	%arr_ptr_27 = bitcast i8* %arr_char_ptr_26 to i32*
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_39, align 4
	%var_reg_29 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_39, i32 0, i32 1
	store i32* %arr_ptr_27, i32** %var_reg_29, align 4
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_40, align 4
	%var_reg_31 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_40, i32 0, i32 2
	%identifier_register_32 = load i32*, i32** %var_reg_31, align 4
	store i32 %__tmp_31, i32 %__tmp_41, align 4
	%arr_size_reg_34 = mul i32 %__tmp_41, 4
	%malloc_size_35 = add i32 %arr_size_reg_34, 4
	%malloc_ptr_36 = call i8* @__malloc(i32 %malloc_size_35)
	%arr_len_ptr_37 = bitcast i8* %malloc_ptr_36 to i32*
	store i32 %__tmp_41, i32* %arr_len_ptr_37, align 4
	%arr_char_ptr_38 = getelementptr inbounds i8, i8* %malloc_ptr_36, i32 4
	%arr_ptr_39 = bitcast i8* %arr_char_ptr_38 to i32*
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_42, align 4
	%var_reg_41 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_42, i32 0, i32 2
	store i32* %arr_ptr_39, i32** %var_reg_41, align 4
	store i32 0, i32 %__tmp_33, align 4
	store i32 %__tmp_33, i32 %__tmp_43, align 4
	store i32 0, i32 %__tmp_33, align 4
	br label %EdgeList.init.0_for_condition

EdgeList.init.0_for_condition:
	store i32 %__tmp_33, i32 %__tmp_44, align 4
	store i32 %__tmp_32, i32 %__tmp_45, align 4
	%res_46 = icmp slt i32 %__tmp_44, %__tmp_45
	br i1 %res_46, label %EdgeList.init.0_for_loop, label %EdgeList.init.0_for_terminate

EdgeList.init.0_for_loop:
	store i32 %__tmp_33, i32 %__tmp_46, align 4
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_47, align 4
	%var_reg_49 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_47, i32 0, i32 1
	%identifier_register_50 = load i32*, i32** %var_reg_49, align 4
	%array_id_ptr_51 = getelementptr inbounds i32, i32* %identifier_register_50, i32 %__tmp_46
	%res_array_52 = load i32, i32* %array_id_ptr_51, align 4
	%res_53 = sub nsw i32 0, 1
	store i32 %res_53, i32* %array_id_ptr_51, align 4
	br label %EdgeList.init.0_for_execution

EdgeList.init.0_for_execution:
	store i32 %__tmp_33, i32 %__tmp_48, align 4
	%res_55 = add i32 %__tmp_48, 1
	store i32 %res_55, i32 %__tmp_33, align 4
	br label %EdgeList.init.0_for_condition

EdgeList.init.0_for_terminate:
	store i32 %__tmp_33, i32 %__tmp_49, align 4
	store i32 0, i32 %__tmp_33, align 4
	br label %EdgeList.init.1_for_condition

EdgeList.init.1_for_condition:
	store i32 %__tmp_33, i32 %__tmp_50, align 4
	store i32 %__tmp_31, i32 %__tmp_51, align 4
	%res_59 = icmp slt i32 %__tmp_50, %__tmp_51
	br i1 %res_59, label %EdgeList.init.1_for_loop, label %EdgeList.init.1_for_terminate

EdgeList.init.1_for_loop:
	store i32 %__tmp_33, i32 %__tmp_52, align 4
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_53, align 4
	%var_reg_62 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_53, i32 0, i32 2
	%identifier_register_63 = load i32*, i32** %var_reg_62, align 4
	%array_id_ptr_64 = getelementptr inbounds i32, i32* %identifier_register_63, i32 %__tmp_52
	%res_array_65 = load i32, i32* %array_id_ptr_64, align 4
	%res_66 = sub nsw i32 0, 1
	store i32 %res_66, i32* %array_id_ptr_64, align 4
	br label %EdgeList.init.1_for_execution

EdgeList.init.1_for_execution:
	store i32 %__tmp_33, i32 %__tmp_54, align 4
	%res_68 = add i32 %__tmp_54, 1
	store i32 %res_68, i32 %__tmp_33, align 4
	br label %EdgeList.init.1_for_condition

EdgeList.init.1_for_terminate:
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_55, align 4
	%var_reg_70 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_55, i32 0, i32 3
	%identifier_register_71 = load i32, i32* %var_reg_70, align 4
	store %class.EdgeList* %__tmp_30, %class.EdgeList* %__tmp_56, align 4
	%var_reg_73 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_56, i32 0, i32 3
	store i32 0, i32* %var_reg_73, align 4
	br label %EdgeList.init.return

EdgeList.init.return:
	ret void

}

define void @EdgeList.addEdge(%class.EdgeList* %__this_ptr_0, i32 %u_1, i32 %v_2, i32 %w_3) #0 {
EdgeList.addEdge.entry:
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList* %__tmp_57, align 4
	store i32 %u_1, i32 %__tmp_58, align 4
	store i32 %v_2, i32 %__tmp_59, align 4
	store i32 %w_3, i32 %__tmp_60, align 4
	%malloc_ptr_9 = call i8* @__malloc(i32 12)
	%new_class_reg_10 = bitcast i8* %malloc_ptr_9 to %class.Edge*
	store %class.Edge* %new_class_reg_10, %class.Edge* %__tmp_61, align 4
	store %class.Edge* %__tmp_61, %class.Edge* %__tmp_62, align 4
	%class_member_ptr_12 = getelementptr inbounds %class.Edge, %class.Edge* %__tmp_62, i32 0, i32 0
	%class_member_13 = load i32, i32* %class_member_ptr_12, align 4
	store i32 %__tmp_58, i32 %__tmp_63, align 4
	store i32 %__tmp_63, i32* %class_member_ptr_12, align 4
	store %class.Edge* %__tmp_61, %class.Edge* %__tmp_64, align 4
	%class_member_ptr_16 = getelementptr inbounds %class.Edge, %class.Edge* %__tmp_64, i32 0, i32 1
	%class_member_17 = load i32, i32* %class_member_ptr_16, align 4
	store i32 %__tmp_59, i32 %__tmp_65, align 4
	store i32 %__tmp_65, i32* %class_member_ptr_16, align 4
	store %class.Edge* %__tmp_61, %class.Edge* %__tmp_66, align 4
	%class_member_ptr_20 = getelementptr inbounds %class.Edge, %class.Edge* %__tmp_66, i32 0, i32 2
	%class_member_21 = load i32, i32* %class_member_ptr_20, align 4
	store i32 %__tmp_60, i32 %__tmp_67, align 4
	store i32 %__tmp_67, i32* %class_member_ptr_20, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_68, align 4
	%var_reg_24 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_68, i32 0, i32 3
	%identifier_register_25 = load i32, i32* %var_reg_24, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_69, align 4
	%var_reg_27 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_69, i32 0, i32 0
	%identifier_register_28 = load %class.Edge**, %class.Edge*** %var_reg_27, align 4
	%array_id_ptr_29 = getelementptr inbounds %class.Edge*, %class.Edge** %identifier_register_28, i32 %identifier_register_25
	%res_array_30 = load %class.Edge*, %class.Edge** %array_id_ptr_29, align 4
	store %class.Edge* %__tmp_61, %class.Edge* %__tmp_70, align 4
	store %class.Edge* %__tmp_70, %class.Edge** %array_id_ptr_29, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_71, align 4
	%var_reg_33 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_71, i32 0, i32 3
	%identifier_register_34 = load i32, i32* %var_reg_33, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_72, align 4
	%var_reg_36 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_72, i32 0, i32 1
	%identifier_register_37 = load i32*, i32** %var_reg_36, align 4
	%array_id_ptr_38 = getelementptr inbounds i32, i32* %identifier_register_37, i32 %identifier_register_34
	%res_array_39 = load i32, i32* %array_id_ptr_38, align 4
	store i32 %__tmp_58, i32 %__tmp_73, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_74, align 4
	%var_reg_42 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_74, i32 0, i32 2
	%identifier_register_43 = load i32*, i32** %var_reg_42, align 4
	%array_id_ptr_44 = getelementptr inbounds i32, i32* %identifier_register_43, i32 %__tmp_73
	%res_array_45 = load i32, i32* %array_id_ptr_44, align 4
	store i32 %res_array_45, i32* %array_id_ptr_38, align 4
	store i32 %__tmp_58, i32 %__tmp_75, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_76, align 4
	%var_reg_48 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_76, i32 0, i32 2
	%identifier_register_49 = load i32*, i32** %var_reg_48, align 4
	%array_id_ptr_50 = getelementptr inbounds i32, i32* %identifier_register_49, i32 %__tmp_75
	%res_array_51 = load i32, i32* %array_id_ptr_50, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_77, align 4
	%var_reg_53 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_77, i32 0, i32 3
	%identifier_register_54 = load i32, i32* %var_reg_53, align 4
	store i32 %identifier_register_54, i32* %array_id_ptr_50, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_78, align 4
	%var_reg_56 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_78, i32 0, i32 3
	%identifier_register_57 = load i32, i32* %var_reg_56, align 4
	store %class.EdgeList* %__tmp_57, %class.EdgeList* %__tmp_79, align 4
	%var_reg_60 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_79, i32 0, i32 3
	%res_58 = add i32 %identifier_register_57, 1
	store i32 %res_58, i32* %var_reg_60, align 4
	br label %EdgeList.addEdge.return

EdgeList.addEdge.return:
	ret void

}

define i32 @EdgeList.nVertices(%class.EdgeList* %__this_ptr_0) #0 {
EdgeList.nVertices.entry:
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList* %__tmp_80, align 4
	store %class.EdgeList* %__tmp_80, %class.EdgeList* %__tmp_82, align 4
	%var_reg_4 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_82, i32 0, i32 2
	%identifier_register_5 = load i32*, i32** %var_reg_4, align 4
	%arr_to_int_7 = bitcast i32* %identifier_register_5 to i32*
	%arr_len_ptr_6 = getelementptr inbounds i32, i32* %arr_to_int_7, i32 -1
	%arr_len_8 = load i32, i32* %arr_len_ptr_6, align 4
	store i32 %arr_len_8, i32 %__tmp_81, align 4
	br label %EdgeList.nVertices.return

EdgeList.nVertices.return:
	store i32 %__tmp_81, i32 %__tmp_83, align 4
	ret i32 %__tmp_83

}

define i32 @EdgeList.nEdges(%class.EdgeList* %__this_ptr_0) #0 {
EdgeList.nEdges.entry:
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList* %__tmp_84, align 4
	store %class.EdgeList* %__tmp_84, %class.EdgeList* %__tmp_86, align 4
	%var_reg_4 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %__tmp_86, i32 0, i32 0
	%identifier_register_5 = load %class.Edge**, %class.Edge*** %var_reg_4, align 4
	%arr_to_int_7 = bitcast %class.Edge** %identifier_register_5 to i32*
	%arr_len_ptr_6 = getelementptr inbounds i32, i32* %arr_to_int_7, i32 -1
	%arr_len_8 = load i32, i32* %arr_len_ptr_6, align 4
	store i32 %arr_len_8, i32 %__tmp_85, align 4
	br label %EdgeList.nEdges.return

EdgeList.nEdges.return:
	store i32 %__tmp_85, i32 %__tmp_87, align 4
	ret i32 %__tmp_87

}

define void @Array_Node.__cons(%class.Array_Node* %__this_ptr_1) #0 {
Array_Node.__cons.entry:
	store %class.Array_Node* %__this_ptr_1, %class.Array_Node* %__tmp_88, align 4
	store %class.Array_Node* %__tmp_88, %class.Array_Node* %__tmp_89, align 4
	%var_reg_3 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_89, i32 0, i32 1
	%identifier_register_4 = load i32, i32* %var_reg_3, align 4
	store %class.Array_Node* %__tmp_88, %class.Array_Node* %__tmp_90, align 4
	%var_reg_6 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_90, i32 0, i32 1
	store i32 0, i32* %var_reg_6, align 4
	store %class.Array_Node* %__tmp_88, %class.Array_Node* %__tmp_91, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_91, i32 0, i32 0
	%identifier_register_9 = load %class.Node**, %class.Node*** %var_reg_8, align 4
	%arr_size_reg_10 = mul i32 16, 4
	%malloc_size_11 = add i32 %arr_size_reg_10, 4
	%malloc_ptr_12 = call i8* @__malloc(i32 %malloc_size_11)
	%arr_len_ptr_13 = bitcast i8* %malloc_ptr_12 to i32*
	store i32 16, i32* %arr_len_ptr_13, align 4
	%arr_char_ptr_14 = getelementptr inbounds i8, i8* %malloc_ptr_12, i32 4
	%arr_ptr_15 = bitcast i8* %arr_char_ptr_14 to %class.Node**
	store %class.Array_Node* %__tmp_88, %class.Array_Node* %__tmp_92, align 4
	%var_reg_17 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_92, i32 0, i32 0
	store %class.Node** %arr_ptr_15, %class.Node*** %var_reg_17, align 4
	br label %Array_Node.__cons.return

Array_Node.__cons.return:
	ret void

}

define void @Array_Node.push_back(%class.Array_Node* %__this_ptr_0, %class.Node* %v_1) #0 {
Array_Node.push_back.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_93, align 4
	store %class.Node* %v_1, %class.Node* %__tmp_94, align 4
	store %class.Array_Node* %__tmp_93, %class.Array_Node* %__tmp_95, align 4
	%ret_5 = call i32 @Array_Node.size(%class.Array_Node* %__tmp_95)
	store %class.Array_Node* %__tmp_93, %class.Array_Node* %__tmp_96, align 4
	%var_reg_7 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_96, i32 0, i32 0
	%identifier_register_8 = load %class.Node**, %class.Node*** %var_reg_7, align 4
	%arr_to_int_10 = bitcast %class.Node** %identifier_register_8 to i32*
	%arr_len_ptr_9 = getelementptr inbounds i32, i32* %arr_to_int_10, i32 -1
	%arr_len_11 = load i32, i32* %arr_len_ptr_9, align 4
	%res_12 = icmp eq i32 %ret_5, %arr_len_11
	br i1 %res_12, label %Array_Node.push_back.2_if_true, label %Array_Node.push_back.2_if_terminate

Array_Node.push_back.2_if_true:
	store %class.Array_Node* %__tmp_93, %class.Array_Node* %__tmp_97, align 4
	call void @Array_Node.doubleStorage(%class.Array_Node* %__tmp_97)
	br label %Array_Node.push_back.2_if_terminate

Array_Node.push_back.2_if_terminate:
	store %class.Array_Node* %__tmp_93, %class.Array_Node* %__tmp_98, align 4
	%var_reg_15 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_98, i32 0, i32 1
	%identifier_register_16 = load i32, i32* %var_reg_15, align 4
	store %class.Array_Node* %__tmp_93, %class.Array_Node* %__tmp_99, align 4
	%var_reg_18 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_99, i32 0, i32 0
	%identifier_register_19 = load %class.Node**, %class.Node*** %var_reg_18, align 4
	%array_id_ptr_20 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_19, i32 %identifier_register_16
	%res_array_21 = load %class.Node*, %class.Node** %array_id_ptr_20, align 4
	store %class.Node* %__tmp_94, %class.Node* %__tmp_100, align 4
	store %class.Node* %__tmp_100, %class.Node** %array_id_ptr_20, align 4
	store %class.Array_Node* %__tmp_93, %class.Array_Node* %__tmp_101, align 4
	%var_reg_24 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_101, i32 0, i32 1
	%identifier_register_25 = load i32, i32* %var_reg_24, align 4
	store %class.Array_Node* %__tmp_93, %class.Array_Node* %__tmp_102, align 4
	%var_reg_28 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_102, i32 0, i32 1
	%res_26 = add i32 %identifier_register_25, 1
	store i32 %res_26, i32* %var_reg_28, align 4
	br label %Array_Node.push_back.return

Array_Node.push_back.return:
	ret void

}

define %class.Node* @Array_Node.pop_back(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.pop_back.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_103, align 4
	store %class.Array_Node* %__tmp_103, %class.Array_Node* %__tmp_105, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_105, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	store %class.Array_Node* %__tmp_103, %class.Array_Node* %__tmp_106, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_106, i32 0, i32 1
	%res_6 = add i32 %identifier_register_5, -1
	store i32 %res_6, i32* %var_reg_8, align 4
	store %class.Array_Node* %__tmp_103, %class.Array_Node* %__tmp_107, align 4
	%var_reg_10 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_107, i32 0, i32 1
	%identifier_register_11 = load i32, i32* %var_reg_10, align 4
	store %class.Array_Node* %__tmp_103, %class.Array_Node* %__tmp_108, align 4
	%var_reg_13 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_108, i32 0, i32 0
	%identifier_register_14 = load %class.Node**, %class.Node*** %var_reg_13, align 4
	%array_id_ptr_15 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_14, i32 %identifier_register_11
	%res_array_16 = load %class.Node*, %class.Node** %array_id_ptr_15, align 4
	store %class.Node* %res_array_16, %class.Node* %__tmp_104, align 4
	br label %Array_Node.pop_back.return

Array_Node.pop_back.return:
	store %class.Node* %__tmp_104, %class.Node* %__tmp_109, align 4
	ret %class.Node* %__tmp_109

}

define %class.Node* @Array_Node.back(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.back.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_110, align 4
	store %class.Array_Node* %__tmp_110, %class.Array_Node* %__tmp_112, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_112, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	%res_6 = sub nsw i32 %identifier_register_5, 1
	store %class.Array_Node* %__tmp_110, %class.Array_Node* %__tmp_113, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_113, i32 0, i32 0
	%identifier_register_9 = load %class.Node**, %class.Node*** %var_reg_8, align 4
	%array_id_ptr_10 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_9, i32 %res_6
	%res_array_11 = load %class.Node*, %class.Node** %array_id_ptr_10, align 4
	store %class.Node* %res_array_11, %class.Node* %__tmp_111, align 4
	br label %Array_Node.back.return

Array_Node.back.return:
	store %class.Node* %__tmp_111, %class.Node* %__tmp_114, align 4
	ret %class.Node* %__tmp_114

}

define %class.Node* @Array_Node.front(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.front.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_115, align 4
	store %class.Array_Node* %__tmp_115, %class.Array_Node* %__tmp_117, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_117, i32 0, i32 0
	%identifier_register_5 = load %class.Node**, %class.Node*** %var_reg_4, align 4
	%array_id_ptr_6 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_5, i32 0
	%res_array_7 = load %class.Node*, %class.Node** %array_id_ptr_6, align 4
	store %class.Node* %res_array_7, %class.Node* %__tmp_116, align 4
	br label %Array_Node.front.return

Array_Node.front.return:
	store %class.Node* %__tmp_116, %class.Node* %__tmp_118, align 4
	ret %class.Node* %__tmp_118

}

define i32 @Array_Node.size(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.size.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_119, align 4
	store %class.Array_Node* %__tmp_119, %class.Array_Node* %__tmp_121, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_121, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	store i32 %identifier_register_5, i32 %__tmp_120, align 4
	br label %Array_Node.size.return

Array_Node.size.return:
	store i32 %__tmp_120, i32 %__tmp_122, align 4
	ret i32 %__tmp_122

}

define void @Array_Node.resize(%class.Array_Node* %__this_ptr_0, i32 %newSize_1) #0 {
Array_Node.resize.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_123, align 4
	store i32 %newSize_1, i32 %__tmp_124, align 4
	br label %Array_Node.resize.3_while_condition

Array_Node.resize.3_while_condition:
	store %class.Array_Node* %__tmp_123, %class.Array_Node* %__tmp_125, align 4
	%var_reg_5 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_125, i32 0, i32 0
	%identifier_register_6 = load %class.Node**, %class.Node*** %var_reg_5, align 4
	%arr_to_int_8 = bitcast %class.Node** %identifier_register_6 to i32*
	%arr_len_ptr_7 = getelementptr inbounds i32, i32* %arr_to_int_8, i32 -1
	%arr_len_9 = load i32, i32* %arr_len_ptr_7, align 4
	store i32 %__tmp_124, i32 %__tmp_126, align 4
	%res_11 = icmp slt i32 %arr_len_9, %__tmp_126
	br i1 %res_11, label %Array_Node.resize.3_while_loop, label %Array_Node.resize.3_while_terminate

Array_Node.resize.3_while_loop:
	store %class.Array_Node* %__tmp_123, %class.Array_Node* %__tmp_127, align 4
	call void @Array_Node.doubleStorage(%class.Array_Node* %__tmp_127)
	br label %Array_Node.resize.3_while_condition

Array_Node.resize.3_while_terminate:
	store %class.Array_Node* %__tmp_123, %class.Array_Node* %__tmp_128, align 4
	%var_reg_14 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_128, i32 0, i32 1
	%identifier_register_15 = load i32, i32* %var_reg_14, align 4
	store i32 %__tmp_124, i32 %__tmp_129, align 4
	store %class.Array_Node* %__tmp_123, %class.Array_Node* %__tmp_130, align 4
	%var_reg_18 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_130, i32 0, i32 1
	store i32 %__tmp_129, i32* %var_reg_18, align 4
	br label %Array_Node.resize.return

Array_Node.resize.return:
	ret void

}

define %class.Node* @Array_Node.get(%class.Array_Node* %__this_ptr_0, i32 %i_1) #0 {
Array_Node.get.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_131, align 4
	store i32 %i_1, i32 %__tmp_132, align 4
	store i32 %__tmp_132, i32 %__tmp_134, align 4
	store %class.Array_Node* %__tmp_131, %class.Array_Node* %__tmp_135, align 4
	%var_reg_7 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_135, i32 0, i32 0
	%identifier_register_8 = load %class.Node**, %class.Node*** %var_reg_7, align 4
	%array_id_ptr_9 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_8, i32 %__tmp_134
	%res_array_10 = load %class.Node*, %class.Node** %array_id_ptr_9, align 4
	store %class.Node* %res_array_10, %class.Node* %__tmp_133, align 4
	br label %Array_Node.get.return

Array_Node.get.return:
	store %class.Node* %__tmp_133, %class.Node* %__tmp_136, align 4
	ret %class.Node* %__tmp_136

}

define void @Array_Node.set(%class.Array_Node* %__this_ptr_0, i32 %i_1, %class.Node* %v_2) #0 {
Array_Node.set.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_137, align 4
	store i32 %i_1, i32 %__tmp_138, align 4
	store %class.Node* %v_2, %class.Node* %__tmp_139, align 4
	store i32 %__tmp_138, i32 %__tmp_140, align 4
	store %class.Array_Node* %__tmp_137, %class.Array_Node* %__tmp_141, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_141, i32 0, i32 0
	%identifier_register_9 = load %class.Node**, %class.Node*** %var_reg_8, align 4
	%array_id_ptr_10 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_9, i32 %__tmp_140
	%res_array_11 = load %class.Node*, %class.Node** %array_id_ptr_10, align 4
	store %class.Node* %__tmp_139, %class.Node* %__tmp_142, align 4
	store %class.Node* %__tmp_142, %class.Node** %array_id_ptr_10, align 4
	br label %Array_Node.set.return

Array_Node.set.return:
	ret void

}

define void @Array_Node.swap(%class.Array_Node* %__this_ptr_0, i32 %i_1, i32 %j_2) #0 {
Array_Node.swap.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_143, align 4
	store i32 %i_1, i32 %__tmp_144, align 4
	store i32 %j_2, i32 %__tmp_145, align 4
	store i32 %__tmp_144, i32 %__tmp_147, align 4
	store %class.Array_Node* %__tmp_143, %class.Array_Node* %__tmp_148, align 4
	%var_reg_9 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_148, i32 0, i32 0
	%identifier_register_10 = load %class.Node**, %class.Node*** %var_reg_9, align 4
	%array_id_ptr_11 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_10, i32 %__tmp_147
	%res_array_12 = load %class.Node*, %class.Node** %array_id_ptr_11, align 4
	store %class.Node* %res_array_12, %class.Node* %__tmp_146, align 4
	store i32 %__tmp_144, i32 %__tmp_149, align 4
	store %class.Array_Node* %__tmp_143, %class.Array_Node* %__tmp_150, align 4
	%var_reg_15 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_150, i32 0, i32 0
	%identifier_register_16 = load %class.Node**, %class.Node*** %var_reg_15, align 4
	%array_id_ptr_17 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_16, i32 %__tmp_149
	%res_array_18 = load %class.Node*, %class.Node** %array_id_ptr_17, align 4
	store i32 %__tmp_145, i32 %__tmp_151, align 4
	store %class.Array_Node* %__tmp_143, %class.Array_Node* %__tmp_152, align 4
	%var_reg_21 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_152, i32 0, i32 0
	%identifier_register_22 = load %class.Node**, %class.Node*** %var_reg_21, align 4
	%array_id_ptr_23 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_22, i32 %__tmp_151
	%res_array_24 = load %class.Node*, %class.Node** %array_id_ptr_23, align 4
	store %class.Node* %res_array_24, %class.Node** %array_id_ptr_17, align 4
	store i32 %__tmp_145, i32 %__tmp_153, align 4
	store %class.Array_Node* %__tmp_143, %class.Array_Node* %__tmp_154, align 4
	%var_reg_27 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_154, i32 0, i32 0
	%identifier_register_28 = load %class.Node**, %class.Node*** %var_reg_27, align 4
	%array_id_ptr_29 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_28, i32 %__tmp_153
	%res_array_30 = load %class.Node*, %class.Node** %array_id_ptr_29, align 4
	store %class.Node* %__tmp_146, %class.Node* %__tmp_155, align 4
	store %class.Node* %__tmp_155, %class.Node** %array_id_ptr_29, align 4
	br label %Array_Node.swap.return

Array_Node.swap.return:
	ret void

}

define void @Array_Node.doubleStorage(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.doubleStorage.entry:
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node* %__tmp_156, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_159, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_159, i32 0, i32 0
	%identifier_register_5 = load %class.Node**, %class.Node*** %var_reg_4, align 4
	store %class.Node** %identifier_register_5, %class.Node** %__tmp_157, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_160, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_160, i32 0, i32 1
	%identifier_register_9 = load i32, i32* %var_reg_8, align 4
	store i32 %identifier_register_9, i32 %__tmp_158, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_161, align 4
	%var_reg_11 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_161, i32 0, i32 0
	%identifier_register_12 = load %class.Node**, %class.Node*** %var_reg_11, align 4
	store %class.Node** %__tmp_157, %class.Node** %__tmp_162, align 4
	%arr_to_int_15 = bitcast %class.Node** %__tmp_162 to i32*
	%arr_len_ptr_14 = getelementptr inbounds i32, i32* %arr_to_int_15, i32 -1
	%arr_len_16 = load i32, i32* %arr_len_ptr_14, align 4
	%res_17 = mul i32 %arr_len_16, 2
	%arr_size_reg_18 = mul i32 %res_17, 4
	%malloc_size_19 = add i32 %arr_size_reg_18, 4
	%malloc_ptr_20 = call i8* @__malloc(i32 %malloc_size_19)
	%arr_len_ptr_21 = bitcast i8* %malloc_ptr_20 to i32*
	store i32 %res_17, i32* %arr_len_ptr_21, align 4
	%arr_char_ptr_22 = getelementptr inbounds i8, i8* %malloc_ptr_20, i32 4
	%arr_ptr_23 = bitcast i8* %arr_char_ptr_22 to %class.Node**
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_163, align 4
	%var_reg_25 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_163, i32 0, i32 0
	store %class.Node** %arr_ptr_23, %class.Node*** %var_reg_25, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_164, align 4
	%var_reg_27 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_164, i32 0, i32 1
	%identifier_register_28 = load i32, i32* %var_reg_27, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_165, align 4
	%var_reg_30 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_165, i32 0, i32 1
	store i32 0, i32* %var_reg_30, align 4
	br label %Array_Node.doubleStorage.4_for_condition

Array_Node.doubleStorage.4_for_condition:
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_166, align 4
	%var_reg_32 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_166, i32 0, i32 1
	%identifier_register_33 = load i32, i32* %var_reg_32, align 4
	store i32 %__tmp_158, i32 %__tmp_167, align 4
	%res_35 = icmp ne i32 %identifier_register_33, %__tmp_167
	br i1 %res_35, label %Array_Node.doubleStorage.4_for_loop, label %Array_Node.doubleStorage.4_for_terminate

Array_Node.doubleStorage.4_for_loop:
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_168, align 4
	%var_reg_37 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_168, i32 0, i32 1
	%identifier_register_38 = load i32, i32* %var_reg_37, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_169, align 4
	%var_reg_40 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_169, i32 0, i32 0
	%identifier_register_41 = load %class.Node**, %class.Node*** %var_reg_40, align 4
	%array_id_ptr_42 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_41, i32 %identifier_register_38
	%res_array_43 = load %class.Node*, %class.Node** %array_id_ptr_42, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_170, align 4
	%var_reg_45 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_170, i32 0, i32 1
	%identifier_register_46 = load i32, i32* %var_reg_45, align 4
	store %class.Node** %__tmp_157, %class.Node** %__tmp_171, align 4
	%array_id_ptr_48 = getelementptr inbounds %class.Node*, %class.Node** %__tmp_171, i32 %identifier_register_46
	%res_array_49 = load %class.Node*, %class.Node** %array_id_ptr_48, align 4
	store %class.Node* %res_array_49, %class.Node** %array_id_ptr_42, align 4
	br label %Array_Node.doubleStorage.4_for_execution

Array_Node.doubleStorage.4_for_execution:
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_172, align 4
	%var_reg_51 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_172, i32 0, i32 1
	%identifier_register_52 = load i32, i32* %var_reg_51, align 4
	store %class.Array_Node* %__tmp_156, %class.Array_Node* %__tmp_173, align 4
	%var_reg_55 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %__tmp_173, i32 0, i32 1
	%res_53 = add i32 %identifier_register_52, 1
	store i32 %res_53, i32* %var_reg_55, align 4
	br label %Array_Node.doubleStorage.4_for_condition

Array_Node.doubleStorage.4_for_terminate:
	br label %Array_Node.doubleStorage.return

Array_Node.doubleStorage.return:
	ret void

}

define void @Heap_Node.__cons(%class.Heap_Node* %__this_ptr_1) #0 {
Heap_Node.__cons.entry:
	store %class.Heap_Node* %__this_ptr_1, %class.Heap_Node* %__tmp_174, align 4
	store %class.Heap_Node* %__tmp_174, %class.Heap_Node* %__tmp_175, align 4
	%var_reg_3 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_175, i32 0, i32 0
	%identifier_register_4 = load %class.Array_Node*, %class.Array_Node** %var_reg_3, align 4
	%malloc_ptr_5 = call i8* @__malloc(i32 8)
	%new_class_reg_6 = bitcast i8* %malloc_ptr_5 to %class.Array_Node*
	call void @Array_Node.__cons(%class.Array_Node* %new_class_reg_6)
	store %class.Heap_Node* %__tmp_174, %class.Heap_Node* %__tmp_176, align 4
	%var_reg_8 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_176, i32 0, i32 0
	store %class.Array_Node* %new_class_reg_6, %class.Array_Node** %var_reg_8, align 4
	br label %Heap_Node.__cons.return

Heap_Node.__cons.return:
	ret void

}

define void @Heap_Node.push(%class.Heap_Node* %__this_ptr_0, %class.Node* %v_1) #0 {
Heap_Node.push.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_177, align 4
	store %class.Node* %v_1, %class.Node* %__tmp_178, align 4
	store %class.Heap_Node* %__tmp_177, %class.Heap_Node* %__tmp_181, align 4
	%var_reg_5 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_181, i32 0, i32 0
	%identifier_register_6 = load %class.Array_Node*, %class.Array_Node** %var_reg_5, align 4
	store %class.Node* %__tmp_178, %class.Node* %__tmp_182, align 4
	call void @Array_Node.push_back(%class.Array_Node* %identifier_register_6, %class.Node* %__tmp_182)
	store %class.Heap_Node* %__tmp_177, %class.Heap_Node* %__tmp_183, align 4
	%ret_10 = call i32 @Heap_Node.size(%class.Heap_Node* %__tmp_183)
	%res_11 = sub nsw i32 %ret_10, 1
	store i32 %res_11, i32 %__tmp_179, align 4
	br label %Heap_Node.push.5_while_condition

Heap_Node.push.5_while_condition:
	store i32 %__tmp_179, i32 %__tmp_184, align 4
	%res_13 = icmp sgt i32 %__tmp_184, 0
	br i1 %res_13, label %Heap_Node.push.5_while_loop, label %Heap_Node.push.5_while_terminate

Heap_Node.push.5_while_loop:
	store %class.Heap_Node* %__tmp_177, %class.Heap_Node* %__tmp_185, align 4
	store i32 %__tmp_179, i32 %__tmp_186, align 4
	%ret_17 = call i32 @Heap_Node.pnt(%class.Heap_Node* %__tmp_185, i32 %__tmp_186)
	store i32 %ret_17, i32 %__tmp_180, align 4
	store %class.Heap_Node* %__tmp_177, %class.Heap_Node* %__tmp_187, align 4
	%var_reg_19 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_187, i32 0, i32 0
	%identifier_register_20 = load %class.Array_Node*, %class.Array_Node** %var_reg_19, align 4
	store i32 %__tmp_180, i32 %__tmp_188, align 4
	%ret_22 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_20, i32 %__tmp_188)
	%ret_23 = call i32 @Node.key_(%class.Node* %ret_22)
	store %class.Heap_Node* %__tmp_177, %class.Heap_Node* %__tmp_189, align 4
	%var_reg_25 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_189, i32 0, i32 0
	%identifier_register_26 = load %class.Array_Node*, %class.Array_Node** %var_reg_25, align 4
	store i32 %__tmp_179, i32 %__tmp_190, align 4
	%ret_28 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_26, i32 %__tmp_190)
	%ret_29 = call i32 @Node.key_(%class.Node* %ret_28)
	%res_30 = icmp sge i32 %ret_23, %ret_29
	br i1 %res_30, label %Heap_Node.push.6_if_true, label %Heap_Node.push.6_if_terminate

Heap_Node.push.6_if_true:
	br label %Heap_Node.push.5_while_terminate

Heap_Node.push.6_if_terminate:
	store %class.Heap_Node* %__tmp_177, %class.Heap_Node* %__tmp_191, align 4
	%var_reg_32 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_191, i32 0, i32 0
	%identifier_register_33 = load %class.Array_Node*, %class.Array_Node** %var_reg_32, align 4
	store i32 %__tmp_180, i32 %__tmp_192, align 4
	store i32 %__tmp_179, i32 %__tmp_193, align 4
	call void @Array_Node.swap(%class.Array_Node* %identifier_register_33, i32 %__tmp_192, i32 %__tmp_193)
	store i32 %__tmp_179, i32 %__tmp_194, align 4
	store i32 %__tmp_180, i32 %__tmp_195, align 4
	store i32 %__tmp_195, i32 %__tmp_179, align 4
	br label %Heap_Node.push.5_while_condition

Heap_Node.push.5_while_terminate:
	br label %Heap_Node.push.return

Heap_Node.push.return:
	ret void

}

define %class.Node* @Heap_Node.pop(%class.Heap_Node* %__this_ptr_0) #0 {
Heap_Node.pop.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_196, align 4
	store %class.Heap_Node* %__tmp_196, %class.Heap_Node* %__tmp_199, align 4
	%var_reg_5 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_199, i32 0, i32 0
	%identifier_register_6 = load %class.Array_Node*, %class.Array_Node** %var_reg_5, align 4
	%ret_7 = call %class.Node* @Array_Node.front(%class.Array_Node* %identifier_register_6)
	store %class.Node* %ret_7, %class.Node* %__tmp_198, align 4
	store %class.Heap_Node* %__tmp_196, %class.Heap_Node* %__tmp_200, align 4
	%var_reg_9 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_200, i32 0, i32 0
	%identifier_register_10 = load %class.Array_Node*, %class.Array_Node** %var_reg_9, align 4
	store %class.Heap_Node* %__tmp_196, %class.Heap_Node* %__tmp_201, align 4
	%ret_12 = call i32 @Heap_Node.size(%class.Heap_Node* %__tmp_201)
	%res_13 = sub nsw i32 %ret_12, 1
	call void @Array_Node.swap(%class.Array_Node* %identifier_register_10, i32 0, i32 %res_13)
	store %class.Heap_Node* %__tmp_196, %class.Heap_Node* %__tmp_202, align 4
	%var_reg_15 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_202, i32 0, i32 0
	%identifier_register_16 = load %class.Array_Node*, %class.Array_Node** %var_reg_15, align 4
	%ret_17 = call %class.Node* @Array_Node.pop_back(%class.Array_Node* %identifier_register_16)
	store %class.Heap_Node* %__tmp_196, %class.Heap_Node* %__tmp_203, align 4
	call void @Heap_Node.maxHeapify(%class.Heap_Node* %__tmp_203, i32 0)
	store %class.Node* %__tmp_198, %class.Node* %__tmp_204, align 4
	store %class.Node* %__tmp_204, %class.Node* %__tmp_197, align 4
	br label %Heap_Node.pop.return

Heap_Node.pop.return:
	store %class.Node* %__tmp_197, %class.Node* %__tmp_205, align 4
	ret %class.Node* %__tmp_205

}

define %class.Node* @Heap_Node.top(%class.Heap_Node* %__this_ptr_0) #0 {
Heap_Node.top.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_206, align 4
	store %class.Heap_Node* %__tmp_206, %class.Heap_Node* %__tmp_208, align 4
	%var_reg_4 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_208, i32 0, i32 0
	%identifier_register_5 = load %class.Array_Node*, %class.Array_Node** %var_reg_4, align 4
	%ret_6 = call %class.Node* @Array_Node.front(%class.Array_Node* %identifier_register_5)
	store %class.Node* %ret_6, %class.Node* %__tmp_207, align 4
	br label %Heap_Node.top.return

Heap_Node.top.return:
	store %class.Node* %__tmp_207, %class.Node* %__tmp_209, align 4
	ret %class.Node* %__tmp_209

}

define i32 @Heap_Node.size(%class.Heap_Node* %__this_ptr_0) #0 {
Heap_Node.size.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_210, align 4
	store %class.Heap_Node* %__tmp_210, %class.Heap_Node* %__tmp_212, align 4
	%var_reg_4 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_212, i32 0, i32 0
	%identifier_register_5 = load %class.Array_Node*, %class.Array_Node** %var_reg_4, align 4
	%ret_6 = call i32 @Array_Node.size(%class.Array_Node* %identifier_register_5)
	store i32 %ret_6, i32 %__tmp_211, align 4
	br label %Heap_Node.size.return

Heap_Node.size.return:
	store i32 %__tmp_211, i32 %__tmp_213, align 4
	ret i32 %__tmp_213

}

define i32 @Heap_Node.lchild(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.lchild.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_214, align 4
	store i32 %x_1, i32 %__tmp_215, align 4
	store i32 %__tmp_215, i32 %__tmp_217, align 4
	%res_6 = mul i32 %__tmp_217, 2
	%res_7 = add i32 %res_6, 1
	store i32 %res_7, i32 %__tmp_216, align 4
	br label %Heap_Node.lchild.return

Heap_Node.lchild.return:
	store i32 %__tmp_216, i32 %__tmp_218, align 4
	ret i32 %__tmp_218

}

define i32 @Heap_Node.rchild(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.rchild.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_219, align 4
	store i32 %x_1, i32 %__tmp_220, align 4
	store i32 %__tmp_220, i32 %__tmp_222, align 4
	%res_6 = mul i32 %__tmp_222, 2
	%res_7 = add i32 %res_6, 2
	store i32 %res_7, i32 %__tmp_221, align 4
	br label %Heap_Node.rchild.return

Heap_Node.rchild.return:
	store i32 %__tmp_221, i32 %__tmp_223, align 4
	ret i32 %__tmp_223

}

define i32 @Heap_Node.pnt(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.pnt.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_224, align 4
	store i32 %x_1, i32 %__tmp_225, align 4
	store i32 %__tmp_225, i32 %__tmp_227, align 4
	%res_6 = sub nsw i32 %__tmp_227, 1
	%res_7 = sdiv i32 %res_6, 2
	store i32 %res_7, i32 %__tmp_226, align 4
	br label %Heap_Node.pnt.return

Heap_Node.pnt.return:
	store i32 %__tmp_226, i32 %__tmp_228, align 4
	ret i32 %__tmp_228

}

define void @Heap_Node.maxHeapify(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.maxHeapify.entry:
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node* %__tmp_229, align 4
	store i32 %x_1, i32 %__tmp_230, align 4
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_236, align 4
	store i32 %__tmp_230, i32 %__tmp_237, align 4
	%ret_7 = call i32 @Heap_Node.lchild(%class.Heap_Node* %__tmp_236, i32 %__tmp_237)
	store i32 %ret_7, i32 %__tmp_231, align 4
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_238, align 4
	store i32 %__tmp_230, i32 %__tmp_239, align 4
	%ret_11 = call i32 @Heap_Node.rchild(%class.Heap_Node* %__tmp_238, i32 %__tmp_239)
	store i32 %ret_11, i32 %__tmp_232, align 4
	store i32 %__tmp_230, i32 %__tmp_240, align 4
	store i32 %__tmp_240, i32 %__tmp_233, align 4
	store i32 %__tmp_231, i32 %__tmp_241, align 4
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_242, align 4
	%ret_17 = call i32 @Heap_Node.size(%class.Heap_Node* %__tmp_242)
	%res_18 = icmp slt i32 %__tmp_241, %ret_17
	store i1 %res_18, i1 %__tmp_234, align 4
	br i1 %res_18, label %Heap_Node.maxHeapify.7_and_rhs_block, label %Heap_Node.maxHeapify.7_and_terminate_block

Heap_Node.maxHeapify.7_and_rhs_block:
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_243, align 4
	%var_reg_20 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_243, i32 0, i32 0
	%identifier_register_21 = load %class.Array_Node*, %class.Array_Node** %var_reg_20, align 4
	store i32 %__tmp_231, i32 %__tmp_244, align 4
	%ret_23 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_21, i32 %__tmp_244)
	%ret_24 = call i32 @Node.key_(%class.Node* %ret_23)
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_245, align 4
	%var_reg_26 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_245, i32 0, i32 0
	%identifier_register_27 = load %class.Array_Node*, %class.Array_Node** %var_reg_26, align 4
	store i32 %__tmp_233, i32 %__tmp_246, align 4
	%ret_29 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_27, i32 %__tmp_246)
	%ret_30 = call i32 @Node.key_(%class.Node* %ret_29)
	%res_31 = icmp sgt i32 %ret_24, %ret_30
	%res_32 = and i1 %res_18, %res_31
	store i1 %res_32, i1 %__tmp_234, align 4
	br label %Heap_Node.maxHeapify.7_and_terminate_block

Heap_Node.maxHeapify.7_and_terminate_block:
	store i1 %__tmp_234, i1 %__tmp_247, align 4
	br i1 %__tmp_247, label %Heap_Node.maxHeapify.8_if_true, label %Heap_Node.maxHeapify.8_if_terminate

Heap_Node.maxHeapify.8_if_true:
	store i32 %__tmp_233, i32 %__tmp_248, align 4
	store i32 %__tmp_231, i32 %__tmp_249, align 4
	store i32 %__tmp_249, i32 %__tmp_233, align 4
	br label %Heap_Node.maxHeapify.8_if_terminate

Heap_Node.maxHeapify.8_if_terminate:
	store i32 %__tmp_232, i32 %__tmp_250, align 4
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_251, align 4
	%ret_39 = call i32 @Heap_Node.size(%class.Heap_Node* %__tmp_251)
	%res_40 = icmp slt i32 %__tmp_250, %ret_39
	store i1 %res_40, i1 %__tmp_235, align 4
	br i1 %res_40, label %Heap_Node.maxHeapify.9_and_rhs_block, label %Heap_Node.maxHeapify.9_and_terminate_block

Heap_Node.maxHeapify.9_and_rhs_block:
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_252, align 4
	%var_reg_42 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_252, i32 0, i32 0
	%identifier_register_43 = load %class.Array_Node*, %class.Array_Node** %var_reg_42, align 4
	store i32 %__tmp_232, i32 %__tmp_253, align 4
	%ret_45 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_43, i32 %__tmp_253)
	%ret_46 = call i32 @Node.key_(%class.Node* %ret_45)
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_254, align 4
	%var_reg_48 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_254, i32 0, i32 0
	%identifier_register_49 = load %class.Array_Node*, %class.Array_Node** %var_reg_48, align 4
	store i32 %__tmp_233, i32 %__tmp_255, align 4
	%ret_51 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_49, i32 %__tmp_255)
	%ret_52 = call i32 @Node.key_(%class.Node* %ret_51)
	%res_53 = icmp sgt i32 %ret_46, %ret_52
	%res_54 = and i1 %res_40, %res_53
	store i1 %res_54, i1 %__tmp_235, align 4
	br label %Heap_Node.maxHeapify.9_and_terminate_block

Heap_Node.maxHeapify.9_and_terminate_block:
	store i1 %__tmp_235, i1 %__tmp_256, align 4
	br i1 %__tmp_256, label %Heap_Node.maxHeapify.10_if_true, label %Heap_Node.maxHeapify.10_if_terminate

Heap_Node.maxHeapify.10_if_true:
	store i32 %__tmp_233, i32 %__tmp_257, align 4
	store i32 %__tmp_232, i32 %__tmp_258, align 4
	store i32 %__tmp_258, i32 %__tmp_233, align 4
	br label %Heap_Node.maxHeapify.10_if_terminate

Heap_Node.maxHeapify.10_if_terminate:
	store i32 %__tmp_233, i32 %__tmp_259, align 4
	store i32 %__tmp_230, i32 %__tmp_260, align 4
	%res_60 = icmp eq i32 %__tmp_259, %__tmp_260
	br i1 %res_60, label %Heap_Node.maxHeapify.11_if_true, label %Heap_Node.maxHeapify.11_if_terminate

Heap_Node.maxHeapify.11_if_true:
	br label %Heap_Node.maxHeapify.return

Heap_Node.maxHeapify.11_if_terminate:
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_261, align 4
	%var_reg_62 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %__tmp_261, i32 0, i32 0
	%identifier_register_63 = load %class.Array_Node*, %class.Array_Node** %var_reg_62, align 4
	store i32 %__tmp_230, i32 %__tmp_262, align 4
	store i32 %__tmp_233, i32 %__tmp_263, align 4
	call void @Array_Node.swap(%class.Array_Node* %identifier_register_63, i32 %__tmp_262, i32 %__tmp_263)
	store %class.Heap_Node* %__tmp_229, %class.Heap_Node* %__tmp_264, align 4
	store i32 %__tmp_233, i32 %__tmp_265, align 4
	call void @Heap_Node.maxHeapify(%class.Heap_Node* %__tmp_264, i32 %__tmp_265)
	br label %Heap_Node.maxHeapify.return

Heap_Node.maxHeapify.return:
	ret void

}

define i32 @Node.key_(%class.Node* %__this_ptr_0) #0 {
Node.key_.entry:
	store %class.Node* %__this_ptr_0, %class.Node* %__tmp_266, align 4
	store %class.Node* %__tmp_266, %class.Node* %__tmp_268, align 4
	%var_reg_4 = getelementptr inbounds %class.Node, %class.Node* %__tmp_268, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	%res_6 = sub nsw i32 0, %identifier_register_5
	store i32 %res_6, i32 %__tmp_267, align 4
	br label %Node.key_.return

Node.key_.return:
	store i32 %__tmp_267, i32 %__tmp_269, align 4
	ret i32 %__tmp_269

}

define void @init() #0 {
init.entry:
	%identifier_register_0 = load i32, i32* @n, align 4
	%ret_1 = call i32 @getInt()
	store i32 %ret_1, i32* @n, align 4
	%identifier_register_2 = load i32, i32* @m, align 4
	%ret_3 = call i32 @getInt()
	store i32 %ret_3, i32* @m, align 4
	%identifier_register_4 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%malloc_ptr_5 = call i8* @__malloc(i32 16)
	%new_class_reg_6 = bitcast i8* %malloc_ptr_5 to %class.EdgeList*
	store %class.EdgeList* %new_class_reg_6, %class.EdgeList** @g, align 4
	%identifier_register_7 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%identifier_register_8 = load i32, i32* @n, align 4
	%identifier_register_9 = load i32, i32* @m, align 4
	call void @EdgeList.init(%class.EdgeList* %identifier_register_7, i32 %identifier_register_8, i32 %identifier_register_9)
	store i32 0, i32 %__tmp_270, align 4
	store i32 %__tmp_270, i32 %__tmp_274, align 4
	store i32 0, i32 %__tmp_270, align 4
	br label %init.12_for_condition

init.12_for_condition:
	store i32 %__tmp_270, i32 %__tmp_275, align 4
	%identifier_register_13 = load i32, i32* @m, align 4
	%res_14 = icmp slt i32 %__tmp_275, %identifier_register_13
	br i1 %res_14, label %init.12_for_loop, label %init.12_for_terminate

init.12_for_loop:
	%ret_16 = call i32 @getInt()
	store i32 %ret_16, i32 %__tmp_271, align 4
	%ret_18 = call i32 @getInt()
	store i32 %ret_18, i32 %__tmp_272, align 4
	%ret_20 = call i32 @getInt()
	store i32 %ret_20, i32 %__tmp_273, align 4
	%identifier_register_21 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	store i32 %__tmp_271, i32 %__tmp_276, align 4
	store i32 %__tmp_272, i32 %__tmp_277, align 4
	store i32 %__tmp_273, i32 %__tmp_278, align 4
	call void @EdgeList.addEdge(%class.EdgeList* %identifier_register_21, i32 %__tmp_276, i32 %__tmp_277, i32 %__tmp_278)
	br label %init.12_for_execution

init.12_for_execution:
	store i32 %__tmp_270, i32 %__tmp_279, align 4
	%res_26 = add i32 %__tmp_279, 1
	store i32 %res_26, i32 %__tmp_270, align 4
	br label %init.12_for_condition

init.12_for_terminate:
	br label %init.return

init.return:
	ret void

}

define i32* @dijkstra(i32 %s_0) #0 {
dijkstra.entry:
	store i32 %s_0, i32 %__tmp_280, align 4
	%identifier_register_4 = load i32, i32* @n, align 4
	%arr_size_reg_5 = mul i32 %identifier_register_4, 4
	%malloc_size_6 = add i32 %arr_size_reg_5, 4
	%malloc_ptr_7 = call i8* @__malloc(i32 %malloc_size_6)
	%arr_len_ptr_8 = bitcast i8* %malloc_ptr_7 to i32*
	store i32 %identifier_register_4, i32* %arr_len_ptr_8, align 4
	%arr_char_ptr_9 = getelementptr inbounds i8, i8* %malloc_ptr_7, i32 4
	%arr_ptr_10 = bitcast i8* %arr_char_ptr_9 to i32*
	store i32* %arr_ptr_10, i32* %__tmp_282, align 4
	%identifier_register_12 = load i32, i32* @n, align 4
	%arr_size_reg_13 = mul i32 %identifier_register_12, 4
	%malloc_size_14 = add i32 %arr_size_reg_13, 4
	%malloc_ptr_15 = call i8* @__malloc(i32 %malloc_size_14)
	%arr_len_ptr_16 = bitcast i8* %malloc_ptr_15 to i32*
	store i32 %identifier_register_12, i32* %arr_len_ptr_16, align 4
	%arr_char_ptr_17 = getelementptr inbounds i8, i8* %malloc_ptr_15, i32 4
	%arr_ptr_18 = bitcast i8* %arr_char_ptr_17 to i32*
	store i32* %arr_ptr_18, i32* %__tmp_283, align 4
	store i32 0, i32 %__tmp_284, align 4
	store i32 %__tmp_284, i32 %__tmp_293, align 4
	store i32 0, i32 %__tmp_284, align 4
	br label %dijkstra.13_for_condition

dijkstra.13_for_condition:
	store i32 %__tmp_284, i32 %__tmp_294, align 4
	%identifier_register_22 = load i32, i32* @n, align 4
	%res_23 = icmp slt i32 %__tmp_294, %identifier_register_22
	br i1 %res_23, label %dijkstra.13_for_loop, label %dijkstra.13_for_terminate

dijkstra.13_for_loop:
	store i32 %__tmp_284, i32 %__tmp_295, align 4
	store i32* %__tmp_283, i32* %__tmp_296, align 4
	%array_id_ptr_26 = getelementptr inbounds i32, i32* %__tmp_296, i32 %__tmp_295
	%res_array_27 = load i32, i32* %array_id_ptr_26, align 4
	%identifier_register_28 = load i32, i32* @INF, align 4
	store i32 %identifier_register_28, i32* %array_id_ptr_26, align 4
	store i32 %__tmp_284, i32 %__tmp_297, align 4
	store i32* %__tmp_282, i32* %__tmp_298, align 4
	%array_id_ptr_31 = getelementptr inbounds i32, i32* %__tmp_298, i32 %__tmp_297
	%res_array_32 = load i32, i32* %array_id_ptr_31, align 4
	store i32 0, i32* %array_id_ptr_31, align 4
	br label %dijkstra.13_for_execution

dijkstra.13_for_execution:
	store i32 %__tmp_284, i32 %__tmp_299, align 4
	%res_34 = add i32 %__tmp_299, 1
	store i32 %res_34, i32 %__tmp_284, align 4
	br label %dijkstra.13_for_condition

dijkstra.13_for_terminate:
	store i32 %__tmp_280, i32 %__tmp_300, align 4
	store i32* %__tmp_283, i32* %__tmp_301, align 4
	%array_id_ptr_37 = getelementptr inbounds i32, i32* %__tmp_301, i32 %__tmp_300
	%res_array_38 = load i32, i32* %array_id_ptr_37, align 4
	store i32 0, i32* %array_id_ptr_37, align 4
	%malloc_ptr_40 = call i8* @__malloc(i32 4)
	%new_class_reg_41 = bitcast i8* %malloc_ptr_40 to %class.Heap_Node*
	call void @Heap_Node.__cons(%class.Heap_Node* %new_class_reg_41)
	store %class.Heap_Node* %new_class_reg_41, %class.Heap_Node* %__tmp_285, align 4
	%malloc_ptr_43 = call i8* @__malloc(i32 8)
	%new_class_reg_44 = bitcast i8* %malloc_ptr_43 to %class.Node*
	store %class.Node* %new_class_reg_44, %class.Node* %__tmp_286, align 4
	store %class.Node* %__tmp_286, %class.Node* %__tmp_302, align 4
	%class_member_ptr_46 = getelementptr inbounds %class.Node, %class.Node* %__tmp_302, i32 0, i32 1
	%class_member_47 = load i32, i32* %class_member_ptr_46, align 4
	store i32 0, i32* %class_member_ptr_46, align 4
	store %class.Node* %__tmp_286, %class.Node* %__tmp_303, align 4
	%class_member_ptr_49 = getelementptr inbounds %class.Node, %class.Node* %__tmp_303, i32 0, i32 0
	%class_member_50 = load i32, i32* %class_member_ptr_49, align 4
	store i32 %__tmp_280, i32 %__tmp_304, align 4
	store i32 %__tmp_304, i32* %class_member_ptr_49, align 4
	store %class.Heap_Node* %__tmp_285, %class.Heap_Node* %__tmp_305, align 4
	store %class.Node* %__tmp_286, %class.Node* %__tmp_306, align 4
	call void @Heap_Node.push(%class.Heap_Node* %__tmp_305, %class.Node* %__tmp_306)
	br label %dijkstra.14_while_condition

dijkstra.14_while_condition:
	store %class.Heap_Node* %__tmp_285, %class.Heap_Node* %__tmp_307, align 4
	%ret_55 = call i32 @Heap_Node.size(%class.Heap_Node* %__tmp_307)
	%res_56 = icmp ne i32 %ret_55, 0
	br i1 %res_56, label %dijkstra.14_while_loop, label %dijkstra.14_while_terminate

dijkstra.14_while_loop:
	store %class.Heap_Node* %__tmp_285, %class.Heap_Node* %__tmp_308, align 4
	%ret_59 = call %class.Node* @Heap_Node.pop(%class.Heap_Node* %__tmp_308)
	store %class.Node* %ret_59, %class.Node* %__tmp_287, align 4
	store %class.Node* %__tmp_287, %class.Node* %__tmp_309, align 4
	%class_member_ptr_62 = getelementptr inbounds %class.Node, %class.Node* %__tmp_309, i32 0, i32 0
	%class_member_63 = load i32, i32* %class_member_ptr_62, align 4
	store i32 %class_member_63, i32 %__tmp_288, align 4
	store i32 %__tmp_288, i32 %__tmp_310, align 4
	store i32* %__tmp_282, i32* %__tmp_311, align 4
	%array_id_ptr_66 = getelementptr inbounds i32, i32* %__tmp_311, i32 %__tmp_310
	%res_array_67 = load i32, i32* %array_id_ptr_66, align 4
	%res_68 = icmp eq i32 %res_array_67, 1
	br i1 %res_68, label %dijkstra.15_if_true, label %dijkstra.15_if_terminate

dijkstra.15_if_true:
	br label %dijkstra.14_while_condition

dijkstra.15_if_terminate:
	store i32 %__tmp_288, i32 %__tmp_312, align 4
	store i32* %__tmp_282, i32* %__tmp_313, align 4
	%array_id_ptr_71 = getelementptr inbounds i32, i32* %__tmp_313, i32 %__tmp_312
	%res_array_72 = load i32, i32* %array_id_ptr_71, align 4
	store i32 1, i32* %array_id_ptr_71, align 4
	store i32 0, i32 %__tmp_289, align 4
	store i32 %__tmp_289, i32 %__tmp_314, align 4
	store i32 %__tmp_288, i32 %__tmp_315, align 4
	%identifier_register_76 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_77 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_76, i32 0, i32 2
	%class_member_78 = load i32*, i32** %class_member_ptr_77, align 4
	%array_id_ptr_79 = getelementptr inbounds i32, i32* %class_member_78, i32 %__tmp_315
	%res_array_80 = load i32, i32* %array_id_ptr_79, align 4
	store i32 %res_array_80, i32 %__tmp_289, align 4
	br label %dijkstra.16_for_condition

dijkstra.16_for_condition:
	store i32 %__tmp_289, i32 %__tmp_316, align 4
	%res_82 = sub nsw i32 0, 1
	%res_83 = icmp ne i32 %__tmp_316, %res_82
	br i1 %res_83, label %dijkstra.16_for_loop, label %dijkstra.16_for_terminate

dijkstra.16_for_loop:
	store i32 %__tmp_289, i32 %__tmp_317, align 4
	%identifier_register_86 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_87 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_86, i32 0, i32 0
	%class_member_88 = load %class.Edge**, %class.Edge*** %class_member_ptr_87, align 4
	%array_id_ptr_89 = getelementptr inbounds %class.Edge*, %class.Edge** %class_member_88, i32 %__tmp_317
	%res_array_90 = load %class.Edge*, %class.Edge** %array_id_ptr_89, align 4
	%class_member_ptr_91 = getelementptr inbounds %class.Edge, %class.Edge* %res_array_90, i32 0, i32 1
	%class_member_92 = load i32, i32* %class_member_ptr_91, align 4
	store i32 %class_member_92, i32 %__tmp_290, align 4
	store i32 %__tmp_289, i32 %__tmp_318, align 4
	%identifier_register_95 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_96 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_95, i32 0, i32 0
	%class_member_97 = load %class.Edge**, %class.Edge*** %class_member_ptr_96, align 4
	%array_id_ptr_98 = getelementptr inbounds %class.Edge*, %class.Edge** %class_member_97, i32 %__tmp_318
	%res_array_99 = load %class.Edge*, %class.Edge** %array_id_ptr_98, align 4
	%class_member_ptr_100 = getelementptr inbounds %class.Edge, %class.Edge* %res_array_99, i32 0, i32 2
	%class_member_101 = load i32, i32* %class_member_ptr_100, align 4
	store i32 %class_member_101, i32 %__tmp_291, align 4
	store i32 %__tmp_288, i32 %__tmp_319, align 4
	store i32* %__tmp_283, i32* %__tmp_320, align 4
	%array_id_ptr_105 = getelementptr inbounds i32, i32* %__tmp_320, i32 %__tmp_319
	%res_array_106 = load i32, i32* %array_id_ptr_105, align 4
	store i32 %__tmp_291, i32 %__tmp_321, align 4
	%res_108 = add i32 %res_array_106, %__tmp_321
	store i32 %res_108, i32 %__tmp_292, align 4
	store i32 %__tmp_292, i32 %__tmp_322, align 4
	store i32 %__tmp_290, i32 %__tmp_323, align 4
	store i32* %__tmp_283, i32* %__tmp_324, align 4
	%array_id_ptr_112 = getelementptr inbounds i32, i32* %__tmp_324, i32 %__tmp_323
	%res_array_113 = load i32, i32* %array_id_ptr_112, align 4
	%res_114 = icmp sge i32 %__tmp_322, %res_array_113
	br i1 %res_114, label %dijkstra.17_if_true, label %dijkstra.17_if_terminate

dijkstra.17_if_true:
	br label %dijkstra.16_for_execution

dijkstra.17_if_terminate:
	store i32 %__tmp_290, i32 %__tmp_325, align 4
	store i32* %__tmp_283, i32* %__tmp_326, align 4
	%array_id_ptr_117 = getelementptr inbounds i32, i32* %__tmp_326, i32 %__tmp_325
	%res_array_118 = load i32, i32* %array_id_ptr_117, align 4
	store i32 %__tmp_292, i32 %__tmp_327, align 4
	store i32 %__tmp_327, i32* %array_id_ptr_117, align 4
	store %class.Node* %__tmp_287, %class.Node* %__tmp_328, align 4
	%malloc_ptr_121 = call i8* @__malloc(i32 8)
	%new_class_reg_122 = bitcast i8* %malloc_ptr_121 to %class.Node*
	store %class.Node* %new_class_reg_122, %class.Node* %__tmp_287, align 4
	store %class.Node* %__tmp_287, %class.Node* %__tmp_329, align 4
	%class_member_ptr_124 = getelementptr inbounds %class.Node, %class.Node* %__tmp_329, i32 0, i32 0
	%class_member_125 = load i32, i32* %class_member_ptr_124, align 4
	store i32 %__tmp_290, i32 %__tmp_330, align 4
	store i32 %__tmp_330, i32* %class_member_ptr_124, align 4
	store %class.Node* %__tmp_287, %class.Node* %__tmp_331, align 4
	%class_member_ptr_128 = getelementptr inbounds %class.Node, %class.Node* %__tmp_331, i32 0, i32 1
	%class_member_129 = load i32, i32* %class_member_ptr_128, align 4
	store i32 %__tmp_290, i32 %__tmp_332, align 4
	store i32* %__tmp_283, i32* %__tmp_333, align 4
	%array_id_ptr_132 = getelementptr inbounds i32, i32* %__tmp_333, i32 %__tmp_332
	%res_array_133 = load i32, i32* %array_id_ptr_132, align 4
	store i32 %res_array_133, i32* %class_member_ptr_128, align 4
	store %class.Heap_Node* %__tmp_285, %class.Heap_Node* %__tmp_334, align 4
	store %class.Node* %__tmp_287, %class.Node* %__tmp_335, align 4
	call void @Heap_Node.push(%class.Heap_Node* %__tmp_334, %class.Node* %__tmp_335)
	br label %dijkstra.16_for_execution

dijkstra.16_for_execution:
	store i32 %__tmp_289, i32 %__tmp_336, align 4
	store i32 %__tmp_289, i32 %__tmp_337, align 4
	%identifier_register_138 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_139 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_138, i32 0, i32 1
	%class_member_140 = load i32*, i32** %class_member_ptr_139, align 4
	%array_id_ptr_141 = getelementptr inbounds i32, i32* %class_member_140, i32 %__tmp_337
	%res_array_142 = load i32, i32* %array_id_ptr_141, align 4
	store i32 %res_array_142, i32 %__tmp_289, align 4
	br label %dijkstra.16_for_condition

dijkstra.16_for_terminate:
	br label %dijkstra.14_while_condition

dijkstra.14_while_terminate:
	store i32* %__tmp_283, i32* %__tmp_338, align 4
	store i32* %__tmp_338, i32* %__tmp_281, align 4
	br label %dijkstra.return

dijkstra.return:
	store i32* %__tmp_281, i32* %__tmp_339, align 4
	ret i32* %__tmp_339

}

define i32 @main() #0 {
main.entry:
	call void @__global_init_0()
	store i32 0, i32 %__tmp_340, align 4
	call void @init()
	store i32 0, i32 %__tmp_341, align 4
	store i32 0, i32 %__tmp_342, align 4
	store i32 %__tmp_341, i32 %__tmp_344, align 4
	store i32 0, i32 %__tmp_341, align 4
	br label %main.18_for_condition

main.18_for_condition:
	store i32 %__tmp_341, i32 %__tmp_345, align 4
	%identifier_register_5 = load i32, i32* @n, align 4
	%res_6 = icmp slt i32 %__tmp_345, %identifier_register_5
	br i1 %res_6, label %main.18_for_loop, label %main.18_for_terminate

main.18_for_loop:
	store i32 %__tmp_341, i32 %__tmp_346, align 4
	%ret_9 = call i32* @dijkstra(i32 %__tmp_346)
	store i32* %ret_9, i32* %__tmp_343, align 4
	store i32 %__tmp_342, i32 %__tmp_347, align 4
	store i32 0, i32 %__tmp_342, align 4
	br label %main.19_for_condition

main.19_for_condition:
	store i32 %__tmp_342, i32 %__tmp_348, align 4
	%identifier_register_12 = load i32, i32* @n, align 4
	%res_13 = icmp slt i32 %__tmp_348, %identifier_register_12
	br i1 %res_13, label %main.19_for_loop, label %main.19_for_terminate

main.19_for_loop:
	store i32 %__tmp_342, i32 %__tmp_349, align 4
	store i32* %__tmp_343, i32* %__tmp_350, align 4
	%array_id_ptr_16 = getelementptr inbounds i32, i32* %__tmp_350, i32 %__tmp_349
	%res_array_17 = load i32, i32* %array_id_ptr_16, align 4
	%identifier_register_18 = load i32, i32* @INF, align 4
	%res_19 = icmp eq i32 %res_array_17, %identifier_register_18
	br i1 %res_19, label %main.20_if_true, label %main.20_if_false

main.20_if_true:
	call void @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.0, i32 0, i32 0))
	br label %main.20_if_terminate

main.20_if_false:
	store i32 %__tmp_342, i32 %__tmp_351, align 4
	store i32* %__tmp_343, i32* %__tmp_352, align 4
	%array_id_ptr_22 = getelementptr inbounds i32, i32* %__tmp_352, i32 %__tmp_351
	%res_array_23 = load i32, i32* %array_id_ptr_22, align 4
	%ret_24 = call i8* @toString(i32 %res_array_23)
	call void @print(i8* %ret_24)
	br label %main.20_if_terminate

main.20_if_terminate:
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
	br label %main.19_for_execution

main.19_for_execution:
	store i32 %__tmp_342, i32 %__tmp_353, align 4
	%res_26 = add i32 %__tmp_353, 1
	store i32 %res_26, i32 %__tmp_342, align 4
	br label %main.19_for_condition

main.19_for_terminate:
	call void @println(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
	br label %main.18_for_execution

main.18_for_execution:
	store i32 %__tmp_341, i32 %__tmp_354, align 4
	%res_28 = add i32 %__tmp_354, 1
	store i32 %res_28, i32 %__tmp_341, align 4
	br label %main.18_for_condition

main.18_for_terminate:
	store i32 0, i32 %__tmp_340, align 4
	br label %main.return

main.return:
	store i32 %__tmp_340, i32 %__tmp_355, align 4
	ret i32 %__tmp_355

}

define void @__global_init_0() #0 {
__global_init_0.entry:
	store i32 10000000, i32* @INF, align 4
	br label %__global_init_0.return

__global_init_0.return:
	ret void

}

