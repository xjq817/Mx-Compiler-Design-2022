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
	%parameter_ptr_3 = alloca %class.EdgeList*, align 4
	%parameter_ptr_4 = alloca i32, align 4
	%parameter_ptr_5 = alloca i32, align 4
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList** %parameter_ptr_3, align 4
	store i32 %n_1, i32* %parameter_ptr_4, align 4
	store i32 %m_2, i32* %parameter_ptr_5, align 4
	%this_reg_6 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_7 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_6, i32 0, i32 0
	%identifier_register_8 = load %class.Edge**, %class.Edge*** %var_reg_7, align 4
	%identifier_register_9 = load i32, i32* %parameter_ptr_5, align 4
	%arr_size_reg_10 = mul i32 %identifier_register_9, 4
	%malloc_size_11 = add i32 %arr_size_reg_10, 4
	%malloc_ptr_12 = call i8* @__malloc(i32 %malloc_size_11)
	%arr_len_ptr_13 = bitcast i8* %malloc_ptr_12 to i32*
	store i32 %identifier_register_9, i32* %arr_len_ptr_13, align 4
	%arr_char_ptr_14 = getelementptr inbounds i8, i8* %malloc_ptr_12, i32 4
	%arr_ptr_15 = bitcast i8* %arr_char_ptr_14 to %class.Edge**
	%this_reg_16 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_17 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_16, i32 0, i32 0
	store %class.Edge** %arr_ptr_15, %class.Edge*** %var_reg_17, align 4
	%this_reg_18 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_19 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_18, i32 0, i32 1
	%identifier_register_20 = load i32*, i32** %var_reg_19, align 4
	%identifier_register_21 = load i32, i32* %parameter_ptr_5, align 4
	%arr_size_reg_22 = mul i32 %identifier_register_21, 4
	%malloc_size_23 = add i32 %arr_size_reg_22, 4
	%malloc_ptr_24 = call i8* @__malloc(i32 %malloc_size_23)
	%arr_len_ptr_25 = bitcast i8* %malloc_ptr_24 to i32*
	store i32 %identifier_register_21, i32* %arr_len_ptr_25, align 4
	%arr_char_ptr_26 = getelementptr inbounds i8, i8* %malloc_ptr_24, i32 4
	%arr_ptr_27 = bitcast i8* %arr_char_ptr_26 to i32*
	%this_reg_28 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_29 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_28, i32 0, i32 1
	store i32* %arr_ptr_27, i32** %var_reg_29, align 4
	%this_reg_30 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_31 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_30, i32 0, i32 2
	%identifier_register_32 = load i32*, i32** %var_reg_31, align 4
	%identifier_register_33 = load i32, i32* %parameter_ptr_4, align 4
	%arr_size_reg_34 = mul i32 %identifier_register_33, 4
	%malloc_size_35 = add i32 %arr_size_reg_34, 4
	%malloc_ptr_36 = call i8* @__malloc(i32 %malloc_size_35)
	%arr_len_ptr_37 = bitcast i8* %malloc_ptr_36 to i32*
	store i32 %identifier_register_33, i32* %arr_len_ptr_37, align 4
	%arr_char_ptr_38 = getelementptr inbounds i8, i8* %malloc_ptr_36, i32 4
	%arr_ptr_39 = bitcast i8* %arr_char_ptr_38 to i32*
	%this_reg_40 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_41 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_40, i32 0, i32 2
	store i32* %arr_ptr_39, i32** %var_reg_41, align 4
	%alloca_i_42 = alloca i32, align 4
	store i32 0, i32* %alloca_i_42, align 4
	%identifier_register_43 = load i32, i32* %alloca_i_42, align 4
	store i32 0, i32* %alloca_i_42, align 4
	br label %EdgeList.init.0_for_condition

EdgeList.init.0_for_condition:
	%identifier_register_44 = load i32, i32* %alloca_i_42, align 4
	%identifier_register_45 = load i32, i32* %parameter_ptr_5, align 4
	%res_46 = icmp slt i32 %identifier_register_44, %identifier_register_45
	br i1 %res_46, label %EdgeList.init.0_for_loop, label %EdgeList.init.0_for_terminate

EdgeList.init.0_for_loop:
	%identifier_register_47 = load i32, i32* %alloca_i_42, align 4
	%this_reg_48 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_49 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_48, i32 0, i32 1
	%identifier_register_50 = load i32*, i32** %var_reg_49, align 4
	%array_id_ptr_51 = getelementptr inbounds i32, i32* %identifier_register_50, i32 %identifier_register_47
	%res_array_52 = load i32, i32* %array_id_ptr_51, align 4
	%res_53 = sub nsw i32 0, 1
	store i32 %res_53, i32* %array_id_ptr_51, align 4
	br label %EdgeList.init.0_for_execution

EdgeList.init.0_for_execution:
	%identifier_register_54 = load i32, i32* %alloca_i_42, align 4
	%res_55 = add i32 %identifier_register_54, 1
	store i32 %res_55, i32* %alloca_i_42, align 4
	br label %EdgeList.init.0_for_condition

EdgeList.init.0_for_terminate:
	%identifier_register_56 = load i32, i32* %alloca_i_42, align 4
	store i32 0, i32* %alloca_i_42, align 4
	br label %EdgeList.init.1_for_condition

EdgeList.init.1_for_condition:
	%identifier_register_57 = load i32, i32* %alloca_i_42, align 4
	%identifier_register_58 = load i32, i32* %parameter_ptr_4, align 4
	%res_59 = icmp slt i32 %identifier_register_57, %identifier_register_58
	br i1 %res_59, label %EdgeList.init.1_for_loop, label %EdgeList.init.1_for_terminate

EdgeList.init.1_for_loop:
	%identifier_register_60 = load i32, i32* %alloca_i_42, align 4
	%this_reg_61 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_62 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_61, i32 0, i32 2
	%identifier_register_63 = load i32*, i32** %var_reg_62, align 4
	%array_id_ptr_64 = getelementptr inbounds i32, i32* %identifier_register_63, i32 %identifier_register_60
	%res_array_65 = load i32, i32* %array_id_ptr_64, align 4
	%res_66 = sub nsw i32 0, 1
	store i32 %res_66, i32* %array_id_ptr_64, align 4
	br label %EdgeList.init.1_for_execution

EdgeList.init.1_for_execution:
	%identifier_register_67 = load i32, i32* %alloca_i_42, align 4
	%res_68 = add i32 %identifier_register_67, 1
	store i32 %res_68, i32* %alloca_i_42, align 4
	br label %EdgeList.init.1_for_condition

EdgeList.init.1_for_terminate:
	%this_reg_69 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_70 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_69, i32 0, i32 3
	%identifier_register_71 = load i32, i32* %var_reg_70, align 4
	%this_reg_72 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_3, align 4
	%var_reg_73 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_72, i32 0, i32 3
	store i32 0, i32* %var_reg_73, align 4
	br label %EdgeList.init.return

EdgeList.init.return:
	ret void

}

