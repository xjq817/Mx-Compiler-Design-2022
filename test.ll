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

@.str.0 = private unnamed_addr constant [2 x i8] c"(\00"
@.str.1 = private unnamed_addr constant [3 x i8] c", \00"
@.str.2 = private unnamed_addr constant [2 x i8] c")\00"

%class.point = type { i32, i32, i32 }


define void @point.__cons(%class.point* %__this_ptr_0) #0 {
point.__cons.entry:
	%this_ptr_1 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %this_ptr_1, align 4
	%this_reg_2 = load %class.point*, %class.point** %this_ptr_1, align 4
	%var_reg_3 = getelementptr inbounds %class.point, %class.point* %this_reg_2, i32 0, i32 0
	%identifier_register_4 = load i32, i32* %var_reg_3, align 4
	%this_reg_5 = load %class.point*, %class.point** %this_ptr_1, align 4
	%var_reg_6 = getelementptr inbounds %class.point, %class.point* %this_reg_5, i32 0, i32 0
	store i32 0, i32* %var_reg_6, align 4
	%this_reg_7 = load %class.point*, %class.point** %this_ptr_1, align 4
	%var_reg_8 = getelementptr inbounds %class.point, %class.point* %this_reg_7, i32 0, i32 1
	%identifier_register_9 = load i32, i32* %var_reg_8, align 4
	%this_reg_10 = load %class.point*, %class.point** %this_ptr_1, align 4
	%var_reg_11 = getelementptr inbounds %class.point, %class.point* %this_reg_10, i32 0, i32 1
	store i32 0, i32* %var_reg_11, align 4
	%this_reg_12 = load %class.point*, %class.point** %this_ptr_1, align 4
	%var_reg_13 = getelementptr inbounds %class.point, %class.point* %this_reg_12, i32 0, i32 2
	%identifier_register_14 = load i32, i32* %var_reg_13, align 4
	%this_reg_15 = load %class.point*, %class.point** %this_ptr_1, align 4
	%var_reg_16 = getelementptr inbounds %class.point, %class.point* %this_reg_15, i32 0, i32 2
	store i32 0, i32* %var_reg_16, align 4
	br label %point.__cons.return

point.__cons.return:
	ret void

}

define void @point.set(%class.point* %__this_ptr_0, i32 %a_x_1, i32 %a_y_2, i32 %a_z_3) #0 {
point.set.entry:
	%parameter_ptr_4 = alloca %class.point*, align 4
	%parameter_ptr_5 = alloca i32, align 4
	%parameter_ptr_6 = alloca i32, align 4
	%parameter_ptr_7 = alloca i32, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_4, align 4
	store i32 %a_x_1, i32* %parameter_ptr_5, align 4
	store i32 %a_y_2, i32* %parameter_ptr_6, align 4
	store i32 %a_z_3, i32* %parameter_ptr_7, align 4
	%this_reg_8 = load %class.point*, %class.point** %parameter_ptr_4, align 4
	%var_reg_9 = getelementptr inbounds %class.point, %class.point* %this_reg_8, i32 0, i32 0
	%identifier_register_10 = load i32, i32* %var_reg_9, align 4
	%identifier_register_11 = load i32, i32* %parameter_ptr_5, align 4
	%this_reg_12 = load %class.point*, %class.point** %parameter_ptr_4, align 4
	%var_reg_13 = getelementptr inbounds %class.point, %class.point* %this_reg_12, i32 0, i32 0
	store i32 %identifier_register_11, i32* %var_reg_13, align 4
	%this_reg_14 = load %class.point*, %class.point** %parameter_ptr_4, align 4
	%var_reg_15 = getelementptr inbounds %class.point, %class.point* %this_reg_14, i32 0, i32 1
	%identifier_register_16 = load i32, i32* %var_reg_15, align 4
	%identifier_register_17 = load i32, i32* %parameter_ptr_6, align 4
	%this_reg_18 = load %class.point*, %class.point** %parameter_ptr_4, align 4
	%var_reg_19 = getelementptr inbounds %class.point, %class.point* %this_reg_18, i32 0, i32 1
	store i32 %identifier_register_17, i32* %var_reg_19, align 4
	%this_reg_20 = load %class.point*, %class.point** %parameter_ptr_4, align 4
	%var_reg_21 = getelementptr inbounds %class.point, %class.point* %this_reg_20, i32 0, i32 2
	%identifier_register_22 = load i32, i32* %var_reg_21, align 4
	%identifier_register_23 = load i32, i32* %parameter_ptr_7, align 4
	%this_reg_24 = load %class.point*, %class.point** %parameter_ptr_4, align 4
	%var_reg_25 = getelementptr inbounds %class.point, %class.point* %this_reg_24, i32 0, i32 2
	store i32 %identifier_register_23, i32* %var_reg_25, align 4
	br label %point.set.return

