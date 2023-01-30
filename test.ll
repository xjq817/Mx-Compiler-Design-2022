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


define void @point.__cons(%class.point* %0) #0 {
point.__cons.entry:
	store %class.point* %0, %class.point** %1, align 4
	%2 = load %class.point*, %class.point** %1, align 4
	%3 = getelementptr inbounds %class.point, %class.point* %2, i32 0, i32 0
	%4 = load i32, i32* %3, align 4
	%5 = load %class.point*, %class.point** %1, align 4
	%6 = getelementptr inbounds %class.point, %class.point* %5, i32 0, i32 0
	store i32 0, i32* %6, align 4
	%7 = load %class.point*, %class.point** %1, align 4
	%8 = getelementptr inbounds %class.point, %class.point* %7, i32 0, i32 1
	%9 = load i32, i32* %8, align 4
	%10 = load %class.point*, %class.point** %1, align 4
	%11 = getelementptr inbounds %class.point, %class.point* %10, i32 0, i32 1
	store i32 0, i32* %11, align 4
	%12 = load %class.point*, %class.point** %1, align 4
	%13 = getelementptr inbounds %class.point, %class.point* %12, i32 0, i32 2
	%14 = load i32, i32* %13, align 4
	%15 = load %class.point*, %class.point** %1, align 4
	%16 = getelementptr inbounds %class.point, %class.point* %15, i32 0, i32 2
	store i32 0, i32* %16, align 4
	br label %point.__cons.return

point.__cons.return:
	ret void

}

define void @point.set(%class.point* %0, i32 %1, i32 %2, i32 %3) #0 {
point.set.entry:
	%4 = alloca %class.point*, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	store %class.point* %0, %class.point** %4, align 4
	store i32 %1, i32* %5, align 4
	store i32 %2, i32* %6, align 4
	store i32 %3, i32* %7, align 4
	%8 = load %class.point*, %class.point** %4, align 4
	%9 = getelementptr inbounds %class.point, %class.point* %8, i32 0, i32 0
	%10 = load i32, i32* %9, align 4
	%11 = load i32, i32* %5, align 4
	%12 = load %class.point*, %class.point** %4, align 4
	%13 = getelementptr inbounds %class.point, %class.point* %12, i32 0, i32 0
	store i32 %11, i32* %13, align 4
	%14 = load %class.point*, %class.point** %4, align 4
	%15 = getelementptr inbounds %class.point, %class.point* %14, i32 0, i32 1
	%16 = load i32, i32* %15, align 4
	%17 = load i32, i32* %6, align 4
	%18 = load %class.point*, %class.point** %4, align 4
	%19 = getelementptr inbounds %class.point, %class.point* %18, i32 0, i32 1
	store i32 %17, i32* %19, align 4
	%20 = load %class.point*, %class.point** %4, align 4
	%21 = getelementptr inbounds %class.point, %class.point* %20, i32 0, i32 2
	%22 = load i32, i32* %21, align 4
	%23 = load i32, i32* %7, align 4
	%24 = load %class.point*, %class.point** %4, align 4
	%25 = getelementptr inbounds %class.point, %class.point* %24, i32 0, i32 2
	store i32 %23, i32* %25, align 4
	br label %point.set.return

point.set.return:
	ret void

}

define i32 @point.sqrLen(%class.point* %0) #0 {
point.sqrLen.entry:
	%1 = alloca %class.point*, align 4
	%2 = alloca i32, align 4
	store %class.point* %0, %class.point** %1, align 4
	%3 = load %class.point*, %class.point** %1, align 4
	%4 = getelementptr inbounds %class.point, %class.point* %3, i32 0, i32 0
	%5 = load i32, i32* %4, align 4
	%6 = load %class.point*, %class.point** %1, align 4
	%7 = getelementptr inbounds %class.point, %class.point* %6, i32 0, i32 0
	%8 = load i32, i32* %7, align 4
	%9 = mul i32 %5, %8
	%10 = load %class.point*, %class.point** %1, align 4
	%11 = getelementptr inbounds %class.point, %class.point* %10, i32 0, i32 1
	%12 = load i32, i32* %11, align 4
	%13 = load %class.point*, %class.point** %1, align 4
	%14 = getelementptr inbounds %class.point, %class.point* %13, i32 0, i32 1
	%15 = load i32, i32* %14, align 4
	%16 = mul i32 %12, %15
	%17 = add i32 %9, %16
	%18 = load %class.point*, %class.point** %1, align 4
	%19 = getelementptr inbounds %class.point, %class.point* %18, i32 0, i32 2
	%20 = load i32, i32* %19, align 4
	%21 = load %class.point*, %class.point** %1, align 4
	%22 = getelementptr inbounds %class.point, %class.point* %21, i32 0, i32 2
	%23 = load i32, i32* %22, align 4
	%24 = mul i32 %20, %23
	%25 = add i32 %17, %24
	store i32 %25, i32* %2, align 4
	br label %point.sqrLen.return