define void @EdgeList.addEdge(%class.EdgeList* %__this_ptr_0, i32 %u_1, i32 %v_2, i32 %w_3) #0 {
EdgeList.addEdge.entry:
	%parameter_ptr_4 = alloca %class.EdgeList*, align 4
	%parameter_ptr_5 = alloca i32, align 4
	%parameter_ptr_6 = alloca i32, align 4
	%parameter_ptr_7 = alloca i32, align 4
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList** %parameter_ptr_4, align 4
	store i32 %u_1, i32* %parameter_ptr_5, align 4
	store i32 %v_2, i32* %parameter_ptr_6, align 4
	store i32 %w_3, i32* %parameter_ptr_7, align 4
	%alloca_e_8 = alloca %class.Edge*, align 4
	%malloc_ptr_9 = call i8* @__malloc(i32 12)
	%new_class_reg_10 = bitcast i8* %malloc_ptr_9 to %class.Edge*
	store %class.Edge* %new_class_reg_10, %class.Edge** %alloca_e_8, align 4
	%identifier_register_11 = load %class.Edge*, %class.Edge** %alloca_e_8, align 4
	%class_member_ptr_12 = getelementptr inbounds %class.Edge, %class.Edge* %identifier_register_11, i32 0, i32 0
	%class_member_13 = load i32, i32* %class_member_ptr_12, align 4
	%identifier_register_14 = load i32, i32* %parameter_ptr_5, align 4
	store i32 %identifier_register_14, i32* %class_member_ptr_12, align 4
	%identifier_register_15 = load %class.Edge*, %class.Edge** %alloca_e_8, align 4
	%class_member_ptr_16 = getelementptr inbounds %class.Edge, %class.Edge* %identifier_register_15, i32 0, i32 1
	%class_member_17 = load i32, i32* %class_member_ptr_16, align 4
	%identifier_register_18 = load i32, i32* %parameter_ptr_6, align 4
	store i32 %identifier_register_18, i32* %class_member_ptr_16, align 4
	%identifier_register_19 = load %class.Edge*, %class.Edge** %alloca_e_8, align 4
	%class_member_ptr_20 = getelementptr inbounds %class.Edge, %class.Edge* %identifier_register_19, i32 0, i32 2
	%class_member_21 = load i32, i32* %class_member_ptr_20, align 4
	%identifier_register_22 = load i32, i32* %parameter_ptr_7, align 4
	store i32 %identifier_register_22, i32* %class_member_ptr_20, align 4
	%this_reg_23 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_24 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_23, i32 0, i32 3
	%identifier_register_25 = load i32, i32* %var_reg_24, align 4
	%this_reg_26 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_27 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_26, i32 0, i32 0
	%identifier_register_28 = load %class.Edge**, %class.Edge*** %var_reg_27, align 4
	%array_id_ptr_29 = getelementptr inbounds %class.Edge*, %class.Edge** %identifier_register_28, i32 %identifier_register_25
	%res_array_30 = load %class.Edge*, %class.Edge** %array_id_ptr_29, align 4
	%identifier_register_31 = load %class.Edge*, %class.Edge** %alloca_e_8, align 4
	store %class.Edge* %identifier_register_31, %class.Edge** %array_id_ptr_29, align 4
	%this_reg_32 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_33 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_32, i32 0, i32 3
	%identifier_register_34 = load i32, i32* %var_reg_33, align 4
	%this_reg_35 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_36 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_35, i32 0, i32 1
	%identifier_register_37 = load i32*, i32** %var_reg_36, align 4
	%array_id_ptr_38 = getelementptr inbounds i32, i32* %identifier_register_37, i32 %identifier_register_34
	%res_array_39 = load i32, i32* %array_id_ptr_38, align 4
	%identifier_register_40 = load i32, i32* %parameter_ptr_5, align 4
	%this_reg_41 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_42 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_41, i32 0, i32 2
	%identifier_register_43 = load i32*, i32** %var_reg_42, align 4
	%array_id_ptr_44 = getelementptr inbounds i32, i32* %identifier_register_43, i32 %identifier_register_40
	%res_array_45 = load i32, i32* %array_id_ptr_44, align 4
	store i32 %res_array_45, i32* %array_id_ptr_38, align 4
	%identifier_register_46 = load i32, i32* %parameter_ptr_5, align 4
	%this_reg_47 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_48 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_47, i32 0, i32 2
	%identifier_register_49 = load i32*, i32** %var_reg_48, align 4
	%array_id_ptr_50 = getelementptr inbounds i32, i32* %identifier_register_49, i32 %identifier_register_46
	%res_array_51 = load i32, i32* %array_id_ptr_50, align 4
	%this_reg_52 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_53 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_52, i32 0, i32 3
	%identifier_register_54 = load i32, i32* %var_reg_53, align 4
	store i32 %identifier_register_54, i32* %array_id_ptr_50, align 4
	%this_reg_55 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_56 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_55, i32 0, i32 3
	%identifier_register_57 = load i32, i32* %var_reg_56, align 4
	%this_reg_59 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_4, align 4
	%var_reg_60 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_59, i32 0, i32 3
	%res_58 = add i32 %identifier_register_57, 1
	store i32 %res_58, i32* %var_reg_60, align 4
	br label %EdgeList.addEdge.return

EdgeList.addEdge.return:
	ret void

}

define i32 @EdgeList.nVertices(%class.EdgeList* %__this_ptr_0) #0 {
EdgeList.nVertices.entry:
	%parameter_ptr_1 = alloca %class.EdgeList*, align 4
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca i32, align 4
	%this_reg_3 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_3, i32 0, i32 2
	%identifier_register_5 = load i32*, i32** %var_reg_4, align 4
	%arr_to_int_7 = bitcast i32* %identifier_register_5 to i32*
	%arr_len_ptr_6 = getelementptr inbounds i32, i32* %arr_to_int_7, i32 -1
	%arr_len_8 = load i32, i32* %arr_len_ptr_6, align 4
	store i32 %arr_len_8, i32* %return_ptr_2, align 4
	br label %EdgeList.nVertices.return

EdgeList.nVertices.return:
	%return_val_9 = load i32, i32* %return_ptr_2, align 4
	ret i32 %return_val_9

}

define i32 @EdgeList.nEdges(%class.EdgeList* %__this_ptr_0) #0 {
EdgeList.nEdges.entry:
	%parameter_ptr_1 = alloca %class.EdgeList*, align 4
	store %class.EdgeList* %__this_ptr_0, %class.EdgeList** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca i32, align 4
	%this_reg_3 = load %class.EdgeList*, %class.EdgeList** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %this_reg_3, i32 0, i32 0
	%identifier_register_5 = load %class.Edge**, %class.Edge*** %var_reg_4, align 4
	%arr_to_int_7 = bitcast %class.Edge** %identifier_register_5 to i32*
	%arr_len_ptr_6 = getelementptr inbounds i32, i32* %arr_to_int_7, i32 -1
	%arr_len_8 = load i32, i32* %arr_len_ptr_6, align 4
	store i32 %arr_len_8, i32* %return_ptr_2, align 4
	br label %EdgeList.nEdges.return

EdgeList.nEdges.return:
	%return_val_9 = load i32, i32* %return_ptr_2, align 4
	ret i32 %return_val_9

}

define void @Array_Node.__cons(%class.Array_Node* %__this_ptr_1) #0 {
Array_Node.__cons.entry:
	%this_ptr_1 = alloca %class.Array_Node*, align 4
	store %class.Array_Node* %__this_ptr_1, %class.Array_Node** %this_ptr_1, align 4
	%this_reg_2 = load %class.Array_Node*, %class.Array_Node** %this_ptr_1, align 4
	%var_reg_3 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_2, i32 0, i32 1
	%identifier_register_4 = load i32, i32* %var_reg_3, align 4
	%this_reg_5 = load %class.Array_Node*, %class.Array_Node** %this_ptr_1, align 4
	%var_reg_6 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_5, i32 0, i32 1
	store i32 0, i32* %var_reg_6, align 4
	%this_reg_7 = load %class.Array_Node*, %class.Array_Node** %this_ptr_1, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_7, i32 0, i32 0
	%identifier_register_9 = load %class.Node**, %class.Node*** %var_reg_8, align 4
	%arr_size_reg_10 = mul i32 16, 4
	%malloc_size_11 = add i32 %arr_size_reg_10, 4
	%malloc_ptr_12 = call i8* @__malloc(i32 %malloc_size_11)
	%arr_len_ptr_13 = bitcast i8* %malloc_ptr_12 to i32*
	store i32 16, i32* %arr_len_ptr_13, align 4
	%arr_char_ptr_14 = getelementptr inbounds i8, i8* %malloc_ptr_12, i32 4
	%arr_ptr_15 = bitcast i8* %arr_char_ptr_14 to %class.Node**
	%this_reg_16 = load %class.Array_Node*, %class.Array_Node** %this_ptr_1, align 4
	%var_reg_17 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_16, i32 0, i32 0
	store %class.Node** %arr_ptr_15, %class.Node*** %var_reg_17, align 4
	br label %Array_Node.__cons.return

Array_Node.__cons.return:
	ret void

}

define void @Array_Node.push_back(%class.Array_Node* %__this_ptr_0, %class.Node* %v_1) #0 {
Array_Node.push_back.entry:
	%parameter_ptr_2 = alloca %class.Array_Node*, align 4
	%parameter_ptr_3 = alloca %class.Node*, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_2, align 4
	store %class.Node* %v_1, %class.Node** %parameter_ptr_3, align 4
	%this_ptr_4 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%ret_5 = call i32 @Array_Node.size(%class.Array_Node* %this_ptr_4)
	%this_reg_6 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_7 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_6, i32 0, i32 0
	%identifier_register_8 = load %class.Node**, %class.Node*** %var_reg_7, align 4
	%arr_to_int_10 = bitcast %class.Node** %identifier_register_8 to i32*
	%arr_len_ptr_9 = getelementptr inbounds i32, i32* %arr_to_int_10, i32 -1
	%arr_len_11 = load i32, i32* %arr_len_ptr_9, align 4
	%res_12 = icmp eq i32 %ret_5, %arr_len_11
	br i1 %res_12, label %Array_Node.push_back.2_if_true, label %Array_Node.push_back.2_if_terminate

Array_Node.push_back.2_if_true:
	%this_ptr_13 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	call void @Array_Node.doubleStorage(%class.Array_Node* %this_ptr_13)
	br label %Array_Node.push_back.2_if_terminate

Array_Node.push_back.2_if_terminate:
	%this_reg_14 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_15 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_14, i32 0, i32 1
	%identifier_register_16 = load i32, i32* %var_reg_15, align 4
	%this_reg_17 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_18 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_17, i32 0, i32 0
	%identifier_register_19 = load %class.Node**, %class.Node*** %var_reg_18, align 4
	%array_id_ptr_20 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_19, i32 %identifier_register_16
	%res_array_21 = load %class.Node*, %class.Node** %array_id_ptr_20, align 4
	%identifier_register_22 = load %class.Node*, %class.Node** %parameter_ptr_3, align 4
	store %class.Node* %identifier_register_22, %class.Node** %array_id_ptr_20, align 4
	%this_reg_23 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_24 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_23, i32 0, i32 1
	%identifier_register_25 = load i32, i32* %var_reg_24, align 4
	%this_reg_27 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_28 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_27, i32 0, i32 1
	%res_26 = add i32 %identifier_register_25, 1
	store i32 %res_26, i32* %var_reg_28, align 4
	br label %Array_Node.push_back.return