point.set.return:
	ret void

}

define i32 @point.sqrLen(%class.point* %__this_ptr_0) #0 {
point.sqrLen.entry:
	%parameter_ptr_1 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_1, align 4
	%return_ptr_2 = alloca i32, align 4
	%this_reg_3 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_4 = getelementptr inbounds %class.point, %class.point* %this_reg_3, i32 0, i32 0
	%identifier_register_5 = load i32, i32* %var_reg_4, align 4
	%this_reg_6 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_7 = getelementptr inbounds %class.point, %class.point* %this_reg_6, i32 0, i32 0
	%identifier_register_8 = load i32, i32* %var_reg_7, align 4
	%res_9 = mul i32 %identifier_register_5, %identifier_register_8
	%this_reg_10 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_11 = getelementptr inbounds %class.point, %class.point* %this_reg_10, i32 0, i32 1
	%identifier_register_12 = load i32, i32* %var_reg_11, align 4
	%this_reg_13 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_14 = getelementptr inbounds %class.point, %class.point* %this_reg_13, i32 0, i32 1
	%identifier_register_15 = load i32, i32* %var_reg_14, align 4
	%res_16 = mul i32 %identifier_register_12, %identifier_register_15
	%res_17 = add i32 %res_9, %res_16
	%this_reg_18 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_19 = getelementptr inbounds %class.point, %class.point* %this_reg_18, i32 0, i32 2
	%identifier_register_20 = load i32, i32* %var_reg_19, align 4
	%this_reg_21 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_22 = getelementptr inbounds %class.point, %class.point* %this_reg_21, i32 0, i32 2
	%identifier_register_23 = load i32, i32* %var_reg_22, align 4
	%res_24 = mul i32 %identifier_register_20, %identifier_register_23
	%res_25 = add i32 %res_17, %res_24
	store i32 %res_25, i32* %return_ptr_2, align 4
	br label %point.sqrLen.return

point.sqrLen.return:
	%return_val_26 = load i32, i32* %return_ptr_2, align 4
	ret i32 %return_val_26

}

define i32 @point.sqrDis(%class.point* %__this_ptr_0, %class.point* %other_1) #0 {
point.sqrDis.entry:
	%parameter_ptr_2 = alloca %class.point*, align 4
	%parameter_ptr_3 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_2, align 4
	store %class.point* %other_1, %class.point** %parameter_ptr_3, align 4
	%return_ptr_4 = alloca i32, align 4
	%this_reg_5 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_6 = getelementptr inbounds %class.point, %class.point* %this_reg_5, i32 0, i32 0
	%identifier_register_7 = load i32, i32* %var_reg_6, align 4
	%identifier_register_8 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_9 = getelementptr inbounds %class.point, %class.point* %identifier_register_8, i32 0, i32 0
	%class_member_10 = load i32, i32* %class_member_ptr_9, align 4
	%res_11 = sub nsw i32 %identifier_register_7, %class_member_10
	%this_reg_12 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_13 = getelementptr inbounds %class.point, %class.point* %this_reg_12, i32 0, i32 0
	%identifier_register_14 = load i32, i32* %var_reg_13, align 4
	%identifier_register_15 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_16 = getelementptr inbounds %class.point, %class.point* %identifier_register_15, i32 0, i32 0
	%class_member_17 = load i32, i32* %class_member_ptr_16, align 4
	%res_18 = sub nsw i32 %identifier_register_14, %class_member_17
	%res_19 = mul i32 %res_11, %res_18
	%this_reg_20 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_21 = getelementptr inbounds %class.point, %class.point* %this_reg_20, i32 0, i32 1
	%identifier_register_22 = load i32, i32* %var_reg_21, align 4
	%identifier_register_23 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_24 = getelementptr inbounds %class.point, %class.point* %identifier_register_23, i32 0, i32 1
	%class_member_25 = load i32, i32* %class_member_ptr_24, align 4
	%res_26 = sub nsw i32 %identifier_register_22, %class_member_25
	%this_reg_27 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_28 = getelementptr inbounds %class.point, %class.point* %this_reg_27, i32 0, i32 1
	%identifier_register_29 = load i32, i32* %var_reg_28, align 4
	%identifier_register_30 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_31 = getelementptr inbounds %class.point, %class.point* %identifier_register_30, i32 0, i32 1
	%class_member_32 = load i32, i32* %class_member_ptr_31, align 4
	%res_33 = sub nsw i32 %identifier_register_29, %class_member_32
	%res_34 = mul i32 %res_26, %res_33
	%res_35 = add i32 %res_19, %res_34
	%this_reg_36 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_37 = getelementptr inbounds %class.point, %class.point* %this_reg_36, i32 0, i32 2
	%identifier_register_38 = load i32, i32* %var_reg_37, align 4
	%identifier_register_39 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_40 = getelementptr inbounds %class.point, %class.point* %identifier_register_39, i32 0, i32 2
	%class_member_41 = load i32, i32* %class_member_ptr_40, align 4
	%res_42 = sub nsw i32 %identifier_register_38, %class_member_41
	%this_reg_43 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_44 = getelementptr inbounds %class.point, %class.point* %this_reg_43, i32 0, i32 2
	%identifier_register_45 = load i32, i32* %var_reg_44, align 4
	%identifier_register_46 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_47 = getelementptr inbounds %class.point, %class.point* %identifier_register_46, i32 0, i32 2
	%class_member_48 = load i32, i32* %class_member_ptr_47, align 4
	%res_49 = sub nsw i32 %identifier_register_45, %class_member_48
	%res_50 = mul i32 %res_42, %res_49
	%res_51 = add i32 %res_35, %res_50
	store i32 %res_51, i32* %return_ptr_4, align 4
	br label %point.sqrDis.return

