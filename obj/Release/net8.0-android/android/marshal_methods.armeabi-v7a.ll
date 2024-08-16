; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [125 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [250 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 116
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 57
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 109
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 62
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 92
	i32 254259026, ; 9: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 35
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 11: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 58
	i32 336156722, ; 13: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 356389973, ; 15: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 16: System.Threading.Thread.dll => 0x16a510e1 => 116
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 100
	i32 395744057, ; 18: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 19: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 89
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 68
	i32 469710990, ; 22: System.dll => 0x1bff388e => 120
	i32 498788369, ; 23: System.ObjectModel => 0x1dbae811 => 105
	i32 500358224, ; 24: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 25: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 51
	i32 539058512, ; 27: Microsoft.Extensions.Logging => 0x20216150 => 48
	i32 571435654, ; 28: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 45
	i32 592146354, ; 29: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 30: Xamarin.AndroidX.CustomView => 0x2568904f => 66
	i32 627931235, ; 31: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 32: System.Text.Encodings.Web.dll => 0x27787397 => 113
	i32 672442732, ; 33: System.Collections.Concurrent => 0x2814a96c => 87
	i32 688181140, ; 34: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 35: System.Xml.Linq.dll => 0x29293ff5 => 118
	i32 706645707, ; 36: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 37: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 38: System.Runtime.Loader.dll => 0x2b15ed29 => 110
	i32 759454413, ; 39: System.Net.Requests => 0x2d445acd => 103
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 96
	i32 777317022, ; 41: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 42: Microsoft.Extensions.Options => 0x2f0980eb => 50
	i32 804008546, ; 43: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 38
	i32 823281589, ; 44: System.Private.Uri.dll => 0x311247b5 => 106
	i32 830298997, ; 45: System.IO.Compression.Brotli => 0x317d5b75 => 95
	i32 904024072, ; 46: System.ComponentModel.Primitives.dll => 0x35e25008 => 90
	i32 926902833, ; 47: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 992768348, ; 49: System.Collections.dll => 0x3b2c715c => 89
	i32 999186168, ; 50: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 47
	i32 1012816738, ; 51: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 79
	i32 1028951442, ; 52: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1029334545, ; 53: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 59
	i32 1044663988, ; 55: System.Linq.Expressions.dll => 0x3e444eb4 => 98
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 71
	i32 1082857460, ; 57: System.ComponentModel.TypeConverter => 0x408b17f4 => 91
	i32 1084122840, ; 58: Xamarin.Kotlin.StdLib => 0x409e66d8 => 84
	i32 1098259244, ; 59: System => 0x41761b2c => 120
	i32 1118262833, ; 60: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 61: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 62: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 43
	i32 1178241025, ; 63: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 76
	i32 1203215381, ; 64: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 65: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 66: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 67: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 67
	i32 1324164729, ; 68: System.Linq => 0x4eed2679 => 99
	i32 1373134921, ; 69: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 70: Xamarin.AndroidX.SavedState => 0x52114ed3 => 79
	i32 1406073936, ; 71: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 63
	i32 1430672901, ; 72: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1454105418, ; 73: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 44
	i32 1461004990, ; 74: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 75: System.IO.Compression.dll => 0x57261233 => 96
	i32 1469204771, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 60
	i32 1470490898, ; 77: Microsoft.Extensions.Primitives => 0x57a5e912 => 51
	i32 1480492111, ; 78: System.IO.Compression.Brotli.dll => 0x583e844f => 95
	i32 1493001747, ; 79: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 80: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1521091094, ; 81: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 47
	i32 1543031311, ; 82: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 115
	i32 1546581739, ; 83: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 38
	i32 1551623176, ; 84: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 85: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 73
	i32 1624863272, ; 86: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 82
	i32 1636350590, ; 87: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 65
	i32 1639515021, ; 88: System.Net.Http.dll => 0x61b9038d => 101
	i32 1639986890, ; 89: System.Text.RegularExpressions => 0x61c036ca => 115
	i32 1654881142, ; 90: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 37
	i32 1657153582, ; 91: System.Runtime => 0x62c6282e => 111
	i32 1658251792, ; 92: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 83
	i32 1677501392, ; 93: System.Net.Primitives.dll => 0x63fca3d0 => 102
	i32 1679769178, ; 94: System.Security.Cryptography => 0x641f3e5a => 112
	i32 1729485958, ; 95: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 61
	i32 1736233607, ; 96: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 97: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1760259689, ; 98: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 36
	i32 1766324549, ; 99: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1770582343, ; 100: Microsoft.Extensions.Logging.dll => 0x6988f147 => 48
	i32 1780572499, ; 101: Mono.Android.Runtime.dll => 0x6a216153 => 123
	i32 1782862114, ; 102: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 103: Xamarin.AndroidX.Fragment => 0x6a96652d => 68
	i32 1793755602, ; 104: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 105: Xamarin.AndroidX.Loader => 0x6bcd3296 => 73
	i32 1813058853, ; 106: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 84
	i32 1813201214, ; 107: Xamarin.Google.Android.Material => 0x6c13413e => 83
	i32 1818569960, ; 108: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 77
	i32 1828688058, ; 109: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 49
	i32 1842015223, ; 110: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 111: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 112: System.Linq.Expressions => 0x6ec71a65 => 98
	i32 1875935024, ; 113: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 114: System.Collections.NonGeneric.dll => 0x71dc7c8b => 88
	i32 1939592360, ; 115: System.Private.Xml.Linq => 0x739bd4a8 => 107
	i32 1968388702, ; 116: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 117: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 118: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 71
	i32 2025202353, ; 119: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 120: System.Private.Xml => 0x79eb68ee => 108
	i32 2055257422, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2066184531, ; 122: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2072397586, ; 123: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 46
	i32 2079903147, ; 124: System.Runtime.dll => 0x7bf8cdab => 111
	i32 2090596640, ; 125: System.Numerics.Vectors => 0x7c9bf920 => 104
	i32 2127167465, ; 126: System.Console => 0x7ec9ffe9 => 93
	i32 2159891885, ; 127: Microsoft.Maui => 0x80bd55ad => 55
	i32 2169148018, ; 128: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 129: Microsoft.Extensions.Options.dll => 0x820d22b3 => 50
	i32 2192057212, ; 130: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 49
	i32 2193016926, ; 131: System.ObjectModel.dll => 0x82b6c85e => 105
	i32 2201107256, ; 132: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 85
	i32 2201231467, ; 133: System.Net.Http => 0x8334206b => 101
	i32 2207618523, ; 134: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 135: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2270573516, ; 136: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 137: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 78
	i32 2303942373, ; 138: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 139: System.Private.CoreLib.dll => 0x896b7878 => 121
	i32 2353062107, ; 140: System.Net.Primitives => 0x8c40e0db => 102
	i32 2368005991, ; 141: System.Xml.ReaderWriter.dll => 0x8d24e767 => 119
	i32 2371007202, ; 142: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 143: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2411328690, ; 144: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 35
	i32 2427813419, ; 145: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 146: System.Console.dll => 0x912896e5 => 93
	i32 2442556106, ; 147: Microsoft.JSInterop.dll => 0x919672ca => 52
	i32 2475788418, ; 148: Java.Interop.dll => 0x93918882 => 122
	i32 2480646305, ; 149: Microsoft.Maui.Controls => 0x93dba8a1 => 53
	i32 2550873716, ; 150: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2570120770, ; 151: System.Text.Encodings.Web => 0x9930ee42 => 113
	i32 2592341985, ; 152: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 43
	i32 2593496499, ; 153: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 154: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 85
	i32 2617129537, ; 155: System.Private.Xml.dll => 0x9bfe3a41 => 108
	i32 2620871830, ; 156: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 65
	i32 2626831493, ; 157: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 158: System.Runtime.Loader => 0x9ec4cf01 => 110
	i32 2692077919, ; 159: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 37
	i32 2720436237, ; 160: toutoututo.dll => 0xa226900d => 86
	i32 2732626843, ; 161: Xamarin.AndroidX.Activity => 0xa2e0939b => 58
	i32 2737747696, ; 162: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 60
	i32 2752995522, ; 163: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 164: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 54
	i32 2764765095, ; 165: Microsoft.Maui.dll => 0xa4caf7a7 => 55
	i32 2778768386, ; 166: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 81
	i32 2785988530, ; 167: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 168: Microsoft.Maui.Graphics => 0xa7008e0b => 57
	i32 2806116107, ; 169: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 170: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 63
	i32 2831556043, ; 171: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 172: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 81
	i32 2861189240, ; 173: Microsoft.Maui.Essentials => 0xaa8a4878 => 56
	i32 2892341533, ; 174: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 36
	i32 2909740682, ; 175: System.Private.CoreLib => 0xad6f1e8a => 121
	i32 2911054922, ; 176: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 46
	i32 2916838712, ; 177: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 82
	i32 2919462931, ; 178: System.Numerics.Vectors.dll => 0xae037813 => 104
	i32 2959614098, ; 179: System.ComponentModel.dll => 0xb0682092 => 92
	i32 2978675010, ; 180: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 67
	i32 3038032645, ; 181: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 182: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 74
	i32 3059408633, ; 183: Mono.Android.Runtime => 0xb65adef9 => 123
	i32 3059793426, ; 184: System.ComponentModel.Primitives => 0xb660be12 => 90
	i32 3077302341, ; 185: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 186: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 75
	i32 3220365878, ; 187: System.Threading => 0xbff2e236 => 117
	i32 3258312781, ; 188: Xamarin.AndroidX.CardView => 0xc235e84d => 61
	i32 3305363605, ; 189: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 190: System.Net.Requests.dll => 0xc5b097e4 => 103
	i32 3317135071, ; 191: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 66
	i32 3346324047, ; 192: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 76
	i32 3357674450, ; 193: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 194: System.Text.Json => 0xc82afec1 => 114
	i32 3362522851, ; 195: Xamarin.AndroidX.Core => 0xc86c06e3 => 64
	i32 3366347497, ; 196: Java.Interop => 0xc8a662e9 => 122
	i32 3374999561, ; 197: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 78
	i32 3381016424, ; 198: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 199: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 44
	i32 3428513518, ; 200: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3463511458, ; 201: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 202: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 91
	i32 3476120550, ; 203: Mono.Android => 0xcf3163e6 => 124
	i32 3479583265, ; 204: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 205: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 206: System.Text.Json.dll => 0xcfbaacae => 114
	i32 3500000672, ; 207: Microsoft.JSInterop => 0xd09dc5a0 => 52
	i32 3509114376, ; 208: System.Xml.Linq => 0xd128d608 => 118
	i32 3580758918, ; 209: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 210: System.Linq.dll => 0xd715a361 => 99
	i32 3641597786, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3643446276, ; 212: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 213: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 75
	i32 3657292374, ; 214: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 215: Mono.Android.dll => 0xdae8aa5e => 124
	i32 3697841164, ; 216: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 217: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 74
	i32 3748608112, ; 218: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 94
	i32 3786282454, ; 219: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 62
	i32 3792276235, ; 220: System.Collections.NonGeneric => 0xe2098b0b => 88
	i32 3823082795, ; 221: System.Security.Cryptography.dll => 0xe3df9d2b => 112
	i32 3841636137, ; 222: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3849253459, ; 223: System.Runtime.InteropServices.dll => 0xe56ef253 => 109
	i32 3889960447, ; 224: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 225: System.Collections.Concurrent.dll => 0xe839deed => 87
	i32 3896760992, ; 226: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 64
	i32 3928044579, ; 227: System.Xml.ReaderWriter => 0xea213423 => 119
	i32 3931092270, ; 228: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 77
	i32 3955647286, ; 229: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 59
	i32 3980434154, ; 230: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 231: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 3991664442, ; 232: toutoututo => 0xedebf73a => 86
	i32 4025784931, ; 233: System.Memory => 0xeff49a63 => 100
	i32 4046471985, ; 234: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 54
	i32 4068434129, ; 235: System.Private.Xml.Linq.dll => 0xf27f60d1 => 107
	i32 4073602200, ; 236: System.Threading.dll => 0xf2ce3c98 => 117
	i32 4094352644, ; 237: Microsoft.Maui.Essentials.dll => 0xf40add04 => 56
	i32 4100113165, ; 238: System.Private.Uri => 0xf462c30d => 106
	i32 4102112229, ; 239: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 240: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 241: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4127667938, ; 242: System.IO.FileSystem.Watcher => 0xf60736e2 => 97
	i32 4150914736, ; 243: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 244: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 97
	i32 4182413190, ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 72
	i32 4213026141, ; 246: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 94
	i32 4271975918, ; 247: Microsoft.Maui.Controls.dll => 0xfea12dee => 53
	i32 4292120959, ; 248: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 72
	i32 4294648842 ; 249: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 45
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [250 x i32] [
	i32 116, ; 0
	i32 33, ; 1
	i32 57, ; 2
	i32 109, ; 3
	i32 62, ; 4
	i32 80, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 92, ; 8
	i32 35, ; 9
	i32 2, ; 10
	i32 30, ; 11
	i32 58, ; 12
	i32 15, ; 13
	i32 69, ; 14
	i32 14, ; 15
	i32 116, ; 16
	i32 100, ; 17
	i32 34, ; 18
	i32 26, ; 19
	i32 89, ; 20
	i32 68, ; 21
	i32 120, ; 22
	i32 105, ; 23
	i32 13, ; 24
	i32 7, ; 25
	i32 51, ; 26
	i32 48, ; 27
	i32 45, ; 28
	i32 21, ; 29
	i32 66, ; 30
	i32 19, ; 31
	i32 113, ; 32
	i32 87, ; 33
	i32 1, ; 34
	i32 118, ; 35
	i32 16, ; 36
	i32 4, ; 37
	i32 110, ; 38
	i32 103, ; 39
	i32 96, ; 40
	i32 25, ; 41
	i32 50, ; 42
	i32 38, ; 43
	i32 106, ; 44
	i32 95, ; 45
	i32 90, ; 46
	i32 28, ; 47
	i32 69, ; 48
	i32 89, ; 49
	i32 47, ; 50
	i32 79, ; 51
	i32 42, ; 52
	i32 3, ; 53
	i32 59, ; 54
	i32 98, ; 55
	i32 71, ; 56
	i32 91, ; 57
	i32 84, ; 58
	i32 120, ; 59
	i32 16, ; 60
	i32 22, ; 61
	i32 43, ; 62
	i32 76, ; 63
	i32 20, ; 64
	i32 18, ; 65
	i32 2, ; 66
	i32 67, ; 67
	i32 99, ; 68
	i32 32, ; 69
	i32 79, ; 70
	i32 63, ; 71
	i32 0, ; 72
	i32 44, ; 73
	i32 6, ; 74
	i32 96, ; 75
	i32 60, ; 76
	i32 51, ; 77
	i32 95, ; 78
	i32 10, ; 79
	i32 5, ; 80
	i32 47, ; 81
	i32 115, ; 82
	i32 38, ; 83
	i32 25, ; 84
	i32 73, ; 85
	i32 82, ; 86
	i32 65, ; 87
	i32 101, ; 88
	i32 115, ; 89
	i32 37, ; 90
	i32 111, ; 91
	i32 83, ; 92
	i32 102, ; 93
	i32 112, ; 94
	i32 61, ; 95
	i32 23, ; 96
	i32 1, ; 97
	i32 36, ; 98
	i32 80, ; 99
	i32 48, ; 100
	i32 123, ; 101
	i32 17, ; 102
	i32 68, ; 103
	i32 9, ; 104
	i32 73, ; 105
	i32 84, ; 106
	i32 83, ; 107
	i32 77, ; 108
	i32 49, ; 109
	i32 29, ; 110
	i32 26, ; 111
	i32 98, ; 112
	i32 8, ; 113
	i32 88, ; 114
	i32 107, ; 115
	i32 39, ; 116
	i32 5, ; 117
	i32 71, ; 118
	i32 0, ; 119
	i32 108, ; 120
	i32 70, ; 121
	i32 4, ; 122
	i32 46, ; 123
	i32 111, ; 124
	i32 104, ; 125
	i32 93, ; 126
	i32 55, ; 127
	i32 12, ; 128
	i32 50, ; 129
	i32 49, ; 130
	i32 105, ; 131
	i32 85, ; 132
	i32 101, ; 133
	i32 14, ; 134
	i32 40, ; 135
	i32 8, ; 136
	i32 78, ; 137
	i32 18, ; 138
	i32 121, ; 139
	i32 102, ; 140
	i32 119, ; 141
	i32 39, ; 142
	i32 13, ; 143
	i32 35, ; 144
	i32 10, ; 145
	i32 93, ; 146
	i32 52, ; 147
	i32 122, ; 148
	i32 53, ; 149
	i32 11, ; 150
	i32 113, ; 151
	i32 43, ; 152
	i32 20, ; 153
	i32 85, ; 154
	i32 108, ; 155
	i32 65, ; 156
	i32 15, ; 157
	i32 110, ; 158
	i32 37, ; 159
	i32 86, ; 160
	i32 58, ; 161
	i32 60, ; 162
	i32 21, ; 163
	i32 54, ; 164
	i32 55, ; 165
	i32 81, ; 166
	i32 27, ; 167
	i32 57, ; 168
	i32 6, ; 169
	i32 63, ; 170
	i32 19, ; 171
	i32 81, ; 172
	i32 56, ; 173
	i32 36, ; 174
	i32 121, ; 175
	i32 46, ; 176
	i32 82, ; 177
	i32 104, ; 178
	i32 92, ; 179
	i32 67, ; 180
	i32 34, ; 181
	i32 74, ; 182
	i32 123, ; 183
	i32 90, ; 184
	i32 12, ; 185
	i32 75, ; 186
	i32 117, ; 187
	i32 61, ; 188
	i32 7, ; 189
	i32 103, ; 190
	i32 66, ; 191
	i32 76, ; 192
	i32 24, ; 193
	i32 114, ; 194
	i32 64, ; 195
	i32 122, ; 196
	i32 78, ; 197
	i32 3, ; 198
	i32 44, ; 199
	i32 41, ; 200
	i32 11, ; 201
	i32 91, ; 202
	i32 124, ; 203
	i32 24, ; 204
	i32 23, ; 205
	i32 114, ; 206
	i32 52, ; 207
	i32 118, ; 208
	i32 31, ; 209
	i32 99, ; 210
	i32 70, ; 211
	i32 28, ; 212
	i32 75, ; 213
	i32 40, ; 214
	i32 124, ; 215
	i32 33, ; 216
	i32 74, ; 217
	i32 94, ; 218
	i32 62, ; 219
	i32 88, ; 220
	i32 112, ; 221
	i32 42, ; 222
	i32 109, ; 223
	i32 32, ; 224
	i32 87, ; 225
	i32 64, ; 226
	i32 119, ; 227
	i32 77, ; 228
	i32 59, ; 229
	i32 27, ; 230
	i32 9, ; 231
	i32 86, ; 232
	i32 100, ; 233
	i32 54, ; 234
	i32 107, ; 235
	i32 117, ; 236
	i32 56, ; 237
	i32 106, ; 238
	i32 22, ; 239
	i32 17, ; 240
	i32 41, ; 241
	i32 97, ; 242
	i32 29, ; 243
	i32 97, ; 244
	i32 72, ; 245
	i32 94, ; 246
	i32 53, ; 247
	i32 72, ; 248
	i32 45 ; 249
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