Array_Node.push_back.return:
	ret void

}

define %class.Node* @Array_Node.pop_back(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.pop_back.entry:
	%parameter_ptr_1 = alloca %class.Array_Node*, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca %class.Node*, align 4
	%this_reg_3 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_3, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	%this_reg_7 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_7, i32 0, i32 1
	%res_6 = add i32 %identifier_register_5, -1
	store i32 %res_6, i32* %var_reg_8, align 4
	%this_reg_9 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_10 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_9, i32 0, i32 1
	%identifier_register_11 = load i32, i32* %var_reg_10, align 4
	%this_reg_12 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_13 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_12, i32 0, i32 0
	%identifier_register_14 = load %class.Node**, %class.Node*** %var_reg_13, align 4
	%array_id_ptr_15 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_14, i32 %identifier_register_11
	%res_array_16 = load %class.Node*, %class.Node** %array_id_ptr_15, align 4
	store %class.Node* %res_array_16, %class.Node** %return_ptr_2, align 4
	br label %Array_Node.pop_back.return

Array_Node.pop_back.return:
	%return_val_17 = load %class.Node*, %class.Node** %return_ptr_2, align 4
	ret %class.Node* %return_val_17

}

define %class.Node* @Array_Node.back(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.back.entry:
	%parameter_ptr_1 = alloca %class.Array_Node*, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca %class.Node*, align 4
	%this_reg_3 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_3, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	%res_6 = sub nsw i32 %identifier_register_5, 1
	%this_reg_7 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_7, i32 0, i32 0
	%identifier_register_9 = load %class.Node**, %class.Node*** %var_reg_8, align 4
	%array_id_ptr_10 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_9, i32 %res_6
	%res_array_11 = load %class.Node*, %class.Node** %array_id_ptr_10, align 4
	store %class.Node* %res_array_11, %class.Node** %return_ptr_2, align 4
	br label %Array_Node.back.return

Array_Node.back.return:
	%return_val_12 = load %class.Node*, %class.Node** %return_ptr_2, align 4
	ret %class.Node* %return_val_12

}

define %class.Node* @Array_Node.front(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.front.entry:
	%parameter_ptr_1 = alloca %class.Array_Node*, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca %class.Node*, align 4
	%this_reg_3 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_3, i32 0, i32 0
	%identifier_register_5 = load %class.Node**, %class.Node*** %var_reg_4, align 4
	%array_id_ptr_6 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_5, i32 0
	%res_array_7 = load %class.Node*, %class.Node** %array_id_ptr_6, align 4
	store %class.Node* %res_array_7, %class.Node** %return_ptr_2, align 4
	br label %Array_Node.front.return

Array_Node.front.return:
	%return_val_8 = load %class.Node*, %class.Node** %return_ptr_2, align 4
	ret %class.Node* %return_val_8

}

define i32 @Array_Node.size(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.size.entry:
	%parameter_ptr_1 = alloca %class.Array_Node*, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca i32, align 4
	%this_reg_3 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_3, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	store i32 %identifier_register_5, i32* %return_ptr_2, align 4
	br label %Array_Node.size.return

Array_Node.size.return:
	%return_val_6 = load i32, i32* %return_ptr_2, align 4
	ret i32 %return_val_6

}

define void @Array_Node.resize(%class.Array_Node* %__this_ptr_0, i32 %newSize_1) #0 {
Array_Node.resize.entry:
	%parameter_ptr_2 = alloca %class.Array_Node*, align 4
	%parameter_ptr_3 = alloca i32, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_2, align 4
	store i32 %newSize_1, i32* %parameter_ptr_3, align 4
	br label %Array_Node.resize.3_while_condition

Array_Node.resize.3_while_condition:
	%this_reg_4 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_5 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_4, i32 0, i32 0
	%identifier_register_6 = load %class.Node**, %class.Node*** %var_reg_5, align 4
	%arr_to_int_8 = bitcast %class.Node** %identifier_register_6 to i32*
	%arr_len_ptr_7 = getelementptr inbounds i32, i32* %arr_to_int_8, i32 -1
	%arr_len_9 = load i32, i32* %arr_len_ptr_7, align 4
	%identifier_register_10 = load i32, i32* %parameter_ptr_3, align 4
	%res_11 = icmp slt i32 %arr_len_9, %identifier_register_10
	br i1 %res_11, label %Array_Node.resize.3_while_loop, label %Array_Node.resize.3_while_terminate

Array_Node.resize.3_while_loop:
	%this_ptr_12 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	call void @Array_Node.doubleStorage(%class.Array_Node* %this_ptr_12)
	br label %Array_Node.resize.3_while_condition

Array_Node.resize.3_while_terminate:
	%this_reg_13 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_14 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_13, i32 0, i32 1
	%identifier_register_15 = load i32, i32* %var_reg_14, align 4
	%identifier_register_16 = load i32, i32* %parameter_ptr_3, align 4
	%this_reg_17 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_18 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_17, i32 0, i32 1
	store i32 %identifier_register_16, i32* %var_reg_18, align 4
	br label %Array_Node.resize.return

Array_Node.resize.return:
	ret void

}

define %class.Node* @Array_Node.get(%class.Array_Node* %__this_ptr_0, i32 %i_1) #0 {
Array_Node.get.entry:
	%parameter_ptr_2 = alloca %class.Array_Node*, align 4
	%parameter_ptr_3 = alloca i32, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_2, align 4
	store i32 %i_1, i32* %parameter_ptr_3, align 4
	%return_ptr_4 = alloca %class.Node*, align 4
	%identifier_register_5 = load i32, i32* %parameter_ptr_3, align 4
	%this_reg_6 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_2, align 4
	%var_reg_7 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_6, i32 0, i32 0
	%identifier_register_8 = load %class.Node**, %class.Node*** %var_reg_7, align 4
	%array_id_ptr_9 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_8, i32 %identifier_register_5
	%res_array_10 = load %class.Node*, %class.Node** %array_id_ptr_9, align 4
	store %class.Node* %res_array_10, %class.Node** %return_ptr_4, align 4
	br label %Array_Node.get.return

Array_Node.get.return:
	%return_val_11 = load %class.Node*, %class.Node** %return_ptr_4, align 4
	ret %class.Node* %return_val_11

}

define void @Array_Node.set(%class.Array_Node* %__this_ptr_0, i32 %i_1, %class.Node* %v_2) #0 {
Array_Node.set.entry:
	%parameter_ptr_3 = alloca %class.Array_Node*, align 4
	%parameter_ptr_4 = alloca i32, align 4
	%parameter_ptr_5 = alloca %class.Node*, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_3, align 4
	store i32 %i_1, i32* %parameter_ptr_4, align 4
	store %class.Node* %v_2, %class.Node** %parameter_ptr_5, align 4
	%identifier_register_6 = load i32, i32* %parameter_ptr_4, align 4
	%this_reg_7 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_3, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_7, i32 0, i32 0
	%identifier_register_9 = load %class.Node**, %class.Node*** %var_reg_8, align 4
	%array_id_ptr_10 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_9, i32 %identifier_register_6
	%res_array_11 = load %class.Node*, %class.Node** %array_id_ptr_10, align 4
	%identifier_register_12 = load %class.Node*, %class.Node** %parameter_ptr_5, align 4
	store %class.Node* %identifier_register_12, %class.Node** %array_id_ptr_10, align 4
	br label %Array_Node.set.return

Array_Node.set.return:
	ret void

}

define void @Array_Node.swap(%class.Array_Node* %__this_ptr_0, i32 %i_1, i32 %j_2) #0 {
Array_Node.swap.entry:
	%parameter_ptr_3 = alloca %class.Array_Node*, align 4
	%parameter_ptr_4 = alloca i32, align 4
	%parameter_ptr_5 = alloca i32, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_3, align 4
	store i32 %i_1, i32* %parameter_ptr_4, align 4
	store i32 %j_2, i32* %parameter_ptr_5, align 4
	%alloca_t_6 = alloca %class.Node*, align 4
	%identifier_register_7 = load i32, i32* %parameter_ptr_4, align 4
	%this_reg_8 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_3, align 4
	%var_reg_9 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_8, i32 0, i32 0
	%identifier_register_10 = load %class.Node**, %class.Node*** %var_reg_9, align 4
	%array_id_ptr_11 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_10, i32 %identifier_register_7
	%res_array_12 = load %class.Node*, %class.Node** %array_id_ptr_11, align 4
	store %class.Node* %res_array_12, %class.Node** %alloca_t_6, align 4
	%identifier_register_13 = load i32, i32* %parameter_ptr_4, align 4
	%this_reg_14 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_3, align 4
	%var_reg_15 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_14, i32 0, i32 0
	%identifier_register_16 = load %class.Node**, %class.Node*** %var_reg_15, align 4
	%array_id_ptr_17 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_16, i32 %identifier_register_13
	%res_array_18 = load %class.Node*, %class.Node** %array_id_ptr_17, align 4
	%identifier_register_19 = load i32, i32* %parameter_ptr_5, align 4
	%this_reg_20 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_3, align 4
	%var_reg_21 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_20, i32 0, i32 0
	%identifier_register_22 = load %class.Node**, %class.Node*** %var_reg_21, align 4
	%array_id_ptr_23 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_22, i32 %identifier_register_19
	%res_array_24 = load %class.Node*, %class.Node** %array_id_ptr_23, align 4
	store %class.Node* %res_array_24, %class.Node** %array_id_ptr_17, align 4
	%identifier_register_25 = load i32, i32* %parameter_ptr_5, align 4
	%this_reg_26 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_3, align 4
	%var_reg_27 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_26, i32 0, i32 0
	%identifier_register_28 = load %class.Node**, %class.Node*** %var_reg_27, align 4
	%array_id_ptr_29 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_28, i32 %identifier_register_25
	%res_array_30 = load %class.Node*, %class.Node** %array_id_ptr_29, align 4
	%identifier_register_31 = load %class.Node*, %class.Node** %alloca_t_6, align 4
	store %class.Node* %identifier_register_31, %class.Node** %array_id_ptr_29, align 4
	br label %Array_Node.swap.return