point.sqrDis.return:
	%return_val_52 = load i32, i32* %return_ptr_4, align 4
	ret i32 %return_val_52

}

define i32 @point.dot(%class.point* %__this_ptr_0, %class.point* %other_1) #0 {
point.dot.entry:
	%parameter_ptr_2 = alloca %class.point*, align 4
	%parameter_ptr_3 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_2, align 4
	store %class.point* %other_1, %class.point** %parameter_ptr_3, align 4
	%return_ptr_4 = alloca i32, align 4
	%this_reg_5 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_6 = getelementptr inbounds %class.point, %class.point* %this_reg_5, i32 0, i32 0
	%identifier_register_7 = load i32, i32* %var_reg_6, align 4
	%identifier_register_8 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_9 = getelementptr inbounds %class.point, %class.point* %identifier_register_8, i32 0, i32 0
	%class_member_10 = load i32, i32* %class_member_ptr_9, align 4
	%res_11 = mul i32 %identifier_register_7, %class_member_10
	%this_reg_12 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_13 = getelementptr inbounds %class.point, %class.point* %this_reg_12, i32 0, i32 1
	%identifier_register_14 = load i32, i32* %var_reg_13, align 4
	%identifier_register_15 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_16 = getelementptr inbounds %class.point, %class.point* %identifier_register_15, i32 0, i32 1
	%class_member_17 = load i32, i32* %class_member_ptr_16, align 4
	%res_18 = mul i32 %identifier_register_14, %class_member_17
	%res_19 = add i32 %res_11, %res_18
	%this_reg_20 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_21 = getelementptr inbounds %class.point, %class.point* %this_reg_20, i32 0, i32 2
	%identifier_register_22 = load i32, i32* %var_reg_21, align 4
	%identifier_register_23 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_24 = getelementptr inbounds %class.point, %class.point* %identifier_register_23, i32 0, i32 2
	%class_member_25 = load i32, i32* %class_member_ptr_24, align 4
	%res_26 = mul i32 %identifier_register_22, %class_member_25
	%res_27 = add i32 %res_19, %res_26
	store i32 %res_27, i32* %return_ptr_4, align 4
	br label %point.dot.return

point.dot.return:
	%return_val_28 = load i32, i32* %return_ptr_4, align 4
	ret i32 %return_val_28

}