point.sqrLen.return:
	%26 = load i32, i32* %2, align 4
	ret i32 %26

}

define i32 @point.sqrDis(%class.point* %0, %class.point* %1) #0 {
point.sqrDis.entry:
	%2 = alloca %class.point*, align 4
	%3 = alloca %class.point*, align 4
	%4 = alloca i32, align 4
	store %class.point* %0, %class.point** %2, align 4
	store %class.point* %1, %class.point** %3, align 4
	%5 = load %class.point*, %class.point** %2, align 4
	%6 = getelementptr inbounds %class.point, %class.point* %5, i32 0, i32 0
	%7 = load i32, i32* %6, align 4
	%8 = load %class.point*, %class.point** %3, align 4
	%9 = getelementptr inbounds %class.point, %class.point* %8, i32 0, i32 0
	%10 = load i32, i32* %9, align 4
	%11 = sub nsw i32 %7, %10
	%12 = load %class.point*, %class.point** %2, align 4
	%13 = getelementptr inbounds %class.point, %class.point* %12, i32 0, i32 0
	%14 = load i32, i32* %13, align 4
	%15 = load %class.point*, %class.point** %3, align 4
	%16 = getelementptr inbounds %class.point, %class.point* %15, i32 0, i32 0
	%17 = load i32, i32* %16, align 4
	%18 = sub nsw i32 %14, %17
	%19 = mul i32 %11, %18
	%20 = load %class.point*, %class.point** %2, align 4
	%21 = getelementptr inbounds %class.point, %class.point* %20, i32 0, i32 1
	%22 = load i32, i32* %21, align 4
	%23 = load %class.point*, %class.point** %3, align 4
	%24 = getelementptr inbounds %class.point, %class.point* %23, i32 0, i32 1
	%25 = load i32, i32* %24, align 4
	%26 = sub nsw i32 %22, %25
	%27 = load %class.point*, %class.point** %2, align 4
	%28 = getelementptr inbounds %class.point, %class.point* %27, i32 0, i32 1
	%29 = load i32, i32* %28, align 4
	%30 = load %class.point*, %class.point** %3, align 4
	%31 = getelementptr inbounds %class.point, %class.point* %30, i32 0, i32 1
	%32 = load i32, i32* %31, align 4
	%33 = sub nsw i32 %29, %32
	%34 = mul i32 %26, %33
	%35 = add i32 %19, %34
	%36 = load %class.point*, %class.point** %2, align 4
	%37 = getelementptr inbounds %class.point, %class.point* %36, i32 0, i32 2
	%38 = load i32, i32* %37, align 4
	%39 = load %class.point*, %class.point** %3, align 4
	%40 = getelementptr inbounds %class.point, %class.point* %39, i32 0, i32 2
	%41 = load i32, i32* %40, align 4
	%42 = sub nsw i32 %38, %41
	%43 = load %class.point*, %class.point** %2, align 4
	%44 = getelementptr inbounds %class.point, %class.point* %43, i32 0, i32 2
	%45 = load i32, i32* %44, align 4
	%46 = load %class.point*, %class.point** %3, align 4
	%47 = getelementptr inbounds %class.point, %class.point* %46, i32 0, i32 2
	%48 = load i32, i32* %47, align 4
	%49 = sub nsw i32 %45, %48
	%50 = mul i32 %42, %49
	%51 = add i32 %35, %50
	store i32 %51, i32* %4, align 4
	br label %point.sqrDis.return