Array_Node.swap.return:
	ret void

}

define void @Array_Node.doubleStorage(%class.Array_Node* %__this_ptr_0) #0 {
Array_Node.doubleStorage.entry:
	%parameter_ptr_1 = alloca %class.Array_Node*, align 4
	store %class.Array_Node* %__this_ptr_0, %class.Array_Node** %parameter_ptr_1, align 4
	%alloca_copy_2 = alloca %class.Node**, align 4
	%this_reg_3 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_3, i32 0, i32 0
	%identifier_register_5 = load %class.Node**, %class.Node*** %var_reg_4, align 4
	store %class.Node** %identifier_register_5, %class.Node*** %alloca_copy_2, align 4
	%alloca_szCopy_6 = alloca i32, align 4
	%this_reg_7 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_7, i32 0, i32 1
	%identifier_register_9 = load i32, i32* %var_reg_8, align 4
	store i32 %identifier_register_9, i32* %alloca_szCopy_6, align 4
	%this_reg_10 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_11 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_10, i32 0, i32 0
	%identifier_register_12 = load %class.Node**, %class.Node*** %var_reg_11, align 4
	%identifier_register_13 = load %class.Node**, %class.Node*** %alloca_copy_2, align 4
	%arr_to_int_15 = bitcast %class.Node** %identifier_register_13 to i32*
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
	%this_reg_24 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_25 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_24, i32 0, i32 0
	store %class.Node** %arr_ptr_23, %class.Node*** %var_reg_25, align 4
	%this_reg_26 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_27 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_26, i32 0, i32 1
	%identifier_register_28 = load i32, i32* %var_reg_27, align 4
	%this_reg_29 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_30 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_29, i32 0, i32 1
	store i32 0, i32* %var_reg_30, align 4
	br label %Array_Node.doubleStorage.4_for_condition

Array_Node.doubleStorage.4_for_condition:
	%this_reg_31 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_32 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_31, i32 0, i32 1
	%identifier_register_33 = load i32, i32* %var_reg_32, align 4
	%identifier_register_34 = load i32, i32* %alloca_szCopy_6, align 4
	%res_35 = icmp ne i32 %identifier_register_33, %identifier_register_34
	br i1 %res_35, label %Array_Node.doubleStorage.4_for_loop, label %Array_Node.doubleStorage.4_for_terminate

Array_Node.doubleStorage.4_for_loop:
	%this_reg_36 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_37 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_36, i32 0, i32 1
	%identifier_register_38 = load i32, i32* %var_reg_37, align 4
	%this_reg_39 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_40 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_39, i32 0, i32 0
	%identifier_register_41 = load %class.Node**, %class.Node*** %var_reg_40, align 4
	%array_id_ptr_42 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_41, i32 %identifier_register_38
	%res_array_43 = load %class.Node*, %class.Node** %array_id_ptr_42, align 4
	%this_reg_44 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_45 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_44, i32 0, i32 1
	%identifier_register_46 = load i32, i32* %var_reg_45, align 4
	%identifier_register_47 = load %class.Node**, %class.Node*** %alloca_copy_2, align 4
	%array_id_ptr_48 = getelementptr inbounds %class.Node*, %class.Node** %identifier_register_47, i32 %identifier_register_46
	%res_array_49 = load %class.Node*, %class.Node** %array_id_ptr_48, align 4
	store %class.Node* %res_array_49, %class.Node** %array_id_ptr_42, align 4
	br label %Array_Node.doubleStorage.4_for_execution

Array_Node.doubleStorage.4_for_execution:
	%this_reg_50 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_51 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_50, i32 0, i32 1
	%identifier_register_52 = load i32, i32* %var_reg_51, align 4
	%this_reg_54 = load %class.Array_Node*, %class.Array_Node** %parameter_ptr_1, align 4
	%var_reg_55 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %this_reg_54, i32 0, i32 1
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
	%this_ptr_1 = alloca %class.Heap_Node*, align 4
	store %class.Heap_Node* %__this_ptr_1, %class.Heap_Node** %this_ptr_1, align 4
	%this_reg_2 = load %class.Heap_Node*, %class.Heap_Node** %this_ptr_1, align 4
	%var_reg_3 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_2, i32 0, i32 0
	%identifier_register_4 = load %class.Array_Node*, %class.Array_Node** %var_reg_3, align 4
	%malloc_ptr_5 = call i8* @__malloc(i32 8)
	%new_class_reg_6 = bitcast i8* %malloc_ptr_5 to %class.Array_Node*
	call void @Array_Node.__cons(%class.Array_Node* %new_class_reg_6)
	%this_reg_7 = load %class.Heap_Node*, %class.Heap_Node** %this_ptr_1, align 4
	%var_reg_8 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_7, i32 0, i32 0
	store %class.Array_Node* %new_class_reg_6, %class.Array_Node** %var_reg_8, align 4
	br label %Heap_Node.__cons.return

Heap_Node.__cons.return:
	ret void

}

define void @Heap_Node.push(%class.Heap_Node* %__this_ptr_0, %class.Node* %v_1) #0 {
Heap_Node.push.entry:
	%parameter_ptr_2 = alloca %class.Heap_Node*, align 4
	%parameter_ptr_3 = alloca %class.Node*, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_2, align 4
	store %class.Node* %v_1, %class.Node** %parameter_ptr_3, align 4
	%this_reg_4 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_5 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_4, i32 0, i32 0
	%identifier_register_6 = load %class.Array_Node*, %class.Array_Node** %var_reg_5, align 4
	%identifier_register_7 = load %class.Node*, %class.Node** %parameter_ptr_3, align 4
	call void @Array_Node.push_back(%class.Array_Node* %identifier_register_6, %class.Node* %identifier_register_7)
	%alloca_x_8 = alloca i32, align 4
	%this_ptr_9 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%ret_10 = call i32 @Heap_Node.size(%class.Heap_Node* %this_ptr_9)
	%res_11 = sub nsw i32 %ret_10, 1
	store i32 %res_11, i32* %alloca_x_8, align 4
	br label %Heap_Node.push.5_while_condition

Heap_Node.push.5_while_condition:
	%identifier_register_12 = load i32, i32* %alloca_x_8, align 4
	%res_13 = icmp sgt i32 %identifier_register_12, 0
	br i1 %res_13, label %Heap_Node.push.5_while_loop, label %Heap_Node.push.5_while_terminate

Heap_Node.push.5_while_loop:
	%alloca_p_14 = alloca i32, align 4
	%this_ptr_15 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%identifier_register_16 = load i32, i32* %alloca_x_8, align 4
	%ret_17 = call i32 @Heap_Node.pnt(%class.Heap_Node* %this_ptr_15, i32 %identifier_register_16)
	store i32 %ret_17, i32* %alloca_p_14, align 4
	%this_reg_18 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_19 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_18, i32 0, i32 0
	%identifier_register_20 = load %class.Array_Node*, %class.Array_Node** %var_reg_19, align 4
	%identifier_register_21 = load i32, i32* %alloca_p_14, align 4
	%ret_22 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_20, i32 %identifier_register_21)
	%ret_23 = call i32 @Node.key_(%class.Node* %ret_22)
	%this_reg_24 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_25 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_24, i32 0, i32 0
	%identifier_register_26 = load %class.Array_Node*, %class.Array_Node** %var_reg_25, align 4
	%identifier_register_27 = load i32, i32* %alloca_x_8, align 4
	%ret_28 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_26, i32 %identifier_register_27)
	%ret_29 = call i32 @Node.key_(%class.Node* %ret_28)
	%res_30 = icmp sge i32 %ret_23, %ret_29
	br i1 %res_30, label %Heap_Node.push.6_if_true, label %Heap_Node.push.6_if_terminate

Heap_Node.push.6_if_true:
	br label %Heap_Node.push.5_while_terminate