define %class.point* @point.cross(%class.point* %__this_ptr_0, %class.point* %other_1) #0 {
point.cross.entry:
	%parameter_ptr_2 = alloca %class.point*, align 4
	%parameter_ptr_3 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_2, align 4
	store %class.point* %other_1, %class.point** %parameter_ptr_3, align 4
	%return_ptr_4 = alloca %class.point*, align 4
	%alloca_retval_5 = alloca %class.point*, align 4
	%malloc_ptr_6 = call i8* @__malloc(i32 16)
	%new_class_reg_7 = bitcast i8* %malloc_ptr_6 to %class.point*
	call void @point.__cons(%class.point* %new_class_reg_7)
	store %class.point* %new_class_reg_7, %class.point** %alloca_retval_5, align 4
	%identifier_register_8 = load %class.point*, %class.point** %alloca_retval_5, align 4
	%this_reg_9 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_10 = getelementptr inbounds %class.point, %class.point* %this_reg_9, i32 0, i32 1
	%identifier_register_11 = load i32, i32* %var_reg_10, align 4
	%identifier_register_12 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_13 = getelementptr inbounds %class.point, %class.point* %identifier_register_12, i32 0, i32 2
	%class_member_14 = load i32, i32* %class_member_ptr_13, align 4
	%res_15 = mul i32 %identifier_register_11, %class_member_14
	%this_reg_16 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_17 = getelementptr inbounds %class.point, %class.point* %this_reg_16, i32 0, i32 2
	%identifier_register_18 = load i32, i32* %var_reg_17, align 4
	%identifier_register_19 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_20 = getelementptr inbounds %class.point, %class.point* %identifier_register_19, i32 0, i32 1
	%class_member_21 = load i32, i32* %class_member_ptr_20, align 4
	%res_22 = mul i32 %identifier_register_18, %class_member_21
	%res_23 = sub nsw i32 %res_15, %res_22
	%this_reg_24 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_25 = getelementptr inbounds %class.point, %class.point* %this_reg_24, i32 0, i32 2
	%identifier_register_26 = load i32, i32* %var_reg_25, align 4
	%identifier_register_27 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_28 = getelementptr inbounds %class.point, %class.point* %identifier_register_27, i32 0, i32 0
	%class_member_29 = load i32, i32* %class_member_ptr_28, align 4
	%res_30 = mul i32 %identifier_register_26, %class_member_29
	%this_reg_31 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_32 = getelementptr inbounds %class.point, %class.point* %this_reg_31, i32 0, i32 0
	%identifier_register_33 = load i32, i32* %var_reg_32, align 4
	%identifier_register_34 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_35 = getelementptr inbounds %class.point, %class.point* %identifier_register_34, i32 0, i32 2
	%class_member_36 = load i32, i32* %class_member_ptr_35, align 4
	%res_37 = mul i32 %identifier_register_33, %class_member_36
	%res_38 = sub nsw i32 %res_30, %res_37
	%this_reg_39 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_40 = getelementptr inbounds %class.point, %class.point* %this_reg_39, i32 0, i32 0
	%identifier_register_41 = load i32, i32* %var_reg_40, align 4
	%identifier_register_42 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_43 = getelementptr inbounds %class.point, %class.point* %identifier_register_42, i32 0, i32 1
	%class_member_44 = load i32, i32* %class_member_ptr_43, align 4
	%res_45 = mul i32 %identifier_register_41, %class_member_44
	%this_reg_46 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_47 = getelementptr inbounds %class.point, %class.point* %this_reg_46, i32 0, i32 1
	%identifier_register_48 = load i32, i32* %var_reg_47, align 4
	%identifier_register_49 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_50 = getelementptr inbounds %class.point, %class.point* %identifier_register_49, i32 0, i32 0
	%class_member_51 = load i32, i32* %class_member_ptr_50, align 4
	%res_52 = mul i32 %identifier_register_48, %class_member_51
	%res_53 = sub nsw i32 %res_45, %res_52
	call void @point.set(%class.point* %identifier_register_8, i32 %res_23, i32 %res_38, i32 %res_53)
	%identifier_register_54 = load %class.point*, %class.point** %alloca_retval_5, align 4
	store %class.point* %identifier_register_54, %class.point** %return_ptr_4, align 4
	br label %point.cross.return

point.cross.return:
	%return_val_55 = load %class.point*, %class.point** %return_ptr_4, align 4
	ret %class.point* %return_val_55

}