point.sqrDis.return:
	%52 = load i32, i32* %4, align 4
	ret i32 %52

}

define i32 @point.dot(%class.point* %0, %class.point* %1) #0 {
point.dot.entry:
	%2 = alloca %class.point*, align 4
	%3 = alloca %class.point*, align 4
	%4 = alloca i32, align 4
	store %class.point* %0, %class.point** %2, align 4
	store %class.point* %1, %class.point** %3, align 4
	%5 = load %class.point*, %class.point** %2, align 4
	%6 = getelementptr inbounds %class.point, %class.point* %5, i32 0, i32 0
	%7 = load i32, i32* %6, align 4
	%8 = load %class.point*, %class.point** %3, align 4
	%9 = getelementptr inbounds %class.point, %class.point* %8, i32 0, i32 0
	%10 = load i32, i32* %9, align 4
	%11 = mul i32 %7, %10
	%12 = load %class.point*, %class.point** %2, align 4
	%13 = getelementptr inbounds %class.point, %class.point* %12, i32 0, i32 1
	%14 = load i32, i32* %13, align 4
	%15 = load %class.point*, %class.point** %3, align 4
	%16 = getelementptr inbounds %class.point, %class.point* %15, i32 0, i32 1
	%17 = load i32, i32* %16, align 4
	%18 = mul i32 %14, %17
	%19 = add i32 %11, %18
	%20 = load %class.point*, %class.point** %2, align 4
	%21 = getelementptr inbounds %class.point, %class.point* %20, i32 0, i32 2
	%22 = load i32, i32* %21, align 4
	%23 = load %class.point*, %class.point** %3, align 4
	%24 = getelementptr inbounds %class.point, %class.point* %23, i32 0, i32 2
	%25 = load i32, i32* %24, align 4
	%26 = mul i32 %22, %25
	%27 = add i32 %19, %26
	store i32 %27, i32* %4, align 4
	br label %point.dot.return

point.dot.return:
	%28 = load i32, i32* %4, align 4
	ret i32 %28

}

define %class.point* @point.cross(%class.point* %0, %class.point* %1) #0 {
point.cross.entry:
	%2 = alloca %class.point*, align 4
	%3 = alloca %class.point*, align 4
	%4 = alloca %class.point*, align 4
	%5 = alloca %class.point*, align 4
	store %class.point* %0, %class.point** %2, align 4
	store %class.point* %1, %class.point** %3, align 4
	%6 = call i8* @__malloc(i32 12)
	%7 = bitcast i8* %6 to %class.point*
	call void @point.__cons(%class.point* %7)
	store %class.point* %7, %class.point** %5, align 4
	%8 = load %class.point*, %class.point** %5, align 4
	%9 = load %class.point*, %class.point** %2, align 4
	%10 = getelementptr inbounds %class.point, %class.point* %9, i32 0, i32 1
	%11 = load i32, i32* %10, align 4
	%12 = load %class.point*, %class.point** %3, align 4
	%13 = getelementptr inbounds %class.point, %class.point* %12, i32 0, i32 2
	%14 = load i32, i32* %13, align 4
	%15 = mul i32 %11, %14
	%16 = load %class.point*, %class.point** %2, align 4
	%17 = getelementptr inbounds %class.point, %class.point* %16, i32 0, i32 2
	%18 = load i32, i32* %17, align 4
	%19 = load %class.point*, %class.point** %3, align 4
	%20 = getelementptr inbounds %class.point, %class.point* %19, i32 0, i32 1
	%21 = load i32, i32* %20, align 4
	%22 = mul i32 %18, %21
	%23 = sub nsw i32 %15, %22
	%24 = load %class.point*, %class.point** %2, align 4
	%25 = getelementptr inbounds %class.point, %class.point* %24, i32 0, i32 2
	%26 = load i32, i32* %25, align 4
	%27 = load %class.point*, %class.point** %3, align 4
	%28 = getelementptr inbounds %class.point, %class.point* %27, i32 0, i32 0
	%29 = load i32, i32* %28, align 4
	%30 = mul i32 %26, %29
	%31 = load %class.point*, %class.point** %2, align 4
	%32 = getelementptr inbounds %class.point, %class.point* %31, i32 0, i32 0
	%33 = load i32, i32* %32, align 4
	%34 = load %class.point*, %class.point** %3, align 4
	%35 = getelementptr inbounds %class.point, %class.point* %34, i32 0, i32 2
	%36 = load i32, i32* %35, align 4
	%37 = mul i32 %33, %36
	%38 = sub nsw i32 %30, %37
	%39 = load %class.point*, %class.point** %2, align 4
	%40 = getelementptr inbounds %class.point, %class.point* %39, i32 0, i32 0
	%41 = load i32, i32* %40, align 4
	%42 = load %class.point*, %class.point** %3, align 4
	%43 = getelementptr inbounds %class.point, %class.point* %42, i32 0, i32 1
	%44 = load i32, i32* %43, align 4
	%45 = mul i32 %41, %44
	%46 = load %class.point*, %class.point** %2, align 4
	%47 = getelementptr inbounds %class.point, %class.point* %46, i32 0, i32 1
	%48 = load i32, i32* %47, align 4
	%49 = load %class.point*, %class.point** %3, align 4
	%50 = getelementptr inbounds %class.point, %class.point* %49, i32 0, i32 0
	%51 = load i32, i32* %50, align 4
	%52 = mul i32 %48, %51
	%53 = sub nsw i32 %45, %52
	call void @point.set(%class.point* %8, i32 %23, i32 %38, i32 %53)
	%54 = load %class.point*, %class.point** %5, align 4
	store %class.point* %54, %class.point** %4, align 4
	br label %point.cross.return

