; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [132 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 34
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 52
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 4
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 43
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 43
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 21
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 44
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 19
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 31
	i32 232815796, ; 9: System.Web.Services => 0xde07cb4 => 63
	i32 280482487, ; 10: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 29
	i32 318968648, ; 11: Xamarin.AndroidX.Activity.dll => 0x13031348 => 12
	i32 321597661, ; 12: System.Numerics => 0x132b30dd => 8
	i32 342366114, ; 13: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 32
	i32 442521989, ; 14: Xamarin.Essentials => 0x1a605985 => 50
	i32 450948140, ; 15: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 28
	i32 465846621, ; 16: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 17: System.dll => 0x1bff388e => 6
	i32 476646585, ; 18: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 29
	i32 486930444, ; 19: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 38
	i32 526420162, ; 20: System.Transactions.dll => 0x1f6088c2 => 56
	i32 605376203, ; 21: System.IO.Compression.FileSystem => 0x24154ecb => 59
	i32 627609679, ; 22: Xamarin.AndroidX.CustomView => 0x2568904f => 25
	i32 663517072, ; 23: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 48
	i32 666292255, ; 24: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 16
	i32 690569205, ; 25: System.Xml.Linq.dll => 0x29293ff5 => 64
	i32 775507847, ; 26: System.IO.Compression => 0x2e394f87 => 58
	i32 809851609, ; 27: System.Drawing.Common.dll => 0x30455ad9 => 53
	i32 843511501, ; 28: Xamarin.AndroidX.Print => 0x3246f6cd => 40
	i32 928116545, ; 29: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 52
	i32 955402788, ; 30: Newtonsoft.Json => 0x38f24a24 => 4
	i32 967690846, ; 31: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 32
	i32 1012816738, ; 32: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 42
	i32 1035644815, ; 33: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 15
	i32 1052210849, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 35
	i32 1098259244, ; 35: System => 0x41761b2c => 6
	i32 1175144683, ; 36: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 46
	i32 1204270330, ; 37: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 16
	i32 1267360935, ; 38: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 47
	i32 1293217323, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 27
	i32 1365406463, ; 40: System.ServiceModel.Internals.dll => 0x516272ff => 62
	i32 1376866003, ; 41: Xamarin.AndroidX.SavedState => 0x52114ed3 => 42
	i32 1406073936, ; 42: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 22
	i32 1462112819, ; 43: System.IO.Compression.dll => 0x57261233 => 58
	i32 1469204771, ; 44: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 14
	i32 1582372066, ; 45: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 26
	i32 1592978981, ; 46: System.Runtime.Serialization.dll => 0x5ef2ee25 => 61
	i32 1622152042, ; 47: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 37
	i32 1636350590, ; 48: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 24
	i32 1639515021, ; 49: System.Net.Http.dll => 0x61b9038d => 7
	i32 1657153582, ; 50: System.Runtime => 0x62c6282e => 10
	i32 1658251792, ; 51: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 51
	i32 1729485958, ; 52: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 20
	i32 1766324549, ; 53: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 44
	i32 1776026572, ; 54: System.Core.dll => 0x69dc03cc => 5
	i32 1788241197, ; 55: Xamarin.AndroidX.Fragment => 0x6a96652d => 28
	i32 1808609942, ; 56: Xamarin.AndroidX.Loader => 0x6bcd3296 => 37
	i32 1813201214, ; 57: Xamarin.Google.Android.Material => 0x6c13413e => 51
	i32 1867746548, ; 58: Xamarin.Essentials.dll => 0x6f538cf4 => 50
	i32 1885316902, ; 59: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 17
	i32 1919157823, ; 60: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 39
	i32 2019465201, ; 61: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 35
	i32 2055257422, ; 62: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 33
	i32 2079903147, ; 63: System.Runtime.dll => 0x7bf8cdab => 10
	i32 2090596640, ; 64: System.Numerics.Vectors => 0x7c9bf920 => 9
	i32 2097448633, ; 65: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 30
	i32 2201231467, ; 66: System.Net.Http => 0x8334206b => 7
	i32 2217644978, ; 67: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 46
	i32 2244775296, ; 68: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 38
	i32 2256548716, ; 69: Xamarin.AndroidX.MultiDex => 0x8680336c => 39
	i32 2279755925, ; 70: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 41
	i32 2315684594, ; 71: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 13
	i32 2471841756, ; 72: netstandard.dll => 0x93554fdc => 54
	i32 2475788418, ; 73: Java.Interop.dll => 0x93918882 => 1
	i32 2501346920, ; 74: System.Data.DataSetExtensions => 0x95178668 => 57
	i32 2505896520, ; 75: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 34
	i32 2581819634, ; 76: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 47
	i32 2620871830, ; 77: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 24
	i32 2732626843, ; 78: Xamarin.AndroidX.Activity => 0xa2e0939b => 12
	i32 2737747696, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 14
	i32 2778768386, ; 80: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 49
	i32 2810250172, ; 81: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 22
	i32 2819470561, ; 82: System.Xml.dll => 0xa80db4e1 => 11
	i32 2853208004, ; 83: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 49
	i32 2855708567, ; 84: Xamarin.AndroidX.Transition => 0xaa36a797 => 45
	i32 2903344695, ; 85: System.ComponentModel.Composition => 0xad0d8637 => 60
	i32 2905242038, ; 86: mscorlib.dll => 0xad2a79b6 => 3
	i32 2919462931, ; 87: System.Numerics.Vectors.dll => 0xae037813 => 9
	i32 2978675010, ; 88: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 27
	i32 3024354802, ; 89: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 31
	i32 3111772706, ; 90: System.Runtime.Serialization => 0xb979e222 => 61
	i32 3204380047, ; 91: System.Data.dll => 0xbefef58f => 55
	i32 3211777861, ; 92: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 26
	i32 3247949154, ; 93: Mono.Security => 0xc197c562 => 65
	i32 3258312781, ; 94: Xamarin.AndroidX.CardView => 0xc235e84d => 20
	i32 3267021929, ; 95: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 18
	i32 3317135071, ; 96: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 25
	i32 3317144872, ; 97: System.Data => 0xc5b79d28 => 55
	i32 3340431453, ; 98: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 17
	i32 3353484488, ; 99: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 30
	i32 3362522851, ; 100: Xamarin.AndroidX.Core => 0xc86c06e3 => 23
	i32 3366347497, ; 101: Java.Interop => 0xc8a662e9 => 1
	i32 3373425968, ; 102: QueueMVVM => 0xc9126530 => 0
	i32 3374999561, ; 103: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 41
	i32 3404865022, ; 104: System.ServiceModel.Internals => 0xcaf21dfe => 62
	i32 3429136800, ; 105: System.Xml => 0xcc6479a0 => 11
	i32 3430777524, ; 106: netstandard => 0xcc7d82b4 => 54
	i32 3476120550, ; 107: Mono.Android => 0xcf3163e6 => 2
	i32 3486566296, ; 108: System.Transactions => 0xcfd0c798 => 56
	i32 3501239056, ; 109: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 18
	i32 3509114376, ; 110: System.Xml.Linq => 0xd128d608 => 64
	i32 3567349600, ; 111: System.ComponentModel.Composition.dll => 0xd4a16f60 => 60
	i32 3627220390, ; 112: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 40
	i32 3641597786, ; 113: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 33
	i32 3672681054, ; 114: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3676310014, ; 115: System.Web.Services.dll => 0xdb2009fe => 63
	i32 3682565725, ; 116: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 19
	i32 3689375977, ; 117: System.Drawing.Common => 0xdbe768e9 => 53
	i32 3718780102, ; 118: Xamarin.AndroidX.Annotation => 0xdda814c6 => 13
	i32 3786282454, ; 119: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 21
	i32 3829621856, ; 120: System.Numerics.dll => 0xe4436460 => 8
	i32 3885922214, ; 121: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 45
	i32 3896760992, ; 122: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 23
	i32 3920810846, ; 123: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 59
	i32 3921031405, ; 124: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 48
	i32 3945713374, ; 125: System.Data.DataSetExtensions.dll => 0xeb2ecede => 57
	i32 3955647286, ; 126: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 15
	i32 4105002889, ; 127: Mono.Security.dll => 0xf4ad5f89 => 65
	i32 4151237749, ; 128: System.Core => 0xf76edc75 => 5
	i32 4182413190, ; 129: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 36
	i32 4274956667, ; 130: QueueMVVM.dll => 0xfecea97b => 0
	i32 4292120959 ; 131: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 36
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [132 x i32] [
	i32 34, i32 52, i32 4, i32 43, i32 43, i32 21, i32 44, i32 19, ; 0..7
	i32 31, i32 63, i32 29, i32 12, i32 8, i32 32, i32 50, i32 28, ; 8..15
	i32 3, i32 6, i32 29, i32 38, i32 56, i32 59, i32 25, i32 48, ; 16..23
	i32 16, i32 64, i32 58, i32 53, i32 40, i32 52, i32 4, i32 32, ; 24..31
	i32 42, i32 15, i32 35, i32 6, i32 46, i32 16, i32 47, i32 27, ; 32..39
	i32 62, i32 42, i32 22, i32 58, i32 14, i32 26, i32 61, i32 37, ; 40..47
	i32 24, i32 7, i32 10, i32 51, i32 20, i32 44, i32 5, i32 28, ; 48..55
	i32 37, i32 51, i32 50, i32 17, i32 39, i32 35, i32 33, i32 10, ; 56..63
	i32 9, i32 30, i32 7, i32 46, i32 38, i32 39, i32 41, i32 13, ; 64..71
	i32 54, i32 1, i32 57, i32 34, i32 47, i32 24, i32 12, i32 14, ; 72..79
	i32 49, i32 22, i32 11, i32 49, i32 45, i32 60, i32 3, i32 9, ; 80..87
	i32 27, i32 31, i32 61, i32 55, i32 26, i32 65, i32 20, i32 18, ; 88..95
	i32 25, i32 55, i32 17, i32 30, i32 23, i32 1, i32 0, i32 41, ; 96..103
	i32 62, i32 11, i32 54, i32 2, i32 56, i32 18, i32 64, i32 60, ; 104..111
	i32 40, i32 33, i32 2, i32 63, i32 19, i32 53, i32 13, i32 21, ; 112..119
	i32 8, i32 45, i32 23, i32 59, i32 48, i32 57, i32 15, i32 65, ; 120..127
	i32 5, i32 36, i32 0, i32 36 ; 128..131
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