define %class.point* @point.add(%class.point* %__this_ptr_0, %class.point* %other_1) #0 {
point.add.entry:
	%parameter_ptr_2 = alloca %class.point*, align 4
	%parameter_ptr_3 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_2, align 4
	store %class.point* %other_1, %class.point** %parameter_ptr_3, align 4
	%return_ptr_4 = alloca %class.point*, align 4
	%this_reg_5 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_6 = getelementptr inbounds %class.point, %class.point* %this_reg_5, i32 0, i32 0
	%identifier_register_7 = load i32, i32* %var_reg_6, align 4
	%this_reg_8 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_9 = getelementptr inbounds %class.point, %class.point* %this_reg_8, i32 0, i32 0
	%identifier_register_10 = load i32, i32* %var_reg_9, align 4
	%identifier_register_11 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_12 = getelementptr inbounds %class.point, %class.point* %identifier_register_11, i32 0, i32 0
	%class_member_13 = load i32, i32* %class_member_ptr_12, align 4
	%res_14 = add i32 %identifier_register_10, %class_member_13
	%this_reg_15 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_16 = getelementptr inbounds %class.point, %class.point* %this_reg_15, i32 0, i32 0
	store i32 %res_14, i32* %var_reg_16, align 4
	%this_reg_17 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_18 = getelementptr inbounds %class.point, %class.point* %this_reg_17, i32 0, i32 1
	%identifier_register_19 = load i32, i32* %var_reg_18, align 4
	%this_reg_20 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_21 = getelementptr inbounds %class.point, %class.point* %this_reg_20, i32 0, i32 1
	%identifier_register_22 = load i32, i32* %var_reg_21, align 4
	%identifier_register_23 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_24 = getelementptr inbounds %class.point, %class.point* %identifier_register_23, i32 0, i32 1
	%class_member_25 = load i32, i32* %class_member_ptr_24, align 4
	%res_26 = add i32 %identifier_register_22, %class_member_25
	%this_reg_27 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_28 = getelementptr inbounds %class.point, %class.point* %this_reg_27, i32 0, i32 1
	store i32 %res_26, i32* %var_reg_28, align 4
	%this_reg_29 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_30 = getelementptr inbounds %class.point, %class.point* %this_reg_29, i32 0, i32 2
	%identifier_register_31 = load i32, i32* %var_reg_30, align 4
	%this_reg_32 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_33 = getelementptr inbounds %class.point, %class.point* %this_reg_32, i32 0, i32 2
	%identifier_register_34 = load i32, i32* %var_reg_33, align 4
	%identifier_register_35 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_36 = getelementptr inbounds %class.point, %class.point* %identifier_register_35, i32 0, i32 2
	%class_member_37 = load i32, i32* %class_member_ptr_36, align 4
	%res_38 = add i32 %identifier_register_34, %class_member_37
	%this_reg_39 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_40 = getelementptr inbounds %class.point, %class.point* %this_reg_39, i32 0, i32 2
	store i32 %res_38, i32* %var_reg_40, align 4
	%this_ptr_41 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	store %class.point* %this_ptr_41, %class.point** %return_ptr_4, align 4
	br label %point.add.return

point.add.return:
	%return_val_42 = load %class.point*, %class.point** %return_ptr_4, align 4
	ret %class.point* %return_val_42

}