point.cross.return:
	%55 = load %class.point*, %class.point** %4, align 4
	ret %class.point* %55

}

define %class.point* @point.add(%class.point* %0, %class.point* %1) #0 {
point.add.entry:
	%2 = alloca %class.point*, align 4
	%3 = alloca %class.point*, align 4
	%4 = alloca %class.point*, align 4
	store %class.point* %0, %class.point** %2, align 4
	store %class.point* %1, %class.point** %3, align 4
	%5 = load %class.point*, %class.point** %2, align 4
	%6 = getelementptr inbounds %class.point, %class.point* %5, i32 0, i32 0
	%7 = load i32, i32* %6, align 4
	%8 = load %class.point*, %class.point** %2, align 4
	%9 = getelementptr inbounds %class.point, %class.point* %8, i32 0, i32 0
	%10 = load i32, i32* %9, align 4
	%11 = load %class.point*, %class.point** %3, align 4
	%12 = getelementptr inbounds %class.point, %class.point* %11, i32 0, i32 0
	%13 = load i32, i32* %12, align 4
	%14 = add i32 %10, %13
	%15 = load %class.point*, %class.point** %2, align 4
	%16 = getelementptr inbounds %class.point, %class.point* %15, i32 0, i32 0
	store i32 %14, i32* %16, align 4
	%17 = load %class.point*, %class.point** %2, align 4
	%18 = getelementptr inbounds %class.point, %class.point* %17, i32 0, i32 1
	%19 = load i32, i32* %18, align 4
	%20 = load %class.point*, %class.point** %2, align 4
	%21 = getelementptr inbounds %class.point, %class.point* %20, i32 0, i32 1
	%22 = load i32, i32* %21, align 4
	%23 = load %class.point*, %class.point** %3, align 4
	%24 = getelementptr inbounds %class.point, %class.point* %23, i32 0, i32 1
	%25 = load i32, i32* %24, align 4
	%26 = add i32 %22, %25
	%27 = load %class.point*, %class.point** %2, align 4
	%28 = getelementptr inbounds %class.point, %class.point* %27, i32 0, i32 1
	store i32 %26, i32* %28, align 4
	%29 = load %class.point*, %class.point** %2, align 4
	%30 = getelementptr inbounds %class.point, %class.point* %29, i32 0, i32 2
	%31 = load i32, i32* %30, align 4
	%32 = load %class.point*, %class.point** %2, align 4
	%33 = getelementptr inbounds %class.point, %class.point* %32, i32 0, i32 2
	%34 = load i32, i32* %33, align 4
	%35 = load %class.point*, %class.point** %3, align 4
	%36 = getelementptr inbounds %class.point, %class.point* %35, i32 0, i32 2
	%37 = load i32, i32* %36, align 4
	%38 = add i32 %34, %37
	%39 = load %class.point*, %class.point** %2, align 4
	%40 = getelementptr inbounds %class.point, %class.point* %39, i32 0, i32 2
	store i32 %38, i32* %40, align 4
	%41 = load %class.point*, %class.point** %2, align 4
	store %class.point* %41, %class.point** %4, align 4
	br label %point.add.return