Heap_Node.push.6_if_terminate:
	%this_reg_31 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_32 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_31, i32 0, i32 0
	%identifier_register_33 = load %class.Array_Node*, %class.Array_Node** %var_reg_32, align 4
	%identifier_register_34 = load i32, i32* %alloca_p_14, align 4
	%identifier_register_35 = load i32, i32* %alloca_x_8, align 4
	call void @Array_Node.swap(%class.Array_Node* %identifier_register_33, i32 %identifier_register_34, i32 %identifier_register_35)
	%identifier_register_36 = load i32, i32* %alloca_x_8, align 4
	%identifier_register_37 = load i32, i32* %alloca_p_14, align 4
	store i32 %identifier_register_37, i32* %alloca_x_8, align 4
	br label %Heap_Node.push.5_while_condition

Heap_Node.push.5_while_terminate:
	br label %Heap_Node.push.return

Heap_Node.push.return:
	ret void

}

define %class.Node* @Heap_Node.pop(%class.Heap_Node* %__this_ptr_0) #0 {
Heap_Node.pop.entry:
	%parameter_ptr_1 = alloca %class.Heap_Node*, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca %class.Node*, align 4
	%alloca_res_3 = alloca %class.Node*, align 4
	%this_reg_4 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_1, align 4
	%var_reg_5 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_4, i32 0, i32 0
	%identifier_register_6 = load %class.Array_Node*, %class.Array_Node** %var_reg_5, align 4
	%ret_7 = call %class.Node* @Array_Node.front(%class.Array_Node* %identifier_register_6)
	store %class.Node* %ret_7, %class.Node** %alloca_res_3, align 4
	%this_reg_8 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_1, align 4
	%var_reg_9 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_8, i32 0, i32 0
	%identifier_register_10 = load %class.Array_Node*, %class.Array_Node** %var_reg_9, align 4
	%this_ptr_11 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_1, align 4
	%ret_12 = call i32 @Heap_Node.size(%class.Heap_Node* %this_ptr_11)
	%res_13 = sub nsw i32 %ret_12, 1
	call void @Array_Node.swap(%class.Array_Node* %identifier_register_10, i32 0, i32 %res_13)
	%this_reg_14 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_1, align 4
	%var_reg_15 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_14, i32 0, i32 0
	%identifier_register_16 = load %class.Array_Node*, %class.Array_Node** %var_reg_15, align 4
	%ret_17 = call %class.Node* @Array_Node.pop_back(%class.Array_Node* %identifier_register_16)
	%this_ptr_18 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_1, align 4
	call void @Heap_Node.maxHeapify(%class.Heap_Node* %this_ptr_18, i32 0)
	%identifier_register_19 = load %class.Node*, %class.Node** %alloca_res_3, align 4
	store %class.Node* %identifier_register_19, %class.Node** %return_ptr_2, align 4
	br label %Heap_Node.pop.return

Heap_Node.pop.return:
	%return_val_20 = load %class.Node*, %class.Node** %return_ptr_2, align 4
	ret %class.Node* %return_val_20

}

define %class.Node* @Heap_Node.top(%class.Heap_Node* %__this_ptr_0) #0 {
Heap_Node.top.entry:
	%parameter_ptr_1 = alloca %class.Heap_Node*, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca %class.Node*, align 4
	%this_reg_3 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_3, i32 0, i32 0
	%identifier_register_5 = load %class.Array_Node*, %class.Array_Node** %var_reg_4, align 4
	%ret_6 = call %class.Node* @Array_Node.front(%class.Array_Node* %identifier_register_5)
	store %class.Node* %ret_6, %class.Node** %return_ptr_2, align 4
	br label %Heap_Node.top.return

Heap_Node.top.return:
	%return_val_7 = load %class.Node*, %class.Node** %return_ptr_2, align 4
	ret %class.Node* %return_val_7

}

define i32 @Heap_Node.size(%class.Heap_Node* %__this_ptr_0) #0 {
Heap_Node.size.entry:
	%parameter_ptr_1 = alloca %class.Heap_Node*, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca i32, align 4
	%this_reg_3 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_3, i32 0, i32 0
	%identifier_register_5 = load %class.Array_Node*, %class.Array_Node** %var_reg_4, align 4
	%ret_6 = call i32 @Array_Node.size(%class.Array_Node* %identifier_register_5)
	store i32 %ret_6, i32* %return_ptr_2, align 4
	br label %Heap_Node.size.return

Heap_Node.size.return:
	%return_val_7 = load i32, i32* %return_ptr_2, align 4
	ret i32 %return_val_7

}

define i32 @Heap_Node.lchild(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.lchild.entry:
	%parameter_ptr_2 = alloca %class.Heap_Node*, align 4
	%parameter_ptr_3 = alloca i32, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_2, align 4
	store i32 %x_1, i32* %parameter_ptr_3, align 4
	%return_ptr_4 = alloca i32, align 4
	%identifier_register_5 = load i32, i32* %parameter_ptr_3, align 4
	%res_6 = mul i32 %identifier_register_5, 2
	%res_7 = add i32 %res_6, 1
	store i32 %res_7, i32* %return_ptr_4, align 4
	br label %Heap_Node.lchild.return

Heap_Node.lchild.return:
	%return_val_8 = load i32, i32* %return_ptr_4, align 4
	ret i32 %return_val_8

}

define i32 @Heap_Node.rchild(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.rchild.entry:
	%parameter_ptr_2 = alloca %class.Heap_Node*, align 4
	%parameter_ptr_3 = alloca i32, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_2, align 4
	store i32 %x_1, i32* %parameter_ptr_3, align 4
	%return_ptr_4 = alloca i32, align 4
	%identifier_register_5 = load i32, i32* %parameter_ptr_3, align 4
	%res_6 = mul i32 %identifier_register_5, 2
	%res_7 = add i32 %res_6, 2
	store i32 %res_7, i32* %return_ptr_4, align 4
	br label %Heap_Node.rchild.return

Heap_Node.rchild.return:
	%return_val_8 = load i32, i32* %return_ptr_4, align 4
	ret i32 %return_val_8

}

define i32 @Heap_Node.pnt(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.pnt.entry:
	%parameter_ptr_2 = alloca %class.Heap_Node*, align 4
	%parameter_ptr_3 = alloca i32, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_2, align 4
	store i32 %x_1, i32* %parameter_ptr_3, align 4
	%return_ptr_4 = alloca i32, align 4
	%identifier_register_5 = load i32, i32* %parameter_ptr_3, align 4
	%res_6 = sub nsw i32 %identifier_register_5, 1
	%res_7 = sdiv i32 %res_6, 2
	store i32 %res_7, i32* %return_ptr_4, align 4
	br label %Heap_Node.pnt.return

Heap_Node.pnt.return:
	%return_val_8 = load i32, i32* %return_ptr_4, align 4
	ret i32 %return_val_8

}

define void @Heap_Node.maxHeapify(%class.Heap_Node* %__this_ptr_0, i32 %x_1) #0 {
Heap_Node.maxHeapify.entry:
	%parameter_ptr_2 = alloca %class.Heap_Node*, align 4
	%parameter_ptr_3 = alloca i32, align 4
	store %class.Heap_Node* %__this_ptr_0, %class.Heap_Node** %parameter_ptr_2, align 4
	store i32 %x_1, i32* %parameter_ptr_3, align 4
	%alloca_l_4 = alloca i32, align 4
	%this_ptr_5 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%identifier_register_6 = load i32, i32* %parameter_ptr_3, align 4
	%ret_7 = call i32 @Heap_Node.lchild(%class.Heap_Node* %this_ptr_5, i32 %identifier_register_6)
	store i32 %ret_7, i32* %alloca_l_4, align 4
	%alloca_r_8 = alloca i32, align 4
	%this_ptr_9 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%identifier_register_10 = load i32, i32* %parameter_ptr_3, align 4
	%ret_11 = call i32 @Heap_Node.rchild(%class.Heap_Node* %this_ptr_9, i32 %identifier_register_10)
	store i32 %ret_11, i32* %alloca_r_8, align 4
	%alloca_largest_12 = alloca i32, align 4
	%identifier_register_13 = load i32, i32* %parameter_ptr_3, align 4
	store i32 %identifier_register_13, i32* %alloca_largest_12, align 4
	%phi_14 = alloca i1, align 4
	%identifier_register_15 = load i32, i32* %alloca_l_4, align 4
	%this_ptr_16 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%ret_17 = call i32 @Heap_Node.size(%class.Heap_Node* %this_ptr_16)
	%res_18 = icmp slt i32 %identifier_register_15, %ret_17
	store i1 %res_18, i1* %phi_14, align 4
	br i1 %res_18, label %Heap_Node.maxHeapify.7_and_rhs_block, label %Heap_Node.maxHeapify.7_and_terminate_block