define %class.point* @point.sub(%class.point* %__this_ptr_0, %class.point* %other_1) #0 {
point.sub.entry:
	%parameter_ptr_2 = alloca %class.point*, align 4
	%parameter_ptr_3 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_2, align 4
	store %class.point* %other_1, %class.point** %parameter_ptr_3, align 4
	%return_ptr_4 = alloca %class.point*, align 4
	%this_reg_5 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_6 = getelementptr inbounds %class.point, %class.point* %this_reg_5, i32 0, i32 0
	%identifier_register_7 = load i32, i32* %var_reg_6, align 4
	%this_reg_8 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_9 = getelementptr inbounds %class.point, %class.point* %this_reg_8, i32 0, i32 0
	%identifier_register_10 = load i32, i32* %var_reg_9, align 4
	%identifier_register_11 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_12 = getelementptr inbounds %class.point, %class.point* %identifier_register_11, i32 0, i32 0
	%class_member_13 = load i32, i32* %class_member_ptr_12, align 4
	%res_14 = sub nsw i32 %identifier_register_10, %class_member_13
	%this_reg_15 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_16 = getelementptr inbounds %class.point, %class.point* %this_reg_15, i32 0, i32 0
	store i32 %res_14, i32* %var_reg_16, align 4
	%this_reg_17 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_18 = getelementptr inbounds %class.point, %class.point* %this_reg_17, i32 0, i32 1
	%identifier_register_19 = load i32, i32* %var_reg_18, align 4
	%this_reg_20 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_21 = getelementptr inbounds %class.point, %class.point* %this_reg_20, i32 0, i32 1
	%identifier_register_22 = load i32, i32* %var_reg_21, align 4
	%identifier_register_23 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_24 = getelementptr inbounds %class.point, %class.point* %identifier_register_23, i32 0, i32 1
	%class_member_25 = load i32, i32* %class_member_ptr_24, align 4
	%res_26 = sub nsw i32 %identifier_register_22, %class_member_25
	%this_reg_27 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_28 = getelementptr inbounds %class.point, %class.point* %this_reg_27, i32 0, i32 1
	store i32 %res_26, i32* %var_reg_28, align 4
	%this_reg_29 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_30 = getelementptr inbounds %class.point, %class.point* %this_reg_29, i32 0, i32 2
	%identifier_register_31 = load i32, i32* %var_reg_30, align 4
	%this_reg_32 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_33 = getelementptr inbounds %class.point, %class.point* %this_reg_32, i32 0, i32 2
	%identifier_register_34 = load i32, i32* %var_reg_33, align 4
	%identifier_register_35 = load %class.point*, %class.point** %parameter_ptr_3, align 4
	%class_member_ptr_36 = getelementptr inbounds %class.point, %class.point* %identifier_register_35, i32 0, i32 2
	%class_member_37 = load i32, i32* %class_member_ptr_36, align 4
	%res_38 = sub nsw i32 %identifier_register_34, %class_member_37
	%this_reg_39 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	%var_reg_40 = getelementptr inbounds %class.point, %class.point* %this_reg_39, i32 0, i32 2
	store i32 %res_38, i32* %var_reg_40, align 4
	%this_ptr_41 = load %class.point*, %class.point** %parameter_ptr_2, align 4
	store %class.point* %this_ptr_41, %class.point** %return_ptr_4, align 4
	br label %point.sub.return

point.sub.return:
	%return_val_42 = load %class.point*, %class.point** %return_ptr_4, align 4
	ret %class.point* %return_val_42

}