point.add.return:
	%42 = load %class.point*, %class.point** %4, align 4
	ret %class.point* %42

}

define %class.point* @point.sub(%class.point* %0, %class.point* %1) #0 {
point.sub.entry:
	%2 = alloca %class.point*, align 4
	%3 = alloca %class.point*, align 4
	%4 = alloca %class.point*, align 4
	store %class.point* %0, %class.point** %2, align 4
	store %class.point* %1, %class.point** %3, align 4
	%5 = load %class.point*, %class.point** %2, align 4
	%6 = getelementptr inbounds %class.point, %class.point* %5, i32 0, i32 0
	%7 = load i32, i32* %6, align 4
	%8 = load %class.point*, %class.point** %2, align 4
	%9 = getelementptr inbounds %class.point, %class.point* %8, i32 0, i32 0
	%10 = load i32, i32* %9, align 4
	%11 = load %class.point*, %class.point** %3, align 4
	%12 = getelementptr inbounds %class.point, %class.point* %11, i32 0, i32 0
	%13 = load i32, i32* %12, align 4
	%14 = sub nsw i32 %10, %13
	%15 = load %class.point*, %class.point** %2, align 4
	%16 = getelementptr inbounds %class.point, %class.point* %15, i32 0, i32 0
	store i32 %14, i32* %16, align 4
	%17 = load %class.point*, %class.point** %2, align 4
	%18 = getelementptr inbounds %class.point, %class.point* %17, i32 0, i32 1
	%19 = load i32, i32* %18, align 4
	%20 = load %class.point*, %class.point** %2, align 4
	%21 = getelementptr inbounds %class.point, %class.point* %20, i32 0, i32 1
	%22 = load i32, i32* %21, align 4
	%23 = load %class.point*, %class.point** %3, align 4
	%24 = getelementptr inbounds %class.point, %class.point* %23, i32 0, i32 1
	%25 = load i32, i32* %24, align 4
	%26 = sub nsw i32 %22, %25
	%27 = load %class.point*, %class.point** %2, align 4
	%28 = getelementptr inbounds %class.point, %class.point* %27, i32 0, i32 1
	store i32 %26, i32* %28, align 4
	%29 = load %class.point*, %class.point** %2, align 4
	%30 = getelementptr inbounds %class.point, %class.point* %29, i32 0, i32 2
	%31 = load i32, i32* %30, align 4
	%32 = load %class.point*, %class.point** %2, align 4
	%33 = getelementptr inbounds %class.point, %class.point* %32, i32 0, i32 2
	%34 = load i32, i32* %33, align 4
	%35 = load %class.point*, %class.point** %3, align 4
	%36 = getelementptr inbounds %class.point, %class.point* %35, i32 0, i32 2
	%37 = load i32, i32* %36, align 4
	%38 = sub nsw i32 %34, %37
	%39 = load %class.point*, %class.point** %2, align 4
	%40 = getelementptr inbounds %class.point, %class.point* %39, i32 0, i32 2
	store i32 %38, i32* %40, align 4
	%41 = load %class.point*, %class.point** %2, align 4
	store %class.point* %41, %class.point** %4, align 4
	br label %point.sub.return

point.sub.return:
	%42 = load %class.point*, %class.point** %4, align 4
	ret %class.point* %42

}