Heap_Node.maxHeapify.7_and_rhs_block:
	%this_reg_19 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_20 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_19, i32 0, i32 0
	%identifier_register_21 = load %class.Array_Node*, %class.Array_Node** %var_reg_20, align 4
	%identifier_register_22 = load i32, i32* %alloca_l_4, align 4
	%ret_23 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_21, i32 %identifier_register_22)
	%ret_24 = call i32 @Node.key_(%class.Node* %ret_23)
	%this_reg_25 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_26 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_25, i32 0, i32 0
	%identifier_register_27 = load %class.Array_Node*, %class.Array_Node** %var_reg_26, align 4
	%identifier_register_28 = load i32, i32* %alloca_largest_12, align 4
	%ret_29 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_27, i32 %identifier_register_28)
	%ret_30 = call i32 @Node.key_(%class.Node* %ret_29)
	%res_31 = icmp sgt i32 %ret_24, %ret_30
	%res_32 = and i1 %res_18, %res_31
	store i1 %res_32, i1* %phi_14, align 4
	br label %Heap_Node.maxHeapify.7_and_terminate_block

Heap_Node.maxHeapify.7_and_terminate_block:
	%ret_33 = load i1, i1* %phi_14, align 4
	br i1 %ret_33, label %Heap_Node.maxHeapify.8_if_true, label %Heap_Node.maxHeapify.8_if_terminate

Heap_Node.maxHeapify.8_if_true:
	%identifier_register_34 = load i32, i32* %alloca_largest_12, align 4
	%identifier_register_35 = load i32, i32* %alloca_l_4, align 4
	store i32 %identifier_register_35, i32* %alloca_largest_12, align 4
	br label %Heap_Node.maxHeapify.8_if_terminate

Heap_Node.maxHeapify.8_if_terminate:
	%phi_36 = alloca i1, align 4
	%identifier_register_37 = load i32, i32* %alloca_r_8, align 4
	%this_ptr_38 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%ret_39 = call i32 @Heap_Node.size(%class.Heap_Node* %this_ptr_38)
	%res_40 = icmp slt i32 %identifier_register_37, %ret_39
	store i1 %res_40, i1* %phi_36, align 4
	br i1 %res_40, label %Heap_Node.maxHeapify.9_and_rhs_block, label %Heap_Node.maxHeapify.9_and_terminate_block

Heap_Node.maxHeapify.9_and_rhs_block:
	%this_reg_41 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_42 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_41, i32 0, i32 0
	%identifier_register_43 = load %class.Array_Node*, %class.Array_Node** %var_reg_42, align 4
	%identifier_register_44 = load i32, i32* %alloca_r_8, align 4
	%ret_45 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_43, i32 %identifier_register_44)
	%ret_46 = call i32 @Node.key_(%class.Node* %ret_45)
	%this_reg_47 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_48 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_47, i32 0, i32 0
	%identifier_register_49 = load %class.Array_Node*, %class.Array_Node** %var_reg_48, align 4
	%identifier_register_50 = load i32, i32* %alloca_largest_12, align 4
	%ret_51 = call %class.Node* @Array_Node.get(%class.Array_Node* %identifier_register_49, i32 %identifier_register_50)
	%ret_52 = call i32 @Node.key_(%class.Node* %ret_51)
	%res_53 = icmp sgt i32 %ret_46, %ret_52
	%res_54 = and i1 %res_40, %res_53
	store i1 %res_54, i1* %phi_36, align 4
	br label %Heap_Node.maxHeapify.9_and_terminate_block

Heap_Node.maxHeapify.9_and_terminate_block:
	%ret_55 = load i1, i1* %phi_36, align 4
	br i1 %ret_55, label %Heap_Node.maxHeapify.10_if_true, label %Heap_Node.maxHeapify.10_if_terminate

Heap_Node.maxHeapify.10_if_true:
	%identifier_register_56 = load i32, i32* %alloca_largest_12, align 4
	%identifier_register_57 = load i32, i32* %alloca_r_8, align 4
	store i32 %identifier_register_57, i32* %alloca_largest_12, align 4
	br label %Heap_Node.maxHeapify.10_if_terminate

Heap_Node.maxHeapify.10_if_terminate:
	%identifier_register_58 = load i32, i32* %alloca_largest_12, align 4
	%identifier_register_59 = load i32, i32* %parameter_ptr_3, align 4
	%res_60 = icmp eq i32 %identifier_register_58, %identifier_register_59
	br i1 %res_60, label %Heap_Node.maxHeapify.11_if_true, label %Heap_Node.maxHeapify.11_if_terminate

Heap_Node.maxHeapify.11_if_true:
	br label %Heap_Node.maxHeapify.return

Heap_Node.maxHeapify.11_if_terminate:
	%this_reg_61 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%var_reg_62 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %this_reg_61, i32 0, i32 0
	%identifier_register_63 = load %class.Array_Node*, %class.Array_Node** %var_reg_62, align 4
	%identifier_register_64 = load i32, i32* %parameter_ptr_3, align 4
	%identifier_register_65 = load i32, i32* %alloca_largest_12, align 4
	call void @Array_Node.swap(%class.Array_Node* %identifier_register_63, i32 %identifier_register_64, i32 %identifier_register_65)
	%this_ptr_66 = load %class.Heap_Node*, %class.Heap_Node** %parameter_ptr_2, align 4
	%identifier_register_67 = load i32, i32* %alloca_largest_12, align 4
	call void @Heap_Node.maxHeapify(%class.Heap_Node* %this_ptr_66, i32 %identifier_register_67)
	br label %Heap_Node.maxHeapify.return

Heap_Node.maxHeapify.return:
	ret void

}

define i32 @Node.key_(%class.Node* %__this_ptr_0) #0 {
Node.key_.entry:
	%parameter_ptr_1 = alloca %class.Node*, align 4
	store %class.Node* %__this_ptr_0, %class.Node** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca i32, align 4
	%this_reg_3 = load %class.Node*, %class.Node** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.Node, %class.Node* %this_reg_3, i32 0, i32 1
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	%res_6 = sub nsw i32 0, %identifier_register_5
	store i32 %res_6, i32* %return_ptr_2, align 4
	br label %Node.key_.return

Node.key_.return:
	%return_val_7 = load i32, i32* %return_ptr_2, align 4
	ret i32 %return_val_7

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
	%alloca_i_10 = alloca i32, align 4
	store i32 0, i32* %alloca_i_10, align 4
	%identifier_register_11 = load i32, i32* %alloca_i_10, align 4
	store i32 0, i32* %alloca_i_10, align 4
	br label %init.12_for_condition

init.12_for_condition:
	%identifier_register_12 = load i32, i32* %alloca_i_10, align 4
	%identifier_register_13 = load i32, i32* @m, align 4
	%res_14 = icmp slt i32 %identifier_register_12, %identifier_register_13
	br i1 %res_14, label %init.12_for_loop, label %init.12_for_terminate

init.12_for_loop:
	%alloca_u_15 = alloca i32, align 4
	%ret_16 = call i32 @getInt()
	store i32 %ret_16, i32* %alloca_u_15, align 4
	%alloca_v_17 = alloca i32, align 4
	%ret_18 = call i32 @getInt()
	store i32 %ret_18, i32* %alloca_v_17, align 4
	%alloca_w_19 = alloca i32, align 4
	%ret_20 = call i32 @getInt()
	store i32 %ret_20, i32* %alloca_w_19, align 4
	%identifier_register_21 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%identifier_register_22 = load i32, i32* %alloca_u_15, align 4
	%identifier_register_23 = load i32, i32* %alloca_v_17, align 4
	%identifier_register_24 = load i32, i32* %alloca_w_19, align 4
	call void @EdgeList.addEdge(%class.EdgeList* %identifier_register_21, i32 %identifier_register_22, i32 %identifier_register_23, i32 %identifier_register_24)
	br label %init.12_for_execution

init.12_for_execution:
	%identifier_register_25 = load i32, i32* %alloca_i_10, align 4
	%res_26 = add i32 %identifier_register_25, 1
	store i32 %res_26, i32* %alloca_i_10, align 4
	br label %init.12_for_condition

init.12_for_terminate:
	br label %init.return

init.return:
	ret void

}

define i32* @dijkstra(i32 %s_0) #0 {
dijkstra.entry:
	%parameter_ptr_1 = alloca i32, align 4
	store i32 %s_0, i32* %parameter_ptr_1, align 4
	%return_ptr_2 = alloca i32*, align 4
	%alloca_visited_3 = alloca i32*, align 4
	%identifier_register_4 = load i32, i32* @n, align 4
	%arr_size_reg_5 = mul i32 %identifier_register_4, 4
	%malloc_size_6 = add i32 %arr_size_reg_5, 4
	%malloc_ptr_7 = call i8* @__malloc(i32 %malloc_size_6)
	%arr_len_ptr_8 = bitcast i8* %malloc_ptr_7 to i32*
	store i32 %identifier_register_4, i32* %arr_len_ptr_8, align 4
	%arr_char_ptr_9 = getelementptr inbounds i8, i8* %malloc_ptr_7, i32 4
	%arr_ptr_10 = bitcast i8* %arr_char_ptr_9 to i32*
	store i32* %arr_ptr_10, i32** %alloca_visited_3, align 4
	%alloca_d_11 = alloca i32*, align 4
	%identifier_register_12 = load i32, i32* @n, align 4
	%arr_size_reg_13 = mul i32 %identifier_register_12, 4
	%malloc_size_14 = add i32 %arr_size_reg_13, 4
	%malloc_ptr_15 = call i8* @__malloc(i32 %malloc_size_14)
	%arr_len_ptr_16 = bitcast i8* %malloc_ptr_15 to i32*
	store i32 %identifier_register_12, i32* %arr_len_ptr_16, align 4
	%arr_char_ptr_17 = getelementptr inbounds i8, i8* %malloc_ptr_15, i32 4
	%arr_ptr_18 = bitcast i8* %arr_char_ptr_17 to i32*
	store i32* %arr_ptr_18, i32** %alloca_d_11, align 4
	%alloca_i_19 = alloca i32, align 4
	store i32 0, i32* %alloca_i_19, align 4
	%identifier_register_20 = load i32, i32* %alloca_i_19, align 4
	store i32 0, i32* %alloca_i_19, align 4
	br label %dijkstra.13_for_condition