define void @point.printPoint(%class.point* %__this_ptr_0) #0 {
point.printPoint.entry:
	%parameter_ptr_1 = alloca %class.point*, align 4
	store %class.point* %__this_ptr_0, %class.point** %parameter_ptr_1, align 4
	%this_reg_2 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_3 = getelementptr inbounds %class.point, %class.point* %this_reg_2, i32 0, i32 0
	%identifier_register_4 = load i32, i32* %var_reg_3, align 4
	%ret_5 = call i8* @toString(i32 %identifier_register_4)
	%res_6 = call i8* @__merge_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.0, i32 0, i32 0), i8* %ret_5)
	%res_7 = call i8* @__merge_string(i8* %res_6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
	%this_reg_8 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_9 = getelementptr inbounds %class.point, %class.point* %this_reg_8, i32 0, i32 1
	%identifier_register_10 = load i32, i32* %var_reg_9, align 4
	%ret_11 = call i8* @toString(i32 %identifier_register_10)
	%res_12 = call i8* @__merge_string(i8* %res_7, i8* %ret_11)
	%res_13 = call i8* @__merge_string(i8* %res_12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
	%this_reg_14 = load %class.point*, %class.point** %parameter_ptr_1, align 4
	%var_reg_15 = getelementptr inbounds %class.point, %class.point* %this_reg_14, i32 0, i32 2
	%identifier_register_16 = load i32, i32* %var_reg_15, align 4
	%ret_17 = call i8* @toString(i32 %identifier_register_16)
	%res_18 = call i8* @__merge_string(i8* %res_13, i8* %ret_17)
	%res_19 = call i8* @__merge_string(i8* %res_18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
	call void @println(i8* %res_19)
	br label %point.printPoint.return

point.printPoint.return:
	ret void

}

define i32 @main() #0 {
main.entry:
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
	%alloca_a_1 = alloca %class.point*, align 4
	%malloc_ptr_2 = call i8* @__malloc(i32 16)
	%new_class_reg_3 = bitcast i8* %malloc_ptr_2 to %class.point*
	call void @point.__cons(%class.point* %new_class_reg_3)
	store %class.point* %new_class_reg_3, %class.point** %alloca_a_1, align 4
	%alloca_b_4 = alloca %class.point*, align 4
	%malloc_ptr_5 = call i8* @__malloc(i32 16)
	%new_class_reg_6 = bitcast i8* %malloc_ptr_5 to %class.point*
	call void @point.__cons(%class.point* %new_class_reg_6)
	store %class.point* %new_class_reg_6, %class.point** %alloca_b_4, align 4
	%alloca_c_7 = alloca %class.point*, align 4
	%malloc_ptr_8 = call i8* @__malloc(i32 16)
	%new_class_reg_9 = bitcast i8* %malloc_ptr_8 to %class.point*
	call void @point.__cons(%class.point* %new_class_reg_9)
	store %class.point* %new_class_reg_9, %class.point** %alloca_c_7, align 4
	%alloca_d_10 = alloca %class.point*, align 4
	%malloc_ptr_11 = call i8* @__malloc(i32 16)
	%new_class_reg_12 = bitcast i8* %malloc_ptr_11 to %class.point*
	call void @point.__cons(%class.point* %new_class_reg_12)
	store %class.point* %new_class_reg_12, %class.point** %alloca_d_10, align 4
	%identifier_register_13 = load %class.point*, %class.point** %alloca_a_1, align 4
	call void @point.printPoint(%class.point* %identifier_register_13)
	%identifier_register_14 = load %class.point*, %class.point** %alloca_a_1, align 4
	%res_15 = sub nsw i32 0, 463
	call void @point.set(%class.point* %identifier_register_14, i32 849, i32 %res_15, i32 480)
	%identifier_register_16 = load %class.point*, %class.point** %alloca_b_4, align 4
	%res_17 = sub nsw i32 0, 208
	%res_18 = sub nsw i32 0, 150
	call void @point.set(%class.point* %identifier_register_16, i32 %res_17, i32 585, i32 %res_18)
	%identifier_register_19 = load %class.point*, %class.point** %alloca_c_7, align 4
	%res_20 = sub nsw i32 0, 670
	%res_21 = sub nsw i32 0, 742
	call void @point.set(%class.point* %identifier_register_19, i32 360, i32 %res_20, i32 %res_21)
	%identifier_register_22 = load %class.point*, %class.point** %alloca_d_10, align 4
	%res_23 = sub nsw i32 0, 29
	%res_24 = sub nsw i32 0, 591
	%res_25 = sub nsw i32 0, 960
	call void @point.set(%class.point* %identifier_register_22, i32 %res_23, i32 %res_24, i32 %res_25)
	%identifier_register_26 = load %class.point*, %class.point** %alloca_a_1, align 4
	%identifier_register_27 = load %class.point*, %class.point** %alloca_b_4, align 4
	%ret_28 = call %class.point* @point.add(%class.point* %identifier_register_26, %class.point* %identifier_register_27)
	%identifier_register_29 = load %class.point*, %class.point** %alloca_b_4, align 4
	%identifier_register_30 = load %class.point*, %class.point** %alloca_c_7, align 4
	%ret_31 = call %class.point* @point.add(%class.point* %identifier_register_29, %class.point* %identifier_register_30)
	%identifier_register_32 = load %class.point*, %class.point** %alloca_d_10, align 4
	%identifier_register_33 = load %class.point*, %class.point** %alloca_c_7, align 4
	%ret_34 = call %class.point* @point.add(%class.point* %identifier_register_32, %class.point* %identifier_register_33)
	%identifier_register_35 = load %class.point*, %class.point** %alloca_c_7, align 4
	%identifier_register_36 = load %class.point*, %class.point** %alloca_a_1, align 4
	%ret_37 = call %class.point* @point.sub(%class.point* %identifier_register_35, %class.point* %identifier_register_36)
	%identifier_register_38 = load %class.point*, %class.point** %alloca_b_4, align 4
	%identifier_register_39 = load %class.point*, %class.point** %alloca_d_10, align 4
	%ret_40 = call %class.point* @point.sub(%class.point* %identifier_register_38, %class.point* %identifier_register_39)
	%identifier_register_41 = load %class.point*, %class.point** %alloca_d_10, align 4
	%identifier_register_42 = load %class.point*, %class.point** %alloca_c_7, align 4
	%ret_43 = call %class.point* @point.sub(%class.point* %identifier_register_41, %class.point* %identifier_register_42)
	%identifier_register_44 = load %class.point*, %class.point** %alloca_c_7, align 4
	%identifier_register_45 = load %class.point*, %class.point** %alloca_b_4, align 4
	%ret_46 = call %class.point* @point.add(%class.point* %identifier_register_44, %class.point* %identifier_register_45)
	%identifier_register_47 = load %class.point*, %class.point** %alloca_a_1, align 4
	%identifier_register_48 = load %class.point*, %class.point** %alloca_b_4, align 4
	%ret_49 = call %class.point* @point.add(%class.point* %identifier_register_47, %class.point* %identifier_register_48)
	%identifier_register_50 = load %class.point*, %class.point** %alloca_b_4, align 4
	%identifier_register_51 = load %class.point*, %class.point** %alloca_b_4, align 4
	%ret_52 = call %class.point* @point.add(%class.point* %identifier_register_50, %class.point* %identifier_register_51)
	%identifier_register_53 = load %class.point*, %class.point** %alloca_c_7, align 4
	%identifier_register_54 = load %class.point*, %class.point** %alloca_c_7, align 4
	%ret_55 = call %class.point* @point.add(%class.point* %identifier_register_53, %class.point* %identifier_register_54)
	%identifier_register_56 = load %class.point*, %class.point** %alloca_a_1, align 4
	%identifier_register_57 = load %class.point*, %class.point** %alloca_d_10, align 4
	%ret_58 = call %class.point* @point.sub(%class.point* %identifier_register_56, %class.point* %identifier_register_57)
	%identifier_register_59 = load %class.point*, %class.point** %alloca_a_1, align 4
	%identifier_register_60 = load %class.point*, %class.point** %alloca_b_4, align 4
	%ret_61 = call %class.point* @point.add(%class.point* %identifier_register_59, %class.point* %identifier_register_60)
	%identifier_register_62 = load %class.point*, %class.point** %alloca_b_4, align 4
	%identifier_register_63 = load %class.point*, %class.point** %alloca_c_7, align 4
	%ret_64 = call %class.point* @point.sub(%class.point* %identifier_register_62, %class.point* %identifier_register_63)
	%identifier_register_65 = load %class.point*, %class.point** %alloca_a_1, align 4
	%ret_66 = call i32 @point.sqrLen(%class.point* %identifier_register_65)
	%ret_67 = call i8* @toString(i32 %ret_66)
	call void @println(i8* %ret_67)
	%identifier_register_68 = load %class.point*, %class.point** %alloca_b_4, align 4
	%ret_69 = call i32 @point.sqrLen(%class.point* %identifier_register_68)
	%ret_70 = call i8* @toString(i32 %ret_69)
	call void @println(i8* %ret_70)
	%identifier_register_71 = load %class.point*, %class.point** %alloca_b_4, align 4
	%identifier_register_72 = load %class.point*, %class.point** %alloca_c_7, align 4
	%ret_73 = call i32 @point.sqrDis(%class.point* %identifier_register_71, %class.point* %identifier_register_72)
	%ret_74 = call i8* @toString(i32 %ret_73)
	call void @println(i8* %ret_74)
	%identifier_register_75 = load %class.point*, %class.point** %alloca_d_10, align 4
	%identifier_register_76 = load %class.point*, %class.point** %alloca_a_1, align 4
	%ret_77 = call i32 @point.sqrDis(%class.point* %identifier_register_75, %class.point* %identifier_register_76)
	%ret_78 = call i8* @toString(i32 %ret_77)
	call void @println(i8* %ret_78)
	%identifier_register_79 = load %class.point*, %class.point** %alloca_c_7, align 4
	%identifier_register_80 = load %class.point*, %class.point** %alloca_a_1, align 4
	%ret_81 = call i32 @point.dot(%class.point* %identifier_register_79, %class.point* %identifier_register_80)
	%ret_82 = call i8* @toString(i32 %ret_81)
	call void @println(i8* %ret_82)
	%identifier_register_83 = load %class.point*, %class.point** %alloca_b_4, align 4
	%identifier_register_84 = load %class.point*, %class.point** %alloca_d_10, align 4
	%ret_85 = call %class.point* @point.cross(%class.point* %identifier_register_83, %class.point* %identifier_register_84)
	call void @point.printPoint(%class.point* %ret_85)
	%identifier_register_86 = load %class.point*, %class.point** %alloca_a_1, align 4
	call void @point.printPoint(%class.point* %identifier_register_86)
	%identifier_register_87 = load %class.point*, %class.point** %alloca_b_4, align 4
	call void @point.printPoint(%class.point* %identifier_register_87)
	%identifier_register_88 = load %class.point*, %class.point** %alloca_c_7, align 4
	call void @point.printPoint(%class.point* %identifier_register_88)
	%identifier_register_89 = load %class.point*, %class.point** %alloca_d_10, align 4
	call void @point.printPoint(%class.point* %identifier_register_89)
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_90 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_90

}