define void @point.printPoint(%class.point* %0) #0 {
point.printPoint.entry:
	%1 = alloca %class.point*, align 4
	store %class.point* %0, %class.point** %1, align 4
	%2 = load %class.point*, %class.point** %1, align 4
	%3 = getelementptr inbounds %class.point, %class.point* %2, i32 0, i32 0
	%4 = load i32, i32* %3, align 4
	%5 = call i8* @toString(i32 %4)
	%6 = call i8* @__merge_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.0, i32 0, i32 0), i8* %5)
	%7 = call i8* @__merge_string(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
	%8 = load %class.point*, %class.point** %1, align 4
	%9 = getelementptr inbounds %class.point, %class.point* %8, i32 0, i32 1
	%10 = load i32, i32* %9, align 4
	%11 = call i8* @toString(i32 %10)
	%12 = call i8* @__merge_string(i8* %7, i8* %11)
	%13 = call i8* @__merge_string(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
	%14 = load %class.point*, %class.point** %1, align 4
	%15 = getelementptr inbounds %class.point, %class.point* %14, i32 0, i32 2
	%16 = load i32, i32* %15, align 4
	%17 = call i8* @toString(i32 %16)
	%18 = call i8* @__merge_string(i8* %13, i8* %17)
	%19 = call i8* @__merge_string(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
	call void @println(i8* %19)
	br label %point.printPoint.return

point.printPoint.return:
	ret void

}

define i32 @main() #0 {
main.entry:
	%0 = alloca i32, align 4
	%1 = alloca %class.point*, align 4
	%4 = alloca %class.point*, align 4
	%7 = alloca %class.point*, align 4
	%10 = alloca %class.point*, align 4
	store i32 0, i32* %0, align 4
	%2 = call i8* @__malloc(i32 12)
	%3 = bitcast i8* %2 to %class.point*
	call void @point.__cons(%class.point* %3)
	store %class.point* %3, %class.point** %1, align 4
	%5 = call i8* @__malloc(i32 12)
	%6 = bitcast i8* %5 to %class.point*
	call void @point.__cons(%class.point* %6)
	store %class.point* %6, %class.point** %4, align 4
	%8 = call i8* @__malloc(i32 12)
	%9 = bitcast i8* %8 to %class.point*
	call void @point.__cons(%class.point* %9)
	store %class.point* %9, %class.point** %7, align 4
	%11 = call i8* @__malloc(i32 12)
	%12 = bitcast i8* %11 to %class.point*
	call void @point.__cons(%class.point* %12)
	store %class.point* %12, %class.point** %10, align 4
	%13 = load %class.point*, %class.point** %1, align 4
	call void @point.printPoint(%class.point* %13)
	%14 = load %class.point*, %class.point** %1, align 4
	%15 = sub nsw i32 0, 463
	call void @point.set(%class.point* %14, i32 849, i32 %15, i32 480)
	%16 = load %class.point*, %class.point** %4, align 4
	%17 = sub nsw i32 0, 208
	%18 = sub nsw i32 0, 150
	call void @point.set(%class.point* %16, i32 %17, i32 585, i32 %18)
	%19 = load %class.point*, %class.point** %7, align 4
	%20 = sub nsw i32 0, 670
	%21 = sub nsw i32 0, 742
	call void @point.set(%class.point* %19, i32 360, i32 %20, i32 %21)
	%22 = load %class.point*, %class.point** %10, align 4
	%23 = sub nsw i32 0, 29
	%24 = sub nsw i32 0, 591
	%25 = sub nsw i32 0, 960
	call void @point.set(%class.point* %22, i32 %23, i32 %24, i32 %25)
	%26 = load %class.point*, %class.point** %1, align 4
	%27 = load %class.point*, %class.point** %4, align 4
	%28 = call %class.point* @point.add(%class.point* %26, %class.point* %27)
	%29 = load %class.point*, %class.point** %4, align 4
	%30 = load %class.point*, %class.point** %7, align 4
	%31 = call %class.point* @point.add(%class.point* %29, %class.point* %30)
	%32 = load %class.point*, %class.point** %10, align 4
	%33 = load %class.point*, %class.point** %7, align 4
	%34 = call %class.point* @point.add(%class.point* %32, %class.point* %33)
	%35 = load %class.point*, %class.point** %7, align 4
	%36 = load %class.point*, %class.point** %1, align 4
	%37 = call %class.point* @point.sub(%class.point* %35, %class.point* %36)
	%38 = load %class.point*, %class.point** %4, align 4
	%39 = load %class.point*, %class.point** %10, align 4
	%40 = call %class.point* @point.sub(%class.point* %38, %class.point* %39)
	%41 = load %class.point*, %class.point** %10, align 4
	%42 = load %class.point*, %class.point** %7, align 4
	%43 = call %class.point* @point.sub(%class.point* %41, %class.point* %42)
	%44 = load %class.point*, %class.point** %7, align 4
	%45 = load %class.point*, %class.point** %4, align 4
	%46 = call %class.point* @point.add(%class.point* %44, %class.point* %45)
	%47 = load %class.point*, %class.point** %1, align 4
	%48 = load %class.point*, %class.point** %4, align 4
	%49 = call %class.point* @point.add(%class.point* %47, %class.point* %48)
	%50 = load %class.point*, %class.point** %4, align 4
	%51 = load %class.point*, %class.point** %4, align 4
	%52 = call %class.point* @point.add(%class.point* %50, %class.point* %51)
	%53 = load %class.point*, %class.point** %7, align 4
	%54 = load %class.point*, %class.point** %7, align 4
	%55 = call %class.point* @point.add(%class.point* %53, %class.point* %54)
	%56 = load %class.point*, %class.point** %1, align 4
	%57 = load %class.point*, %class.point** %10, align 4
	%58 = call %class.point* @point.sub(%class.point* %56, %class.point* %57)
	%59 = load %class.point*, %class.point** %1, align 4
	%60 = load %class.point*, %class.point** %4, align 4
	%61 = call %class.point* @point.add(%class.point* %59, %class.point* %60)
	%62 = load %class.point*, %class.point** %4, align 4
	%63 = load %class.point*, %class.point** %7, align 4
	%64 = call %class.point* @point.sub(%class.point* %62, %class.point* %63)
	%65 = load %class.point*, %class.point** %1, align 4
	%66 = call i32 @point.sqrLen(%class.point* %65)
	%67 = call i8* @toString(i32 %66)
	call void @println(i8* %67)
	%68 = load %class.point*, %class.point** %4, align 4
	%69 = call i32 @point.sqrLen(%class.point* %68)
	%70 = call i8* @toString(i32 %69)
	call void @println(i8* %70)
	%71 = load %class.point*, %class.point** %4, align 4
	%72 = load %class.point*, %class.point** %7, align 4
	%73 = call i32 @point.sqrDis(%class.point* %71, %class.point* %72)
	%74 = call i8* @toString(i32 %73)
	call void @println(i8* %74)
	%75 = load %class.point*, %class.point** %10, align 4
	%76 = load %class.point*, %class.point** %1, align 4
	%77 = call i32 @point.sqrDis(%class.point* %75, %class.point* %76)
	%78 = call i8* @toString(i32 %77)
	call void @println(i8* %78)
	%79 = load %class.point*, %class.point** %7, align 4
	%80 = load %class.point*, %class.point** %1, align 4
	%81 = call i32 @point.dot(%class.point* %79, %class.point* %80)
	%82 = call i8* @toString(i32 %81)
	call void @println(i8* %82)
	%83 = load %class.point*, %class.point** %4, align 4
	%84 = load %class.point*, %class.point** %10, align 4
	%85 = call %class.point* @point.cross(%class.point* %83, %class.point* %84)
	call void @point.printPoint(%class.point* %85)
	%86 = load %class.point*, %class.point** %1, align 4
	call void @point.printPoint(%class.point* %86)
	%87 = load %class.point*, %class.point** %4, align 4
	call void @point.printPoint(%class.point* %87)
	%88 = load %class.point*, %class.point** %7, align 4
	call void @point.printPoint(%class.point* %88)
	%89 = load %class.point*, %class.point** %10, align 4
	call void @point.printPoint(%class.point* %89)
	store i32 0, i32* %0, align 4
	br label %main.return

main.return:
	%90 = load i32, i32* %0, align 4
	ret i32 %90

}