dijkstra.13_for_condition:
	%identifier_register_21 = load i32, i32* %alloca_i_19, align 4
	%identifier_register_22 = load i32, i32* @n, align 4
	%res_23 = icmp slt i32 %identifier_register_21, %identifier_register_22
	br i1 %res_23, label %dijkstra.13_for_loop, label %dijkstra.13_for_terminate

dijkstra.13_for_loop:
	%identifier_register_24 = load i32, i32* %alloca_i_19, align 4
	%identifier_register_25 = load i32*, i32** %alloca_d_11, align 4
	%array_id_ptr_26 = getelementptr inbounds i32, i32* %identifier_register_25, i32 %identifier_register_24
	%res_array_27 = load i32, i32* %array_id_ptr_26, align 4
	%identifier_register_28 = load i32, i32* @INF, align 4
	store i32 %identifier_register_28, i32* %array_id_ptr_26, align 4
	%identifier_register_29 = load i32, i32* %alloca_i_19, align 4
	%identifier_register_30 = load i32*, i32** %alloca_visited_3, align 4
	%array_id_ptr_31 = getelementptr inbounds i32, i32* %identifier_register_30, i32 %identifier_register_29
	%res_array_32 = load i32, i32* %array_id_ptr_31, align 4
	store i32 0, i32* %array_id_ptr_31, align 4
	br label %dijkstra.13_for_execution

dijkstra.13_for_execution:
	%identifier_register_33 = load i32, i32* %alloca_i_19, align 4
	%res_34 = add i32 %identifier_register_33, 1
	store i32 %res_34, i32* %alloca_i_19, align 4
	br label %dijkstra.13_for_condition

dijkstra.13_for_terminate:
	%identifier_register_35 = load i32, i32* %parameter_ptr_1, align 4
	%identifier_register_36 = load i32*, i32** %alloca_d_11, align 4
	%array_id_ptr_37 = getelementptr inbounds i32, i32* %identifier_register_36, i32 %identifier_register_35
	%res_array_38 = load i32, i32* %array_id_ptr_37, align 4
	store i32 0, i32* %array_id_ptr_37, align 4
	%alloca_q_39 = alloca %class.Heap_Node*, align 4
	%malloc_ptr_40 = call i8* @__malloc(i32 4)
	%new_class_reg_41 = bitcast i8* %malloc_ptr_40 to %class.Heap_Node*
	call void @Heap_Node.__cons(%class.Heap_Node* %new_class_reg_41)
	store %class.Heap_Node* %new_class_reg_41, %class.Heap_Node** %alloca_q_39, align 4
	%alloca_src_42 = alloca %class.Node*, align 4
	%malloc_ptr_43 = call i8* @__malloc(i32 8)
	%new_class_reg_44 = bitcast i8* %malloc_ptr_43 to %class.Node*
	store %class.Node* %new_class_reg_44, %class.Node** %alloca_src_42, align 4
	%identifier_register_45 = load %class.Node*, %class.Node** %alloca_src_42, align 4
	%class_member_ptr_46 = getelementptr inbounds %class.Node, %class.Node* %identifier_register_45, i32 0, i32 1
	%class_member_47 = load i32, i32* %class_member_ptr_46, align 4
	store i32 0, i32* %class_member_ptr_46, align 4
	%identifier_register_48 = load %class.Node*, %class.Node** %alloca_src_42, align 4
	%class_member_ptr_49 = getelementptr inbounds %class.Node, %class.Node* %identifier_register_48, i32 0, i32 0
	%class_member_50 = load i32, i32* %class_member_ptr_49, align 4
	%identifier_register_51 = load i32, i32* %parameter_ptr_1, align 4
	store i32 %identifier_register_51, i32* %class_member_ptr_49, align 4
	%identifier_register_52 = load %class.Heap_Node*, %class.Heap_Node** %alloca_q_39, align 4
	%identifier_register_53 = load %class.Node*, %class.Node** %alloca_src_42, align 4
	call void @Heap_Node.push(%class.Heap_Node* %identifier_register_52, %class.Node* %identifier_register_53)
	br label %dijkstra.14_while_condition

dijkstra.14_while_condition:
	%identifier_register_54 = load %class.Heap_Node*, %class.Heap_Node** %alloca_q_39, align 4
	%ret_55 = call i32 @Heap_Node.size(%class.Heap_Node* %identifier_register_54)
	%res_56 = icmp ne i32 %ret_55, 0
	br i1 %res_56, label %dijkstra.14_while_loop, label %dijkstra.14_while_terminate

dijkstra.14_while_loop:
	%alloca_node_57 = alloca %class.Node*, align 4
	%identifier_register_58 = load %class.Heap_Node*, %class.Heap_Node** %alloca_q_39, align 4
	%ret_59 = call %class.Node* @Heap_Node.pop(%class.Heap_Node* %identifier_register_58)
	store %class.Node* %ret_59, %class.Node** %alloca_node_57, align 4
	%alloca_u_60 = alloca i32, align 4
	%identifier_register_61 = load %class.Node*, %class.Node** %alloca_node_57, align 4
	%class_member_ptr_62 = getelementptr inbounds %class.Node, %class.Node* %identifier_register_61, i32 0, i32 0
	%class_member_63 = load i32, i32* %class_member_ptr_62, align 4
	store i32 %class_member_63, i32* %alloca_u_60, align 4
	%identifier_register_64 = load i32, i32* %alloca_u_60, align 4
	%identifier_register_65 = load i32*, i32** %alloca_visited_3, align 4
	%array_id_ptr_66 = getelementptr inbounds i32, i32* %identifier_register_65, i32 %identifier_register_64
	%res_array_67 = load i32, i32* %array_id_ptr_66, align 4
	%res_68 = icmp eq i32 %res_array_67, 1
	br i1 %res_68, label %dijkstra.15_if_true, label %dijkstra.15_if_terminate

dijkstra.15_if_true:
	br label %dijkstra.14_while_condition

dijkstra.15_if_terminate:
	%identifier_register_69 = load i32, i32* %alloca_u_60, align 4
	%identifier_register_70 = load i32*, i32** %alloca_visited_3, align 4
	%array_id_ptr_71 = getelementptr inbounds i32, i32* %identifier_register_70, i32 %identifier_register_69
	%res_array_72 = load i32, i32* %array_id_ptr_71, align 4
	store i32 1, i32* %array_id_ptr_71, align 4
	%alloca_k_73 = alloca i32, align 4
	store i32 0, i32* %alloca_k_73, align 4
	%identifier_register_74 = load i32, i32* %alloca_k_73, align 4
	%identifier_register_75 = load i32, i32* %alloca_u_60, align 4
	%identifier_register_76 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_77 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_76, i32 0, i32 2
	%class_member_78 = load i32*, i32** %class_member_ptr_77, align 4
	%array_id_ptr_79 = getelementptr inbounds i32, i32* %class_member_78, i32 %identifier_register_75
	%res_array_80 = load i32, i32* %array_id_ptr_79, align 4
	store i32 %res_array_80, i32* %alloca_k_73, align 4
	br label %dijkstra.16_for_condition

dijkstra.16_for_condition:
	%identifier_register_81 = load i32, i32* %alloca_k_73, align 4
	%res_82 = sub nsw i32 0, 1
	%res_83 = icmp ne i32 %identifier_register_81, %res_82
	br i1 %res_83, label %dijkstra.16_for_loop, label %dijkstra.16_for_terminate

dijkstra.16_for_loop:
	%alloca_v_84 = alloca i32, align 4
	%identifier_register_85 = load i32, i32* %alloca_k_73, align 4
	%identifier_register_86 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_87 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_86, i32 0, i32 0
	%class_member_88 = load %class.Edge**, %class.Edge*** %class_member_ptr_87, align 4
	%array_id_ptr_89 = getelementptr inbounds %class.Edge*, %class.Edge** %class_member_88, i32 %identifier_register_85
	%res_array_90 = load %class.Edge*, %class.Edge** %array_id_ptr_89, align 4
	%class_member_ptr_91 = getelementptr inbounds %class.Edge, %class.Edge* %res_array_90, i32 0, i32 1
	%class_member_92 = load i32, i32* %class_member_ptr_91, align 4
	store i32 %class_member_92, i32* %alloca_v_84, align 4
	%alloca_w_93 = alloca i32, align 4
	%identifier_register_94 = load i32, i32* %alloca_k_73, align 4
	%identifier_register_95 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_96 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_95, i32 0, i32 0
	%class_member_97 = load %class.Edge**, %class.Edge*** %class_member_ptr_96, align 4
	%array_id_ptr_98 = getelementptr inbounds %class.Edge*, %class.Edge** %class_member_97, i32 %identifier_register_94
	%res_array_99 = load %class.Edge*, %class.Edge** %array_id_ptr_98, align 4
	%class_member_ptr_100 = getelementptr inbounds %class.Edge, %class.Edge* %res_array_99, i32 0, i32 2
	%class_member_101 = load i32, i32* %class_member_ptr_100, align 4
	store i32 %class_member_101, i32* %alloca_w_93, align 4
	%alloca_alt_102 = alloca i32, align 4
	%identifier_register_103 = load i32, i32* %alloca_u_60, align 4
	%identifier_register_104 = load i32*, i32** %alloca_d_11, align 4
	%array_id_ptr_105 = getelementptr inbounds i32, i32* %identifier_register_104, i32 %identifier_register_103
	%res_array_106 = load i32, i32* %array_id_ptr_105, align 4
	%identifier_register_107 = load i32, i32* %alloca_w_93, align 4
	%res_108 = add i32 %res_array_106, %identifier_register_107
	store i32 %res_108, i32* %alloca_alt_102, align 4
	%identifier_register_109 = load i32, i32* %alloca_alt_102, align 4
	%identifier_register_110 = load i32, i32* %alloca_v_84, align 4
	%identifier_register_111 = load i32*, i32** %alloca_d_11, align 4
	%array_id_ptr_112 = getelementptr inbounds i32, i32* %identifier_register_111, i32 %identifier_register_110
	%res_array_113 = load i32, i32* %array_id_ptr_112, align 4
	%res_114 = icmp sge i32 %identifier_register_109, %res_array_113
	br i1 %res_114, label %dijkstra.17_if_true, label %dijkstra.17_if_terminate

dijkstra.17_if_true:
	br label %dijkstra.16_for_execution

dijkstra.17_if_terminate:
	%identifier_register_115 = load i32, i32* %alloca_v_84, align 4
	%identifier_register_116 = load i32*, i32** %alloca_d_11, align 4
	%array_id_ptr_117 = getelementptr inbounds i32, i32* %identifier_register_116, i32 %identifier_register_115
	%res_array_118 = load i32, i32* %array_id_ptr_117, align 4
	%identifier_register_119 = load i32, i32* %alloca_alt_102, align 4
	store i32 %identifier_register_119, i32* %array_id_ptr_117, align 4
	%identifier_register_120 = load %class.Node*, %class.Node** %alloca_node_57, align 4
	%malloc_ptr_121 = call i8* @__malloc(i32 8)
	%new_class_reg_122 = bitcast i8* %malloc_ptr_121 to %class.Node*
	store %class.Node* %new_class_reg_122, %class.Node** %alloca_node_57, align 4
	%identifier_register_123 = load %class.Node*, %class.Node** %alloca_node_57, align 4
	%class_member_ptr_124 = getelementptr inbounds %class.Node, %class.Node* %identifier_register_123, i32 0, i32 0
	%class_member_125 = load i32, i32* %class_member_ptr_124, align 4
	%identifier_register_126 = load i32, i32* %alloca_v_84, align 4
	store i32 %identifier_register_126, i32* %class_member_ptr_124, align 4
	%identifier_register_127 = load %class.Node*, %class.Node** %alloca_node_57, align 4
	%class_member_ptr_128 = getelementptr inbounds %class.Node, %class.Node* %identifier_register_127, i32 0, i32 1
	%class_member_129 = load i32, i32* %class_member_ptr_128, align 4
	%identifier_register_130 = load i32, i32* %alloca_v_84, align 4
	%identifier_register_131 = load i32*, i32** %alloca_d_11, align 4
	%array_id_ptr_132 = getelementptr inbounds i32, i32* %identifier_register_131, i32 %identifier_register_130
	%res_array_133 = load i32, i32* %array_id_ptr_132, align 4
	store i32 %res_array_133, i32* %class_member_ptr_128, align 4
	%identifier_register_134 = load %class.Heap_Node*, %class.Heap_Node** %alloca_q_39, align 4
	%identifier_register_135 = load %class.Node*, %class.Node** %alloca_node_57, align 4
	call void @Heap_Node.push(%class.Heap_Node* %identifier_register_134, %class.Node* %identifier_register_135)
	br label %dijkstra.16_for_execution

dijkstra.16_for_execution:
	%identifier_register_136 = load i32, i32* %alloca_k_73, align 4
	%identifier_register_137 = load i32, i32* %alloca_k_73, align 4
	%identifier_register_138 = load %class.EdgeList*, %class.EdgeList** @g, align 4
	%class_member_ptr_139 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %identifier_register_138, i32 0, i32 1
	%class_member_140 = load i32*, i32** %class_member_ptr_139, align 4
	%array_id_ptr_141 = getelementptr inbounds i32, i32* %class_member_140, i32 %identifier_register_137
	%res_array_142 = load i32, i32* %array_id_ptr_141, align 4
	store i32 %res_array_142, i32* %alloca_k_73, align 4
	br label %dijkstra.16_for_condition

dijkstra.16_for_terminate:
	br label %dijkstra.14_while_condition

dijkstra.14_while_terminate:
	%identifier_register_143 = load i32*, i32** %alloca_d_11, align 4
	store i32* %identifier_register_143, i32** %return_ptr_2, align 4
	br label %dijkstra.return

dijkstra.return:
	%return_val_144 = load i32*, i32** %return_ptr_2, align 4
	ret i32* %return_val_144

}

define i32 @main() #0 {
main.entry:
	call void @__global_init_0()
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
	call void @init()
	%alloca_i_1 = alloca i32, align 4
	store i32 0, i32* %alloca_i_1, align 4
	%alloca_j_2 = alloca i32, align 4
	store i32 0, i32* %alloca_j_2, align 4
	%identifier_register_3 = load i32, i32* %alloca_i_1, align 4
	store i32 0, i32* %alloca_i_1, align 4
	br label %main.18_for_condition

main.18_for_condition:
	%identifier_register_4 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_5 = load i32, i32* @n, align 4
	%res_6 = icmp slt i32 %identifier_register_4, %identifier_register_5
	br i1 %res_6, label %main.18_for_loop, label %main.18_for_terminate

main.18_for_loop:
	%alloca_d_7 = alloca i32*, align 4
	%identifier_register_8 = load i32, i32* %alloca_i_1, align 4
	%ret_9 = call i32* @dijkstra(i32 %identifier_register_8)
	store i32* %ret_9, i32** %alloca_d_7, align 4
	%identifier_register_10 = load i32, i32* %alloca_j_2, align 4
	store i32 0, i32* %alloca_j_2, align 4
	br label %main.19_for_condition

main.19_for_condition:
	%identifier_register_11 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_12 = load i32, i32* @n, align 4
	%res_13 = icmp slt i32 %identifier_register_11, %identifier_register_12
	br i1 %res_13, label %main.19_for_loop, label %main.19_for_terminate

main.19_for_loop:
	%identifier_register_14 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_15 = load i32*, i32** %alloca_d_7, align 4
	%array_id_ptr_16 = getelementptr inbounds i32, i32* %identifier_register_15, i32 %identifier_register_14
	%res_array_17 = load i32, i32* %array_id_ptr_16, align 4
	%identifier_register_18 = load i32, i32* @INF, align 4
	%res_19 = icmp eq i32 %res_array_17, %identifier_register_18
	br i1 %res_19, label %main.20_if_true, label %main.20_if_false

main.20_if_true:
	call void @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.0, i32 0, i32 0))
	br label %main.20_if_terminate

main.20_if_false:
	%identifier_register_20 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_21 = load i32*, i32** %alloca_d_7, align 4
	%array_id_ptr_22 = getelementptr inbounds i32, i32* %identifier_register_21, i32 %identifier_register_20
	%res_array_23 = load i32, i32* %array_id_ptr_22, align 4
	%ret_24 = call i8* @toString(i32 %res_array_23)
	call void @print(i8* %ret_24)
	br label %main.20_if_terminate

main.20_if_terminate:
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
	br label %main.19_for_execution

main.19_for_execution:
	%identifier_register_25 = load i32, i32* %alloca_j_2, align 4
	%res_26 = add i32 %identifier_register_25, 1
	store i32 %res_26, i32* %alloca_j_2, align 4
	br label %main.19_for_condition

main.19_for_terminate:
	call void @println(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
	br label %main.18_for_execution

main.18_for_execution:
	%identifier_register_27 = load i32, i32* %alloca_i_1, align 4
	%res_28 = add i32 %identifier_register_27, 1
	store i32 %res_28, i32* %alloca_i_1, align 4
	br label %main.18_for_condition

main.18_for_terminate:
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_29 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_29

}

define void @__global_init_0() #0 {
__global_init_0.entry:
	store i32 10000000, i32* @INF, align 4
	br label %__global_init_0.return

__global_init_0.return:
	ret void

}

