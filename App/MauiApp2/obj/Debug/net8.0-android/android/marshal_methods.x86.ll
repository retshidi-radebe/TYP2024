; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [444 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [888 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 3921707, ; 1: fr\System.ServiceModel.NetFramingBase.resources => 0x3bd72b => 389
	i32 6311400, ; 2: pl\System.ServiceModel.NetNamedPipe.resources.dll => 0x604de8 => 406
	i32 9535043, ; 3: ko\System.ServiceModel.Primitives.resources.dll => 0x917e43 => 431
	i32 10166715, ; 4: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 5: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 17613696, ; 6: es\System.ServiceModel.NetTcp.resources => 0x10cc380 => 414
	i32 28923068, ; 7: tr\System.ServiceModel.Federation.resources => 0x1b954bc => 370
	i32 32687329, ; 8: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 284
	i32 34715100, ; 9: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 318
	i32 34839235, ; 10: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 11: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 326
	i32 39109920, ; 12: Newtonsoft.Json.dll => 0x254c520 => 217
	i32 39485524, ; 13: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 14: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 335
	i32 42639949, ; 15: System.Threading.Thread => 0x28aa24d => 144
	i32 53472207, ; 16: System.ServiceModel.Duplex.dll => 0x32febcf => 233
	i32 59857120, ; 17: de\System.ServiceModel.NetFramingBase.resources.dll => 0x39158e0 => 387
	i32 65960268, ; 18: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 216
	i32 66541672, ; 19: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 20: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 359
	i32 68219467, ; 21: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 71084978, ; 22: cs\System.ServiceModel.NetNamedPipe.resources => 0x43cabb2 => 399
	i32 72070932, ; 23: Microsoft.Maui.Graphics.dll => 0x44bb714 => 214
	i32 82292897, ; 24: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 25: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 343
	i32 98325684, ; 26: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 189
	i32 101534019, ; 27: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 302
	i32 117431740, ; 28: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 29: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 302
	i32 122350210, ; 30: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 134690465, ; 31: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 322
	i32 136584136, ; 32: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 358
	i32 140062828, ; 33: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 351
	i32 142721839, ; 34: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 35: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 36: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 37: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 258
	i32 172961045, ; 38: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 219
	i32 176265551, ; 39: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 40: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 304
	i32 184328833, ; 41: System.ValueTuple.dll => 0xafca281 => 150
	i32 191450854, ; 42: Swashbuckle.AspNetCore.SwaggerGen.dll => 0xb694ee6 => 440
	i32 192921502, ; 43: fr\System.ServiceModel.Http.resources => 0xb7fbf9e => 376
	i32 193868653, ; 44: de\System.ServiceModel.NetNamedPipe.resources => 0xb8e336d => 400
	i32 205061960, ; 45: System.ComponentModel => 0xc38ff48 => 18
	i32 205903295, ; 46: cs\System.ServiceModel.NetFramingBase.resources.dll => 0xc45d5bf => 386
	i32 209399409, ; 47: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 256
	i32 209580789, ; 48: ko\System.ServiceModel.Federation.resources => 0xc7df2f5 => 366
	i32 220171995, ; 49: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 50: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 188
	i32 230216969, ; 51: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 278
	i32 230752869, ; 52: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 53: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 54: System.Globalization => 0xdd133ce => 42
	i32 242353569, ; 55: ru\System.ServiceModel.NetTcp.resources.dll => 0xe7205a1 => 421
	i32 246610117, ; 56: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 248989650, ; 57: pl\System.ServiceModel.NetTcp.resources.dll => 0xed747d2 => 419
	i32 261689757, ; 58: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 261
	i32 262195072, ; 59: fr\System.ServiceModel.Http.resources.dll => 0xfa0c780 => 376
	i32 276479776, ; 60: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 61: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 280
	i32 280482487, ; 62: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 277
	i32 285314186, ; 63: it\System.ServiceModel.Primitives.resources => 0x11018c8a => 429
	i32 288949973, ; 64: tr\System.ServiceModel.NetFramingBase.resources.dll => 0x113906d5 => 396
	i32 291076382, ; 65: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 66: Microsoft.Extensions.Http.dll => 0x115c82ee => 190
	i32 296834212, ; 67: zh-Hans\System.ServiceModel.Http.resources => 0x11b154a4 => 384
	i32 297972955, ; 68: tr\System.ServiceModel.Http.resources.dll => 0x11c2b4db => 383
	i32 298918909, ; 69: System.Net.Ping.dll => 0x11d123fd => 69
	i32 316078633, ; 70: pl\System.ServiceModel.Http.resources => 0x12d6fa29 => 380
	i32 317674968, ; 71: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 356
	i32 318968648, ; 72: Xamarin.AndroidX.Activity.dll => 0x13031348 => 247
	i32 321597661, ; 73: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 74: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 334
	i32 330147069, ; 75: Microsoft.SqlServer.Server => 0x13ada4fd => 215
	i32 342366114, ; 76: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 279
	i32 360082299, ; 77: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 78: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 79: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 80: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 81: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 82: System.Memory.dll => 0x16fe439a => 62
	i32 391939575, ; 83: de\System.ServiceModel.Federation.resources.dll => 0x175c85f7 => 361
	i32 392610295, ; 84: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 85: _Microsoft.Android.Resource.Designer => 0x17969339 => 443
	i32 403441872, ; 86: WindowsBase => 0x180c08d0 => 164
	i32 409257351, ; 87: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 354
	i32 414244616, ; 88: Swashbuckle.AspNetCore.Swagger => 0x18b0df08 => 441
	i32 420389340, ; 89: es\System.ServiceModel.NetNamedPipe.resources => 0x190ea1dc => 401
	i32 441335492, ; 90: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 262
	i32 442565967, ; 91: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 92: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 275
	i32 451504562, ; 93: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 94: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 456681651, ; 95: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 221
	i32 459347974, ; 96: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 97: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 98: System.dll => 0x1bff388e => 163
	i32 476646585, ; 99: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 277
	i32 482319164, ; 100: ko\System.ServiceModel.Federation.resources.dll => 0x1cbf9b3c => 366
	i32 485463106, ; 101: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 200
	i32 486930444, ; 102: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 290
	i32 489220957, ; 103: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 332
	i32 498788369, ; 104: System.ObjectModel => 0x1dbae811 => 84
	i32 507953595, ; 105: zh-Hant\System.ServiceModel.NetNamedPipe.resources.dll => 0x1e46c1bb => 411
	i32 513247710, ; 106: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 197
	i32 520748051, ; 107: ja\System.ServiceModel.NetTcp.resources => 0x1f09fc13 => 417
	i32 526420162, ; 108: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527362818, ; 109: ja\System.ServiceModel.NetTcp.resources.dll => 0x1f6eeb02 => 417
	i32 527452488, ; 110: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 322
	i32 530272170, ; 111: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 531014212, ; 112: ja\System.ServiceModel.Primitives.resources => 0x1fa6a244 => 430
	i32 538707440, ; 113: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 353
	i32 539058512, ; 114: Microsoft.Extensions.Logging => 0x20216150 => 191
	i32 540030774, ; 115: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 116: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 117: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 118: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 175
	i32 549171840, ; 119: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 120: Jsr305Binding => 0x213954e7 => 315
	i32 569601784, ; 121: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 313
	i32 577335427, ; 122: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 580569086, ; 123: zh-Hans\System.ServiceModel.NetTcp.resources => 0x229ac7fe => 423
	i32 601371474, ; 124: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 125: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 126: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 624937153, ; 127: fr\System.ServiceModel.NetNamedPipe.resources.dll => 0x253fc8c1 => 402
	i32 627609679, ; 128: Xamarin.AndroidX.CustomView => 0x2568904f => 267
	i32 627931235, ; 129: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 345
	i32 634015394, ; 130: tr\System.ServiceModel.Primitives.resources => 0x25ca4ea2 => 435
	i32 635078218, ; 131: de\System.ServiceModel.Primitives.resources => 0x25da864a => 426
	i32 639843206, ; 132: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 273
	i32 639850993, ; 133: Microsoft.OpenApi.dll => 0x262359f1 => 442
	i32 643868501, ; 134: System.Net => 0x2660a755 => 81
	i32 643983915, ; 135: System.ServiceModel.Security => 0x26626a2b => 240
	i32 648503046, ; 136: de\System.ServiceModel.Federation.resources => 0x26a75f06 => 361
	i32 662205335, ; 137: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 138: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 309
	i32 666292255, ; 139: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 254
	i32 672442732, ; 140: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 141: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 142: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 143: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 324
	i32 691725528, ; 144: ru\System.ServiceModel.NetFramingBase.resources.dll => 0x293ae4d8 => 395
	i32 693804605, ; 145: System.Windows => 0x295a9e3d => 153
	i32 699345723, ; 146: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 147: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 319
	i32 700358131, ; 148: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 149: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 229
	i32 720511267, ; 150: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 323
	i32 722857257, ; 151: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 152: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 196
	i32 735137430, ; 153: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 736986660, ; 154: FarmacyAPI.dll => 0x2bed8624 => 438
	i32 743526611, ; 155: pt-BR\System.ServiceModel.NetFramingBase.resources.dll => 0x2c5150d3 => 394
	i32 752232764, ; 156: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 157: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 244
	i32 759454413, ; 158: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 159: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 769175829, ; 160: cs\System.ServiceModel.Http.resources.dll => 0x2dd8b115 => 373
	i32 775507847, ; 161: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 162: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 351
	i32 789151979, ; 163: Microsoft.Extensions.Options => 0x2f0980eb => 195
	i32 790371945, ; 164: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 268
	i32 804715423, ; 165: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 166: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 282
	i32 809851609, ; 167: System.Drawing.Common.dll => 0x30455ad9 => 225
	i32 823281589, ; 168: System.Private.Uri.dll => 0x311247b5 => 86
	i32 823444754, ; 169: zh-Hant\System.ServiceModel.Http.resources => 0x3114c512 => 385
	i32 828535308, ; 170: System.ServiceModel.NetNamedPipe => 0x3162720c => 237
	i32 830298997, ; 171: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 172: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 173: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 174: Xamarin.AndroidX.Print => 0x3246f6cd => 295
	i32 869139383, ; 175: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 336
	i32 873119928, ; 176: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 177: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 178: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 179: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 350
	i32 891091680, ; 180: cs\System.ServiceModel.Federation.resources.dll => 0x351cfae0 => 360
	i32 902163614, ; 181: fr\System.ServiceModel.NetTcp.resources.dll => 0x35c5ec9e => 415
	i32 904024072, ; 182: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 183: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 911672964, ; 184: ja\System.ServiceModel.Primitives.resources.dll => 0x36570684 => 430
	i32 918734561, ; 185: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 347
	i32 922036678, ; 186: fr\System.ServiceModel.Primitives.resources.dll => 0x36f529c6 => 428
	i32 928116545, ; 187: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 318
	i32 952186615, ; 188: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 189: Newtonsoft.Json => 0x38f24a24 => 217
	i32 956575887, ; 190: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 323
	i32 961460050, ; 191: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 340
	i32 966729478, ; 192: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 316
	i32 967690846, ; 193: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 279
	i32 972805734, ; 194: System.ServiceModel.Http => 0x39fbd666 => 235
	i32 975236339, ; 195: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 196: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 980852653, ; 197: pl\System.ServiceModel.Federation.resources => 0x3a769fad => 367
	i32 986514023, ; 198: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 199: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 200: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 349
	i32 992768348, ; 201: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 202: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 203: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 204: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 299
	i32 1019214401, ; 205: System.Drawing => 0x3cbffa41 => 36
	i32 1021042290, ; 206: tr\System.ServiceModel.Federation.resources.dll => 0x3cdbde72 => 370
	i32 1028951442, ; 207: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 187
	i32 1031528504, ; 208: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 317
	i32 1035644815, ; 209: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 252
	i32 1036536393, ; 210: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 211: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 330
	i32 1044663988, ; 212: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 213: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 189
	i32 1052210849, ; 214: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 286
	i32 1062017875, ; 215: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 199
	i32 1067306892, ; 216: GoogleGson => 0x3f9dcf8c => 174
	i32 1081414353, ; 217: System.ServiceModel.Http.dll => 0x407512d1 => 235
	i32 1082857460, ; 218: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 219: Xamarin.Kotlin.StdLib => 0x409e66d8 => 320
	i32 1098259244, ; 220: System => 0x41761b2c => 163
	i32 1098934168, ; 221: es\System.ServiceModel.Http.resources.dll => 0x41806798 => 375
	i32 1108272742, ; 222: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 352
	i32 1117529484, ; 223: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 346
	i32 1118262833, ; 224: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 342
	i32 1121599056, ; 225: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 285
	i32 1127624469, ; 226: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 193
	i32 1131748925, ; 227: ru\System.ServiceModel.Http.resources => 0x43751e3d => 382
	i32 1137475283, ; 228: fr\System.ServiceModel.Federation.resources => 0x43cc7ed3 => 363
	i32 1138436374, ; 229: Microsoft.Data.SqlClient.dll => 0x43db2916 => 176
	i32 1145483052, ; 230: System.Windows.Extensions.dll => 0x4446af2c => 242
	i32 1149092582, ; 231: Xamarin.AndroidX.Window => 0x447dc2e6 => 312
	i32 1157931901, ; 232: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 178
	i32 1168523401, ; 233: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 348
	i32 1170634674, ; 234: System.Web.dll => 0x45c677b2 => 152
	i32 1175144683, ; 235: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 308
	i32 1178241025, ; 236: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 293
	i32 1202000627, ; 237: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 178
	i32 1204270330, ; 238: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 254
	i32 1204575371, ; 239: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 182
	i32 1207862497, ; 240: System.ServiceModel.NetTcp.dll => 0x47fe84e1 => 238
	i32 1208641965, ; 241: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 242: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 243: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 313
	i32 1244474809, ; 244: ru\System.ServiceModel.Primitives.resources.dll => 0x4a2d2db9 => 434
	i32 1253011324, ; 245: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 246: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 328
	i32 1264511973, ; 247: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 303
	i32 1267360935, ; 248: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 307
	i32 1273260888, ; 249: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 259
	i32 1275534314, ; 250: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 324
	i32 1278448581, ; 251: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 251
	i32 1290571463, ; 252: ko\System.ServiceModel.NetNamedPipe.resources.dll => 0x4cec8ec7 => 405
	i32 1293217323, ; 253: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 270
	i32 1296184643, ; 254: pl\System.ServiceModel.NetFramingBase.resources => 0x4d423543 => 393
	i32 1308624726, ; 255: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 337
	i32 1309188875, ; 256: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 257: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 312
	i32 1324164729, ; 258: System.Linq => 0x4eed2679 => 61
	i32 1324212547, ; 259: pt-BR\System.ServiceModel.NetTcp.resources => 0x4eede143 => 420
	i32 1335329327, ; 260: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 261: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 357
	i32 1347226533, ; 262: Swashbuckle.AspNetCore.SwaggerGen => 0x504d0ba5 => 440
	i32 1360479413, ; 263: it\System.ServiceModel.Federation.resources => 0x511744b5 => 364
	i32 1361525254, ; 264: ru\System.ServiceModel.NetNamedPipe.resources => 0x51273a06 => 408
	i32 1364015309, ; 265: System.IO => 0x514d38cd => 57
	i32 1372451108, ; 266: de\System.ServiceModel.Http.resources.dll => 0x51cdf124 => 374
	i32 1373134921, ; 267: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 358
	i32 1376866003, ; 268: Xamarin.AndroidX.SavedState => 0x52114ed3 => 299
	i32 1379779777, ; 269: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1394641819, ; 270: System.ServiceModel.Primitives => 0x53208b9b => 239
	i32 1397695725, ; 271: Microsoft.IdentityModel.Xml => 0x534f24ed => 208
	i32 1402170036, ; 272: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 273: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 263
	i32 1408764838, ; 274: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 275: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1412399920, ; 276: it\System.ServiceModel.NetFramingBase.resources.dll => 0x542f8330 => 390
	i32 1422545099, ; 277: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 278: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 326
	i32 1430830959, ; 279: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x5548bf6f => 398
	i32 1434145427, ; 280: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 281: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 316
	i32 1439761251, ; 282: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 283: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 284: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 285: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 286: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 287: System.IdentityModel.Tokens.Jwt => 0x57137723 => 226
	i32 1461004990, ; 288: es\Microsoft.Maui.Controls.resources => 0x57152abe => 332
	i32 1461234159, ; 289: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 290: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 291: System.IO.Compression.dll => 0x57261233 => 46
	i32 1467914867, ; 292: pt-BR\System.ServiceModel.Primitives.resources.dll => 0x577e9a73 => 433
	i32 1469204771, ; 293: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 253
	i32 1469209632, ; 294: tr\System.ServiceModel.Primitives.resources.dll => 0x57925c20 => 435
	i32 1470490898, ; 295: Microsoft.Extensions.Primitives => 0x57a5e912 => 197
	i32 1479771757, ; 296: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 297: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 298: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 299: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 300
	i32 1496356098, ; 300: pt-BR\System.ServiceModel.NetFramingBase.resources => 0x59309502 => 394
	i32 1498168481, ; 301: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 201
	i32 1505131794, ; 302: Microsoft.Extensions.Http => 0x59b67d12 => 190
	i32 1526286932, ; 303: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 356
	i32 1536373174, ; 304: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 305: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 306: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 307: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1552155078, ; 308: System.ServiceModel.NetFramingBase => 0x5c8401c6 => 236
	i32 1565310744, ; 309: System.Runtime.Caching => 0x5d4cbf18 => 228
	i32 1565862583, ; 310: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 311: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 312: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 313: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1582305585, ; 314: Azure.Identity => 0x5e501131 => 173
	i32 1582372066, ; 315: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 269
	i32 1590860858, ; 316: System.ServiceModel.NetTcp => 0x5ed29c3a => 238
	i32 1592978981, ; 317: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1595348235, ; 318: es\System.ServiceModel.NetTcp.resources.dll => 0x5f17150b => 414
	i32 1597949149, ; 319: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 317
	i32 1601112923, ; 320: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1601390969, ; 321: it\System.ServiceModel.NetNamedPipe.resources.dll => 0x5f734979 => 403
	i32 1604827217, ; 322: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 323: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 324: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 289
	i32 1622358360, ; 325: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 326: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 311
	i32 1626255391, ; 327: Microsoft.IdentityModel.Protocols.WsTrust => 0x60eeb01f => 205
	i32 1628113371, ; 328: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 204
	i32 1629788937, ; 329: cs\System.ServiceModel.Primitives.resources => 0x61249b09 => 425
	i32 1635184631, ; 330: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 273
	i32 1636350590, ; 331: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 266
	i32 1639515021, ; 332: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 333: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 334: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1653151792, ; 335: Syncfusion.Maui.Inputs.dll => 0x62891830 => 222
	i32 1654850497, ; 336: it\System.ServiceModel.Http.resources.dll => 0x62a303c1 => 377
	i32 1657153582, ; 337: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 338: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 305
	i32 1658251792, ; 339: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 314
	i32 1670060433, ; 340: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 261
	i32 1675553242, ; 341: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 342: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 343: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 344: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 345: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 177
	i32 1691477237, ; 346: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 347: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 348: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 321
	i32 1701541528, ; 349: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 350: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 282
	i32 1726116996, ; 351: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 352: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 353: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 257
	i32 1738804305, ; 354: it\System.ServiceModel.Federation.resources.dll => 0x67a40c51 => 364
	i32 1740449066, ; 355: zh-Hant\System.ServiceModel.NetTcp.resources.dll => 0x67bd252a => 424
	i32 1743415430, ; 356: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 327
	i32 1744735666, ; 357: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746316138, ; 358: Mono.Android.Export => 0x6816ab6a => 168
	i32 1750313021, ; 359: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 360: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1762907507, ; 361: zh-Hans\System.ServiceModel.NetFramingBase.resources.dll => 0x6913d573 => 397
	i32 1763938596, ; 362: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 363: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 364: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 304
	i32 1768176139, ; 365: ja\System.ServiceModel.NetFramingBase.resources.dll => 0x69643a0b => 391
	i32 1770582343, ; 366: Microsoft.Extensions.Logging.dll => 0x6988f147 => 191
	i32 1776026572, ; 367: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 368: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 369: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1782862114, ; 370: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 343
	i32 1788241197, ; 371: Xamarin.AndroidX.Fragment => 0x6a96652d => 275
	i32 1792213857, ; 372: ru\System.ServiceModel.Federation.resources => 0x6ad30361 => 369
	i32 1793755602, ; 373: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 335
	i32 1794500907, ; 374: Microsoft.Identity.Client.dll => 0x6af5e92b => 198
	i32 1796167890, ; 375: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 175
	i32 1805292898, ; 376: pt-BR\System.ServiceModel.NetTcp.resources.dll => 0x6b9a9562 => 420
	i32 1808609942, ; 377: Xamarin.AndroidX.Loader => 0x6bcd3296 => 289
	i32 1813058853, ; 378: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 320
	i32 1813201214, ; 379: Xamarin.Google.Android.Material => 0x6c13413e => 314
	i32 1818569960, ; 380: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 294
	i32 1818787751, ; 381: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1820694217, ; 382: zh-Hans\System.ServiceModel.Federation.resources.dll => 0x6c8596c9 => 371
	i32 1824175904, ; 383: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 384: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827118058, ; 385: pl\System.ServiceModel.NetNamedPipe.resources => 0x6ce79bea => 406
	i32 1828688058, ; 386: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 192
	i32 1829150748, ; 387: System.Windows.Extensions => 0x6d06a01c => 242
	i32 1834522491, ; 388: pt-BR\System.ServiceModel.Http.resources => 0x6d58977b => 381
	i32 1847515442, ; 389: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 244
	i32 1853025655, ; 390: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 352
	i32 1854900386, ; 391: zh-Hans\System.ServiceModel.NetTcp.resources.dll => 0x6e8f88a2 => 423
	i32 1858542181, ; 392: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 393: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 394: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 204
	i32 1875935024, ; 395: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 334
	i32 1879696579, ; 396: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1884421515, ; 397: cs\System.ServiceModel.NetTcp.resources.dll => 0x7051fd8b => 412
	i32 1885316902, ; 398: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 255
	i32 1888955245, ; 399: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 400: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 401: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 328
	i32 1898237753, ; 402: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 403: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 404: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1916248535, ; 405: it\System.ServiceModel.NetTcp.resources.dll => 0x7237a1d7 => 416
	i32 1922109462, ; 406: System.ServiceModel.Primitives.dll => 0x72911016 => 239
	i32 1927745319, ; 407: ru\System.ServiceModel.Federation.resources.dll => 0x72e70f27 => 369
	i32 1932085498, ; 408: fr\System.ServiceModel.Primitives.resources => 0x732948fa => 428
	i32 1939592360, ; 409: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1946106882, ; 410: es\System.ServiceModel.NetFramingBase.resources => 0x73ff3c02 => 388
	i32 1953182387, ; 411: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 339
	i32 1956758971, ; 412: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960645073, ; 413: ko\System.ServiceModel.NetTcp.resources => 0x74dd11d1 => 418
	i32 1960932030, ; 414: es\System.ServiceModel.Federation.resources.dll => 0x74e172be => 362
	i32 1961813231, ; 415: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 301
	i32 1968388702, ; 416: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 183
	i32 1978670985, ; 417: tr\System.ServiceModel.NetTcp.resources.dll => 0x75f01f89 => 422
	i32 1983156543, ; 418: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 321
	i32 1985761444, ; 419: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 246
	i32 1986222447, ; 420: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 206
	i32 1999974468, ; 421: cs\System.ServiceModel.Primitives.resources.dll => 0x77353044 => 425
	i32 2003115576, ; 422: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 331
	i32 2011961780, ; 423: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 424: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 286
	i32 2031763787, ; 425: Xamarin.Android.Glide => 0x791a414b => 243
	i32 2040764568, ; 426: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 199
	i32 2045470958, ; 427: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 428: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 185
	i32 2055257422, ; 429: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 281
	i32 2060060697, ; 430: System.Windows.dll => 0x7aca0819 => 153
	i32 2066184531, ; 431: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 330
	i32 2070888862, ; 432: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 433: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 434: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 231
	i32 2086675053, ; 435: System.ServiceModel.NetFramingBase.dll => 0x7c60226d => 236
	i32 2090596640, ; 436: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2093814594, ; 437: Microsoft.IdentityModel.Tokens.Saml.dll => 0x7ccd1342 => 207
	i32 2118004960, ; 438: fr\System.ServiceModel.NetNamedPipe.resources => 0x7e3e30e0 => 402
	i32 2127167465, ; 439: System.Console => 0x7ec9ffe9 => 20
	i32 2139610451, ; 440: pl\System.ServiceModel.Federation.resources.dll => 0x7f87dd53 => 367
	i32 2142473426, ; 441: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 442: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 443: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 444: Microsoft.Maui => 0x80bd55ad => 212
	i32 2169148018, ; 445: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 338
	i32 2181898931, ; 446: Microsoft.Extensions.Options.dll => 0x820d22b3 => 195
	i32 2187815077, ; 447: it\System.ServiceModel.Primitives.resources.dll => 0x826768a5 => 429
	i32 2192057212, ; 448: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 192
	i32 2193016926, ; 449: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 450: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 325
	i32 2201231467, ; 451: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 452: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 194
	i32 2207618523, ; 453: it\Microsoft.Maui.Controls.resources => 0x839595db => 340
	i32 2217644978, ; 454: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 308
	i32 2222056684, ; 455: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2227276228, ; 456: cs\System.ServiceModel.NetFramingBase.resources => 0x84c189c4 => 386
	i32 2242730773, ; 457: de\System.ServiceModel.NetTcp.resources.dll => 0x85ad5b15 => 413
	i32 2244775296, ; 458: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 290
	i32 2252106437, ; 459: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2252897993, ; 460: Microsoft.EntityFrameworkCore => 0x86487ec9 => 177
	i32 2253551641, ; 461: Microsoft.IdentityModel.Protocols => 0x86527819 => 203
	i32 2256313426, ; 462: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 463: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 464: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 184
	i32 2267999099, ; 465: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 245
	i32 2279755925, ; 466: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 297
	i32 2292263403, ; 467: zh-Hant\System.ServiceModel.Primitives.resources => 0x88a129eb => 437
	i32 2293034957, ; 468: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 469: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 470: System.Net.Mail => 0x88ffe49e => 66
	i32 2299350997, ; 471: pt-BR\System.ServiceModel.NetNamedPipe.resources.dll => 0x890d4fd5 => 407
	i32 2303942373, ; 472: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 344
	i32 2305521784, ; 473: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2306840234, ; 474: cs\System.ServiceModel.Federation.resources => 0x897f96aa => 360
	i32 2315684594, ; 475: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 249
	i32 2320631194, ; 476: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2322006890, ; 477: zh-Hant\System.ServiceModel.NetFramingBase.resources.dll => 0x8a67036a => 398
	i32 2340441535, ; 478: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 479: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2348932370, ; 480: Microsoft.IdentityModel.Tokens.Saml => 0x8c01dd12 => 207
	i32 2353062107, ; 481: System.Net.Primitives => 0x8c40e0db => 70
	i32 2354730003, ; 482: Syncfusion.Licensing => 0x8c5a5413 => 218
	i32 2366048013, ; 483: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 338
	i32 2366248666, ; 484: Swashbuckle.AspNetCore.Swagger.dll => 0x8d0a16da => 441
	i32 2368005991, ; 485: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2369706906, ; 486: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 202
	i32 2371007202, ; 487: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 183
	i32 2378619854, ; 488: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 489: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2393708825, ; 490: es\System.ServiceModel.Http.resources => 0x8ead1919 => 375
	i32 2395872292, ; 491: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 339
	i32 2401565422, ; 492: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 493: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 272
	i32 2421380589, ; 494: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2423080555, ; 495: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 259
	i32 2427813419, ; 496: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 336
	i32 2435356389, ; 497: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 498: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 499: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 500: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 501: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 502: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 262
	i32 2471841756, ; 503: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 504: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 505: Microsoft.Maui.Controls => 0x93dba8a1 => 210
	i32 2483903535, ; 506: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 507: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 508: System.AppContext.dll => 0x94798bc5 => 6
	i32 2491939797, ; 509: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x9487fbd5 => 407
	i32 2501346920, ; 510: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 511: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 342
	i32 2503402960, ; 512: de\System.ServiceModel.NetFramingBase.resources => 0x9536e5d0 => 387
	i32 2505896520, ; 513: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 284
	i32 2522472828, ; 514: Xamarin.Android.Glide.dll => 0x9659e17c => 243
	i32 2536732310, ; 515: zh-Hans\System.ServiceModel.Http.resources.dll => 0x97337696 => 384
	i32 2538310050, ; 516: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 517: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 337
	i32 2562349572, ; 518: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 519: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2574359397, ; 520: tr\System.ServiceModel.NetFramingBase.resources => 0x99719b65 => 396
	i32 2576534780, ; 521: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 341
	i32 2581783588, ; 522: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 285
	i32 2581819634, ; 523: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 307
	i32 2585220780, ; 524: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 525: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 526: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2593496499, ; 527: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 346
	i32 2605712449, ; 528: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 325
	i32 2615233544, ; 529: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 276
	i32 2616218305, ; 530: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 193
	i32 2617129537, ; 531: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 532: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 533: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 266
	i32 2624644809, ; 534: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 271
	i32 2626831493, ; 535: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 341
	i32 2627185994, ; 536: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 537: System.Memory.Data => 0x9ca74fdc => 227
	i32 2629843544, ; 538: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 539: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 280
	i32 2634653062, ; 540: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 179
	i32 2640290731, ; 541: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 202
	i32 2640706905, ; 542: Azure.Core => 0x9d65fd59 => 172
	i32 2655777936, ; 543: zh-Hans\System.ServiceModel.NetNamedPipe.resources.dll => 0x9e4bf490 => 410
	i32 2659772221, ; 544: es\System.ServiceModel.Federation.resources => 0x9e88e73d => 362
	i32 2660759594, ; 545: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 230
	i32 2663391936, ; 546: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 245
	i32 2663698177, ; 547: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 548: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 549: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 550: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 551: Azure.Identity.dll => 0x9f9148fa => 173
	i32 2680299297, ; 552: zh-Hant\System.ServiceModel.Primitives.resources.dll => 0x9fc21f21 => 437
	i32 2686887180, ; 553: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 554: System.IO.dll => 0xa090e36a => 57
	i32 2696517651, ; 555: fr\System.ServiceModel.NetFramingBase.resources.dll => 0xa0b99813 => 389
	i32 2699027554, ; 556: Microsoft.OpenApi => 0xa0dfe462 => 442
	i32 2701096212, ; 557: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 305
	i32 2702322050, ; 558: Swashbuckle.AspNetCore.SwaggerUI => 0xa1122982 => 439
	i32 2715334215, ; 559: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 560: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 561: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 562: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 563: Xamarin.AndroidX.Activity => 0xa2e0939b => 247
	i32 2735172069, ; 564: System.Threading.Channels => 0xa30769e5 => 138
	i32 2737747696, ; 565: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 253
	i32 2740051746, ; 566: Microsoft.Identity.Client => 0xa351df22 => 198
	i32 2740698338, ; 567: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 327
	i32 2740877318, ; 568: it\System.ServiceModel.NetTcp.resources => 0xa35e7806 => 416
	i32 2740948882, ; 569: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2743368605, ; 570: Syncfusion.Maui.DataSource => 0xa3847b9d => 220
	i32 2748088231, ; 571: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 572: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 347
	i32 2753493119, ; 573: System.ServiceModel.Security.dll => 0xa41ef87f => 240
	i32 2755098380, ; 574: Microsoft.SqlServer.Server.dll => 0xa437770c => 215
	i32 2755643133, ; 575: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 180
	i32 2756478476, ; 576: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa44c860c => 424
	i32 2758225723, ; 577: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 211
	i32 2764765095, ; 578: Microsoft.Maui.dll => 0xa4caf7a7 => 212
	i32 2765824710, ; 579: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 580: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 319
	i32 2778768386, ; 581: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 310
	i32 2779977773, ; 582: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 298
	i32 2785988530, ; 583: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 353
	i32 2788224221, ; 584: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 276
	i32 2795666278, ; 585: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 216
	i32 2801831435, ; 586: Microsoft.Maui.Graphics => 0xa7008e0b => 214
	i32 2803228030, ; 587: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2810250172, ; 588: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 263
	i32 2819470561, ; 589: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 590: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 591: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 298
	i32 2824502124, ; 592: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2838993487, ; 593: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 287
	i32 2841355853, ; 594: System.Security.Permissions => 0xa95ba64d => 232
	i32 2847789619, ; 595: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 179
	i32 2849599387, ; 596: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 597: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 310
	i32 2855657516, ; 598: zh-Hant\System.ServiceModel.Http.resources.dll => 0xaa35e02c => 385
	i32 2855708567, ; 599: Xamarin.AndroidX.Transition => 0xaa36a797 => 306
	i32 2861098320, ; 600: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 601: Microsoft.Maui.Essentials => 0xaa8a4878 => 213
	i32 2867946736, ; 602: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 230
	i32 2868557005, ; 603: Syncfusion.Licensing.dll => 0xaafab4cd => 218
	i32 2870099610, ; 604: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 248
	i32 2870418402, ; 605: fr\System.ServiceModel.Federation.resources.dll => 0xab171be2 => 363
	i32 2875164099, ; 606: Jsr305Binding.dll => 0xab5f85c3 => 315
	i32 2875220617, ; 607: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 608: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 274
	i32 2887636118, ; 609: System.Net.dll => 0xac1dd496 => 81
	i32 2899241291, ; 610: it\System.ServiceModel.Http.resources => 0xaccee94b => 377
	i32 2899753641, ; 611: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 612: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 613: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 614: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 615: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2916838712, ; 616: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 311
	i32 2919462931, ; 617: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 618: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 250
	i32 2921417940, ; 619: System.Security.Cryptography.Xml => 0xae214cd4 => 231
	i32 2932918549, ; 620: pt-BR\System.ServiceModel.Federation.resources.dll => 0xaed0c915 => 368
	i32 2936416060, ; 621: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 622: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 623: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2944313911, ; 624: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 224
	i32 2958066338, ; 625: pl\System.ServiceModel.Primitives.resources => 0xb05082a2 => 432
	i32 2958246600, ; 626: de\System.ServiceModel.Http.resources => 0xb05342c8 => 374
	i32 2959614098, ; 627: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 628: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 629: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 196
	i32 2972252294, ; 630: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 631: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 270
	i32 2985026235, ; 632: ja\System.ServiceModel.NetNamedPipe.resources => 0xb1ebe2bb => 404
	i32 2987532451, ; 633: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 301
	i32 2996846495, ; 634: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 283
	i32 3012788804, ; 635: System.Configuration.ConfigurationManager => 0xb3938244 => 224
	i32 3016983068, ; 636: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 303
	i32 3020703001, ; 637: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 188
	i32 3022610030, ; 638: ja\System.ServiceModel.Http.resources => 0xb4295e6e => 378
	i32 3023353419, ; 639: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 640: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 278
	i32 3033605958, ; 641: System.Memory.Data.dll => 0xb4d12746 => 227
	i32 3037259466, ; 642: ja\System.ServiceModel.NetNamedPipe.resources.dll => 0xb508e6ca => 404
	i32 3038032645, ; 643: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 443
	i32 3053864966, ; 644: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 333
	i32 3056245963, ; 645: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 300
	i32 3057625584, ; 646: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 291
	i32 3059408633, ; 647: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 648: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 649: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 181
	i32 3075834255, ; 650: System.Threading.Tasks => 0xb755818f => 143
	i32 3084678329, ; 651: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 206
	i32 3090735792, ; 652: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 653: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 654: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 655: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 656: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3123044289, ; 657: System.ServiceModel.Duplex => 0xba25dfc1 => 233
	i32 3123119788, ; 658: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xba2706ac => 205
	i32 3124832203, ; 659: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 660: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3138130243, ; 661: Swashbuckle.AspNetCore.SwaggerUI.dll => 0xbb0c1143 => 439
	i32 3140633799, ; 662: Syncfusion.Maui.ListView => 0xbb3244c7 => 223
	i32 3147165239, ; 663: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3147228406, ; 664: Syncfusion.Maui.Core => 0xbb96e4f6 => 219
	i32 3148237826, ; 665: GoogleGson.dll => 0xbba64c02 => 174
	i32 3157052235, ; 666: System.ServiceModel.Federation.dll => 0xbc2ccb4b => 234
	i32 3159123045, ; 667: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 668: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3170039328, ; 669: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 223
	i32 3178803400, ; 670: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 292
	i32 3184440510, ; 671: pt-BR\System.ServiceModel.Federation.resources => 0xbdceb4be => 368
	i32 3190003415, ; 672: pl\System.ServiceModel.Http.resources.dll => 0xbe2396d7 => 380
	i32 3192346100, ; 673: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 674: System.Web => 0xbe592c0c => 152
	i32 3195844289, ; 675: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 181
	i32 3204380047, ; 676: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 677: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 678: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 269
	i32 3213246214, ; 679: System.Security.Permissions.dll => 0xbf863f06 => 232
	i32 3220365878, ; 680: System.Threading => 0xbff2e236 => 147
	i32 3226221578, ; 681: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3241028803, ; 682: it\System.ServiceModel.NetNamedPipe.resources => 0xc12e2cc3 => 403
	i32 3241485502, ; 683: MauiApp2 => 0xc13524be => 0
	i32 3251039220, ; 684: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 685: Xamarin.AndroidX.CardView => 0xc235e84d => 257
	i32 3265493905, ; 686: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 687: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3277815716, ; 688: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 689: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 690: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 691: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3291006565, ; 692: fr\System.ServiceModel.NetTcp.resources => 0xc428c665 => 415
	i32 3299363146, ; 693: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 694: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 695: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 333
	i32 3306970809, ; 696: Syncfusion.Maui.Inputs => 0xc51c5eb9 => 222
	i32 3312457198, ; 697: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 201
	i32 3316684772, ; 698: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3316762378, ; 699: pl\System.ServiceModel.Primitives.resources.dll => 0xc5b1c70a => 432
	i32 3317135071, ; 700: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 267
	i32 3317144872, ; 701: System.Data => 0xc5b79d28 => 24
	i32 3340202976, ; 702: tr\System.ServiceModel.NetNamedPipe.resources => 0xc71773e0 => 409
	i32 3340431453, ; 703: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 255
	i32 3345895724, ; 704: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 296
	i32 3346324047, ; 705: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 293
	i32 3347128195, ; 706: tr\System.ServiceModel.Http.resources => 0xc7811f83 => 383
	i32 3357674450, ; 707: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 350
	i32 3358260929, ; 708: System.Text.Json => 0xc82afec1 => 241
	i32 3362336904, ; 709: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 248
	i32 3362522851, ; 710: Xamarin.AndroidX.Core => 0xc86c06e3 => 264
	i32 3366347497, ; 711: Java.Interop => 0xc8a662e9 => 167
	i32 3374879918, ; 712: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 203
	i32 3374999561, ; 713: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 297
	i32 3381016424, ; 714: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 329
	i32 3381934622, ; 715: Syncfusion.Maui.GridCommon => 0xc9943a1e => 221
	i32 3395150330, ; 716: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 717: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 718: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 268
	i32 3406727474, ; 719: zh-Hant\System.ServiceModel.Federation.resources => 0xcb0e8932 => 372
	i32 3421170118, ; 720: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 185
	i32 3428513518, ; 721: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 186
	i32 3429136800, ; 722: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 723: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 724: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 271
	i32 3445260447, ; 725: System.Formats.Tar => 0xcd5a809f => 39
	i32 3450008806, ; 726: ja\System.ServiceModel.Federation.resources => 0xcda2f4e6 => 365
	i32 3452344032, ; 727: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 209
	i32 3453180490, ; 728: ko\System.ServiceModel.Primitives.resources => 0xcdd35a4a => 431
	i32 3458724246, ; 729: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 348
	i32 3471940407, ; 730: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 731: Mono.Android => 0xcf3163e6 => 170
	i32 3482217531, ; 732: cs\System.ServiceModel.Http.resources => 0xcf8e6c3b => 373
	i32 3482673254, ; 733: ru\System.ServiceModel.NetNamedPipe.resources.dll => 0xcf956066 => 408
	i32 3483011511, ; 734: ja\System.ServiceModel.Http.resources.dll => 0xcf9a89b7 => 378
	i32 3484440000, ; 735: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 349
	i32 3485117614, ; 736: System.Text.Json.dll => 0xcfbaacae => 241
	i32 3486566296, ; 737: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 738: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 260
	i32 3509114376, ; 739: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 740: System.Security.dll => 0xd1854eb4 => 130
	i32 3521184679, ; 741: ru\System.ServiceModel.NetFramingBase.resources => 0xd1e103a7 => 395
	i32 3530912306, ; 742: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 743: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 744: Microsoft.Data.SqlClient => 0xd35114f1 => 176
	i32 3550648498, ; 745: es\System.ServiceModel.Primitives.resources.dll => 0xd3a298b2 => 427
	i32 3558305335, ; 746: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 220
	i32 3560100363, ; 747: System.Threading.Timer => 0xd432d20b => 146
	i32 3561438924, ; 748: de\System.ServiceModel.NetNamedPipe.resources.dll => 0xd4473ecc => 400
	i32 3561949811, ; 749: Azure.Core.dll => 0xd44f0a73 => 172
	i32 3570554715, ; 750: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 751: System.Runtime.Caching.dll => 0xd4d3289f => 228
	i32 3580333612, ; 752: zh-Hans\System.ServiceModel.Federation.resources => 0xd5678e2c => 371
	i32 3580758918, ; 753: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 357
	i32 3583282532, ; 754: zh-Hant\System.ServiceModel.Federation.resources.dll => 0xd5948d64 => 372
	i32 3592228221, ; 755: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 359
	i32 3597029428, ; 756: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 246
	i32 3598340787, ; 757: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605274052, ; 758: ja\System.ServiceModel.NetFramingBase.resources => 0xd6e41dc4 => 391
	i32 3605918211, ; 759: tr\System.ServiceModel.NetTcp.resources => 0xd6edf203 => 422
	i32 3608519521, ; 760: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 761: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 762: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 295
	i32 3632773286, ; 763: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xd887b8a6 => 410
	i32 3633644679, ; 764: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 250
	i32 3638233600, ; 765: ru\System.ServiceModel.Primitives.resources => 0xd8db0a00 => 434
	i32 3638274909, ; 766: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3640483271, ; 767: MauiApp2.dll => 0xd8fd5dc7 => 0
	i32 3641597786, ; 768: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 281
	i32 3643446276, ; 769: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 354
	i32 3643854240, ; 770: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 292
	i32 3645089577, ; 771: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 772: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 184
	i32 3660523487, ; 773: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3664118907, ; 774: pt-BR\System.ServiceModel.Primitives.resources => 0xda66047b => 433
	i32 3672681054, ; 775: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3675849680, ; 776: cs\System.ServiceModel.NetTcp.resources => 0xdb1903d0 => 412
	i32 3682565725, ; 777: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 256
	i32 3684561358, ; 778: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 260
	i32 3684672035, ; 779: ko\System.ServiceModel.NetFramingBase.resources.dll => 0xdb9fa223 => 392
	i32 3684902466, ; 780: ko\System.ServiceModel.Http.resources.dll => 0xdba32642 => 379
	i32 3689375977, ; 781: System.Drawing.Common => 0xdbe768e9 => 225
	i32 3690488555, ; 782: pl\System.ServiceModel.NetTcp.resources => 0xdbf862eb => 419
	i32 3700074806, ; 783: FarmacyAPI => 0xdc8aa936 => 438
	i32 3700591436, ; 784: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 200
	i32 3700866549, ; 785: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3705132617, ; 786: it\System.ServiceModel.NetFramingBase.resources => 0xdcd7d649 => 390
	i32 3706696989, ; 787: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 265
	i32 3709546624, ; 788: ru\System.ServiceModel.NetTcp.resources => 0xdd1b3080 => 421
	i32 3710160814, ; 789: pt-BR\System.ServiceModel.Http.resources.dll => 0xdd248fae => 381
	i32 3711096865, ; 790: es\System.ServiceModel.NetNamedPipe.resources.dll => 0xdd32d821 => 401
	i32 3716563718, ; 791: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 792: Xamarin.AndroidX.Annotation => 0xdda814c6 => 249
	i32 3724971120, ; 793: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 291
	i32 3732100267, ; 794: System.Net.NameResolution => 0xde7354ab => 67
	i32 3734061737, ; 795: zh-Hans\System.ServiceModel.Primitives.resources.dll => 0xde9142a9 => 436
	i32 3737834244, ; 796: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3743991391, ; 797: de\System.ServiceModel.NetTcp.resources => 0xdf28c65f => 413
	i32 3748608112, ; 798: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 799: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3751619990, ; 800: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 329
	i32 3765508441, ; 801: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 194
	i32 3786282454, ; 802: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 258
	i32 3792276235, ; 803: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 804: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 209
	i32 3802395368, ; 805: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 806: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 229
	i32 3813989096, ; 807: ko\System.ServiceModel.NetFramingBase.resources => 0xe354dae8 => 392
	i32 3818420706, ; 808: ko\System.ServiceModel.NetTcp.resources.dll => 0xe39879e2 => 418
	i32 3819260425, ; 809: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 810: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 811: System.Numerics.dll => 0xe4436460 => 83
	i32 3831382396, ; 812: es\System.ServiceModel.Primitives.resources => 0xe45e417c => 427
	i32 3841636137, ; 813: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 187
	i32 3844307129, ; 814: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 815: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3858060389, ; 816: ru\System.ServiceModel.Http.resources.dll => 0xe5f55465 => 382
	i32 3870376305, ; 817: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 818: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 819: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876601672, ; 820: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0xe7103f48 => 397
	i32 3885497537, ; 821: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 822: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 306
	i32 3888767677, ; 823: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 296
	i32 3896106733, ; 824: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 825: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 264
	i32 3901907137, ; 826: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3917319797, ; 827: System.ServiceModel.Federation => 0xe97d8e75 => 234
	i32 3920221145, ; 828: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 345
	i32 3920810846, ; 829: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 830: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 309
	i32 3928044579, ; 831: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 832: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 833: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 294
	i32 3931488234, ; 834: es\System.ServiceModel.NetFramingBase.resources.dll => 0xea55bfea => 388
	i32 3945713374, ; 835: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 836: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 837: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 252
	i32 3959773229, ; 838: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 283
	i32 3971291721, ; 839: System.ServiceModel.NetNamedPipe.dll => 0xecb51a49 => 237
	i32 4003436829, ; 840: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 841: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 251
	i32 4025784931, ; 842: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 843: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 211
	i32 4054681211, ; 844: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 845: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 846: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4080472487, ; 847: tr\System.ServiceModel.NetNamedPipe.resources.dll => 0xf33711a7 => 409
	i32 4081805871, ; 848: zh-Hans\System.ServiceModel.Primitives.resources => 0xf34b6a2f => 436
	i32 4091086043, ; 849: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 331
	i32 4094352644, ; 850: Microsoft.Maui.Essentials.dll => 0xf40add04 => 213
	i32 4099507663, ; 851: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 852: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 853: Xamarin.AndroidX.Emoji2 => 0xf479582c => 272
	i32 4101842092, ; 854: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 182
	i32 4103334216, ; 855: cs\System.ServiceModel.NetNamedPipe.resources.dll => 0xf493e948 => 399
	i32 4103439459, ; 856: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 355
	i32 4110357862, ; 857: ja\System.ServiceModel.Federation.resources.dll => 0xf4ff1566 => 365
	i32 4126470640, ; 858: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 186
	i32 4127667938, ; 859: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 860: System.AppContext => 0xf6318da0 => 6
	i32 4137271634, ; 861: Microsoft.IdentityModel.Xml.dll => 0xf699c152 => 208
	i32 4147710070, ; 862: ko\System.ServiceModel.NetNamedPipe.resources => 0xf7390876 => 405
	i32 4147896353, ; 863: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 864: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 355
	i32 4151237749, ; 865: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 866: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 867: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 868: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 869: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 870: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 288
	i32 4185676441, ; 871: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 872: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 180
	i32 4195721727, ; 873: de\System.ServiceModel.Primitives.resources.dll => 0xfa15a1ff => 426
	i32 4196529839, ; 874: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 875: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 876: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 344
	i32 4256097574, ; 877: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 265
	i32 4258378803, ; 878: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 287
	i32 4260525087, ; 879: System.Buffers => 0xfdf2741f => 7
	i32 4261754524, ; 880: ko\System.ServiceModel.Http.resources => 0xfe05369c => 379
	i32 4263231520, ; 881: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 226
	i32 4266311953, ; 882: pl\System.ServiceModel.NetFramingBase.resources.dll => 0xfe4ac111 => 393
	i32 4266814471, ; 883: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0xfe526c07 => 411
	i32 4271975918, ; 884: Microsoft.Maui.Controls.dll => 0xfea12dee => 210
	i32 4274976490, ; 885: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 886: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 288
	i32 4294763496 ; 887: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 274
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [888 x i32] [
	i32 68, ; 0
	i32 389, ; 1
	i32 406, ; 2
	i32 431, ; 3
	i32 67, ; 4
	i32 108, ; 5
	i32 414, ; 6
	i32 370, ; 7
	i32 284, ; 8
	i32 318, ; 9
	i32 48, ; 10
	i32 326, ; 11
	i32 217, ; 12
	i32 80, ; 13
	i32 335, ; 14
	i32 144, ; 15
	i32 233, ; 16
	i32 387, ; 17
	i32 216, ; 18
	i32 30, ; 19
	i32 359, ; 20
	i32 124, ; 21
	i32 399, ; 22
	i32 214, ; 23
	i32 102, ; 24
	i32 343, ; 25
	i32 189, ; 26
	i32 302, ; 27
	i32 107, ; 28
	i32 302, ; 29
	i32 138, ; 30
	i32 322, ; 31
	i32 358, ; 32
	i32 351, ; 33
	i32 77, ; 34
	i32 124, ; 35
	i32 13, ; 36
	i32 258, ; 37
	i32 219, ; 38
	i32 132, ; 39
	i32 304, ; 40
	i32 150, ; 41
	i32 440, ; 42
	i32 376, ; 43
	i32 400, ; 44
	i32 18, ; 45
	i32 386, ; 46
	i32 256, ; 47
	i32 366, ; 48
	i32 26, ; 49
	i32 188, ; 50
	i32 278, ; 51
	i32 1, ; 52
	i32 59, ; 53
	i32 42, ; 54
	i32 421, ; 55
	i32 91, ; 56
	i32 419, ; 57
	i32 261, ; 58
	i32 376, ; 59
	i32 146, ; 60
	i32 280, ; 61
	i32 277, ; 62
	i32 429, ; 63
	i32 396, ; 64
	i32 54, ; 65
	i32 190, ; 66
	i32 384, ; 67
	i32 383, ; 68
	i32 69, ; 69
	i32 380, ; 70
	i32 356, ; 71
	i32 247, ; 72
	i32 83, ; 73
	i32 334, ; 74
	i32 215, ; 75
	i32 279, ; 76
	i32 131, ; 77
	i32 55, ; 78
	i32 148, ; 79
	i32 74, ; 80
	i32 144, ; 81
	i32 62, ; 82
	i32 361, ; 83
	i32 145, ; 84
	i32 443, ; 85
	i32 164, ; 86
	i32 354, ; 87
	i32 441, ; 88
	i32 401, ; 89
	i32 262, ; 90
	i32 12, ; 91
	i32 275, ; 92
	i32 125, ; 93
	i32 151, ; 94
	i32 221, ; 95
	i32 113, ; 96
	i32 165, ; 97
	i32 163, ; 98
	i32 277, ; 99
	i32 366, ; 100
	i32 200, ; 101
	i32 290, ; 102
	i32 332, ; 103
	i32 84, ; 104
	i32 411, ; 105
	i32 197, ; 106
	i32 417, ; 107
	i32 149, ; 108
	i32 417, ; 109
	i32 322, ; 110
	i32 60, ; 111
	i32 430, ; 112
	i32 353, ; 113
	i32 191, ; 114
	i32 51, ; 115
	i32 103, ; 116
	i32 114, ; 117
	i32 175, ; 118
	i32 40, ; 119
	i32 315, ; 120
	i32 313, ; 121
	i32 120, ; 122
	i32 423, ; 123
	i32 52, ; 124
	i32 44, ; 125
	i32 119, ; 126
	i32 402, ; 127
	i32 267, ; 128
	i32 345, ; 129
	i32 435, ; 130
	i32 426, ; 131
	i32 273, ; 132
	i32 442, ; 133
	i32 81, ; 134
	i32 240, ; 135
	i32 361, ; 136
	i32 136, ; 137
	i32 309, ; 138
	i32 254, ; 139
	i32 8, ; 140
	i32 73, ; 141
	i32 154, ; 142
	i32 324, ; 143
	i32 395, ; 144
	i32 153, ; 145
	i32 92, ; 146
	i32 319, ; 147
	i32 45, ; 148
	i32 229, ; 149
	i32 323, ; 150
	i32 109, ; 151
	i32 196, ; 152
	i32 129, ; 153
	i32 438, ; 154
	i32 394, ; 155
	i32 25, ; 156
	i32 244, ; 157
	i32 72, ; 158
	i32 55, ; 159
	i32 373, ; 160
	i32 46, ; 161
	i32 351, ; 162
	i32 195, ; 163
	i32 268, ; 164
	i32 22, ; 165
	i32 282, ; 166
	i32 225, ; 167
	i32 86, ; 168
	i32 385, ; 169
	i32 237, ; 170
	i32 43, ; 171
	i32 159, ; 172
	i32 71, ; 173
	i32 295, ; 174
	i32 336, ; 175
	i32 3, ; 176
	i32 42, ; 177
	i32 63, ; 178
	i32 350, ; 179
	i32 360, ; 180
	i32 415, ; 181
	i32 16, ; 182
	i32 53, ; 183
	i32 430, ; 184
	i32 347, ; 185
	i32 428, ; 186
	i32 318, ; 187
	i32 105, ; 188
	i32 217, ; 189
	i32 323, ; 190
	i32 340, ; 191
	i32 316, ; 192
	i32 279, ; 193
	i32 235, ; 194
	i32 34, ; 195
	i32 157, ; 196
	i32 367, ; 197
	i32 85, ; 198
	i32 32, ; 199
	i32 349, ; 200
	i32 12, ; 201
	i32 51, ; 202
	i32 56, ; 203
	i32 299, ; 204
	i32 36, ; 205
	i32 370, ; 206
	i32 187, ; 207
	i32 317, ; 208
	i32 252, ; 209
	i32 35, ; 210
	i32 330, ; 211
	i32 58, ; 212
	i32 189, ; 213
	i32 286, ; 214
	i32 199, ; 215
	i32 174, ; 216
	i32 235, ; 217
	i32 17, ; 218
	i32 320, ; 219
	i32 163, ; 220
	i32 375, ; 221
	i32 352, ; 222
	i32 346, ; 223
	i32 342, ; 224
	i32 285, ; 225
	i32 193, ; 226
	i32 382, ; 227
	i32 363, ; 228
	i32 176, ; 229
	i32 242, ; 230
	i32 312, ; 231
	i32 178, ; 232
	i32 348, ; 233
	i32 152, ; 234
	i32 308, ; 235
	i32 293, ; 236
	i32 178, ; 237
	i32 254, ; 238
	i32 182, ; 239
	i32 238, ; 240
	i32 29, ; 241
	i32 52, ; 242
	i32 313, ; 243
	i32 434, ; 244
	i32 5, ; 245
	i32 328, ; 246
	i32 303, ; 247
	i32 307, ; 248
	i32 259, ; 249
	i32 324, ; 250
	i32 251, ; 251
	i32 405, ; 252
	i32 270, ; 253
	i32 393, ; 254
	i32 337, ; 255
	i32 85, ; 256
	i32 312, ; 257
	i32 61, ; 258
	i32 420, ; 259
	i32 112, ; 260
	i32 357, ; 261
	i32 440, ; 262
	i32 364, ; 263
	i32 408, ; 264
	i32 57, ; 265
	i32 374, ; 266
	i32 358, ; 267
	i32 299, ; 268
	i32 99, ; 269
	i32 239, ; 270
	i32 208, ; 271
	i32 19, ; 272
	i32 263, ; 273
	i32 111, ; 274
	i32 101, ; 275
	i32 390, ; 276
	i32 102, ; 277
	i32 326, ; 278
	i32 398, ; 279
	i32 104, ; 280
	i32 316, ; 281
	i32 71, ; 282
	i32 38, ; 283
	i32 32, ; 284
	i32 103, ; 285
	i32 73, ; 286
	i32 226, ; 287
	i32 332, ; 288
	i32 9, ; 289
	i32 123, ; 290
	i32 46, ; 291
	i32 433, ; 292
	i32 253, ; 293
	i32 435, ; 294
	i32 197, ; 295
	i32 9, ; 296
	i32 43, ; 297
	i32 4, ; 298
	i32 300, ; 299
	i32 394, ; 300
	i32 201, ; 301
	i32 190, ; 302
	i32 356, ; 303
	i32 31, ; 304
	i32 137, ; 305
	i32 92, ; 306
	i32 93, ; 307
	i32 236, ; 308
	i32 228, ; 309
	i32 49, ; 310
	i32 140, ; 311
	i32 112, ; 312
	i32 139, ; 313
	i32 173, ; 314
	i32 269, ; 315
	i32 238, ; 316
	i32 115, ; 317
	i32 414, ; 318
	i32 317, ; 319
	i32 156, ; 320
	i32 403, ; 321
	i32 76, ; 322
	i32 79, ; 323
	i32 289, ; 324
	i32 37, ; 325
	i32 311, ; 326
	i32 205, ; 327
	i32 204, ; 328
	i32 425, ; 329
	i32 273, ; 330
	i32 266, ; 331
	i32 64, ; 332
	i32 137, ; 333
	i32 15, ; 334
	i32 222, ; 335
	i32 377, ; 336
	i32 116, ; 337
	i32 305, ; 338
	i32 314, ; 339
	i32 261, ; 340
	i32 48, ; 341
	i32 70, ; 342
	i32 80, ; 343
	i32 126, ; 344
	i32 177, ; 345
	i32 94, ; 346
	i32 121, ; 347
	i32 321, ; 348
	i32 26, ; 349
	i32 282, ; 350
	i32 97, ; 351
	i32 28, ; 352
	i32 257, ; 353
	i32 364, ; 354
	i32 424, ; 355
	i32 327, ; 356
	i32 148, ; 357
	i32 168, ; 358
	i32 4, ; 359
	i32 98, ; 360
	i32 397, ; 361
	i32 33, ; 362
	i32 93, ; 363
	i32 304, ; 364
	i32 391, ; 365
	i32 191, ; 366
	i32 21, ; 367
	i32 41, ; 368
	i32 169, ; 369
	i32 343, ; 370
	i32 275, ; 371
	i32 369, ; 372
	i32 335, ; 373
	i32 198, ; 374
	i32 175, ; 375
	i32 420, ; 376
	i32 289, ; 377
	i32 320, ; 378
	i32 314, ; 379
	i32 294, ; 380
	i32 2, ; 381
	i32 371, ; 382
	i32 134, ; 383
	i32 111, ; 384
	i32 406, ; 385
	i32 192, ; 386
	i32 242, ; 387
	i32 381, ; 388
	i32 244, ; 389
	i32 352, ; 390
	i32 423, ; 391
	i32 58, ; 392
	i32 95, ; 393
	i32 204, ; 394
	i32 334, ; 395
	i32 39, ; 396
	i32 412, ; 397
	i32 255, ; 398
	i32 25, ; 399
	i32 94, ; 400
	i32 328, ; 401
	i32 89, ; 402
	i32 99, ; 403
	i32 10, ; 404
	i32 416, ; 405
	i32 239, ; 406
	i32 369, ; 407
	i32 428, ; 408
	i32 87, ; 409
	i32 388, ; 410
	i32 339, ; 411
	i32 100, ; 412
	i32 418, ; 413
	i32 362, ; 414
	i32 301, ; 415
	i32 183, ; 416
	i32 422, ; 417
	i32 321, ; 418
	i32 246, ; 419
	i32 206, ; 420
	i32 425, ; 421
	i32 331, ; 422
	i32 7, ; 423
	i32 286, ; 424
	i32 243, ; 425
	i32 199, ; 426
	i32 88, ; 427
	i32 185, ; 428
	i32 281, ; 429
	i32 153, ; 430
	i32 330, ; 431
	i32 33, ; 432
	i32 116, ; 433
	i32 231, ; 434
	i32 236, ; 435
	i32 82, ; 436
	i32 207, ; 437
	i32 402, ; 438
	i32 20, ; 439
	i32 367, ; 440
	i32 11, ; 441
	i32 161, ; 442
	i32 3, ; 443
	i32 212, ; 444
	i32 338, ; 445
	i32 195, ; 446
	i32 429, ; 447
	i32 192, ; 448
	i32 84, ; 449
	i32 325, ; 450
	i32 64, ; 451
	i32 194, ; 452
	i32 340, ; 453
	i32 308, ; 454
	i32 142, ; 455
	i32 386, ; 456
	i32 413, ; 457
	i32 290, ; 458
	i32 156, ; 459
	i32 177, ; 460
	i32 203, ; 461
	i32 41, ; 462
	i32 117, ; 463
	i32 184, ; 464
	i32 245, ; 465
	i32 297, ; 466
	i32 437, ; 467
	i32 131, ; 468
	i32 75, ; 469
	i32 66, ; 470
	i32 407, ; 471
	i32 344, ; 472
	i32 171, ; 473
	i32 360, ; 474
	i32 249, ; 475
	i32 142, ; 476
	i32 398, ; 477
	i32 106, ; 478
	i32 150, ; 479
	i32 207, ; 480
	i32 70, ; 481
	i32 218, ; 482
	i32 338, ; 483
	i32 441, ; 484
	i32 155, ; 485
	i32 202, ; 486
	i32 183, ; 487
	i32 121, ; 488
	i32 127, ; 489
	i32 375, ; 490
	i32 339, ; 491
	i32 151, ; 492
	i32 272, ; 493
	i32 140, ; 494
	i32 259, ; 495
	i32 336, ; 496
	i32 20, ; 497
	i32 14, ; 498
	i32 135, ; 499
	i32 75, ; 500
	i32 59, ; 501
	i32 262, ; 502
	i32 166, ; 503
	i32 167, ; 504
	i32 210, ; 505
	i32 15, ; 506
	i32 74, ; 507
	i32 6, ; 508
	i32 407, ; 509
	i32 23, ; 510
	i32 342, ; 511
	i32 387, ; 512
	i32 284, ; 513
	i32 243, ; 514
	i32 384, ; 515
	i32 91, ; 516
	i32 337, ; 517
	i32 1, ; 518
	i32 136, ; 519
	i32 396, ; 520
	i32 341, ; 521
	i32 285, ; 522
	i32 307, ; 523
	i32 134, ; 524
	i32 69, ; 525
	i32 145, ; 526
	i32 346, ; 527
	i32 325, ; 528
	i32 276, ; 529
	i32 193, ; 530
	i32 88, ; 531
	i32 96, ; 532
	i32 266, ; 533
	i32 271, ; 534
	i32 341, ; 535
	i32 31, ; 536
	i32 227, ; 537
	i32 45, ; 538
	i32 280, ; 539
	i32 179, ; 540
	i32 202, ; 541
	i32 172, ; 542
	i32 410, ; 543
	i32 362, ; 544
	i32 230, ; 545
	i32 245, ; 546
	i32 109, ; 547
	i32 157, ; 548
	i32 35, ; 549
	i32 22, ; 550
	i32 173, ; 551
	i32 437, ; 552
	i32 114, ; 553
	i32 57, ; 554
	i32 389, ; 555
	i32 442, ; 556
	i32 305, ; 557
	i32 439, ; 558
	i32 143, ; 559
	i32 118, ; 560
	i32 120, ; 561
	i32 110, ; 562
	i32 247, ; 563
	i32 138, ; 564
	i32 253, ; 565
	i32 198, ; 566
	i32 327, ; 567
	i32 416, ; 568
	i32 54, ; 569
	i32 220, ; 570
	i32 105, ; 571
	i32 347, ; 572
	i32 240, ; 573
	i32 215, ; 574
	i32 180, ; 575
	i32 424, ; 576
	i32 211, ; 577
	i32 212, ; 578
	i32 133, ; 579
	i32 319, ; 580
	i32 310, ; 581
	i32 298, ; 582
	i32 353, ; 583
	i32 276, ; 584
	i32 216, ; 585
	i32 214, ; 586
	i32 158, ; 587
	i32 263, ; 588
	i32 162, ; 589
	i32 132, ; 590
	i32 298, ; 591
	i32 160, ; 592
	i32 287, ; 593
	i32 232, ; 594
	i32 179, ; 595
	i32 139, ; 596
	i32 310, ; 597
	i32 385, ; 598
	i32 306, ; 599
	i32 168, ; 600
	i32 213, ; 601
	i32 230, ; 602
	i32 218, ; 603
	i32 248, ; 604
	i32 363, ; 605
	i32 315, ; 606
	i32 40, ; 607
	i32 274, ; 608
	i32 81, ; 609
	i32 377, ; 610
	i32 56, ; 611
	i32 37, ; 612
	i32 97, ; 613
	i32 165, ; 614
	i32 171, ; 615
	i32 311, ; 616
	i32 82, ; 617
	i32 250, ; 618
	i32 231, ; 619
	i32 368, ; 620
	i32 98, ; 621
	i32 30, ; 622
	i32 158, ; 623
	i32 224, ; 624
	i32 432, ; 625
	i32 374, ; 626
	i32 18, ; 627
	i32 127, ; 628
	i32 196, ; 629
	i32 119, ; 630
	i32 270, ; 631
	i32 404, ; 632
	i32 301, ; 633
	i32 283, ; 634
	i32 224, ; 635
	i32 303, ; 636
	i32 188, ; 637
	i32 378, ; 638
	i32 164, ; 639
	i32 278, ; 640
	i32 227, ; 641
	i32 404, ; 642
	i32 443, ; 643
	i32 333, ; 644
	i32 300, ; 645
	i32 291, ; 646
	i32 169, ; 647
	i32 16, ; 648
	i32 181, ; 649
	i32 143, ; 650
	i32 206, ; 651
	i32 125, ; 652
	i32 118, ; 653
	i32 38, ; 654
	i32 115, ; 655
	i32 47, ; 656
	i32 233, ; 657
	i32 205, ; 658
	i32 141, ; 659
	i32 117, ; 660
	i32 439, ; 661
	i32 223, ; 662
	i32 34, ; 663
	i32 219, ; 664
	i32 174, ; 665
	i32 234, ; 666
	i32 95, ; 667
	i32 53, ; 668
	i32 223, ; 669
	i32 292, ; 670
	i32 368, ; 671
	i32 380, ; 672
	i32 129, ; 673
	i32 152, ; 674
	i32 181, ; 675
	i32 24, ; 676
	i32 160, ; 677
	i32 269, ; 678
	i32 232, ; 679
	i32 147, ; 680
	i32 104, ; 681
	i32 403, ; 682
	i32 0, ; 683
	i32 89, ; 684
	i32 257, ; 685
	i32 60, ; 686
	i32 141, ; 687
	i32 100, ; 688
	i32 5, ; 689
	i32 13, ; 690
	i32 122, ; 691
	i32 415, ; 692
	i32 135, ; 693
	i32 28, ; 694
	i32 333, ; 695
	i32 222, ; 696
	i32 201, ; 697
	i32 72, ; 698
	i32 432, ; 699
	i32 267, ; 700
	i32 24, ; 701
	i32 409, ; 702
	i32 255, ; 703
	i32 296, ; 704
	i32 293, ; 705
	i32 383, ; 706
	i32 350, ; 707
	i32 241, ; 708
	i32 248, ; 709
	i32 264, ; 710
	i32 167, ; 711
	i32 203, ; 712
	i32 297, ; 713
	i32 329, ; 714
	i32 221, ; 715
	i32 101, ; 716
	i32 123, ; 717
	i32 268, ; 718
	i32 372, ; 719
	i32 185, ; 720
	i32 186, ; 721
	i32 162, ; 722
	i32 166, ; 723
	i32 271, ; 724
	i32 39, ; 725
	i32 365, ; 726
	i32 209, ; 727
	i32 431, ; 728
	i32 348, ; 729
	i32 17, ; 730
	i32 170, ; 731
	i32 373, ; 732
	i32 408, ; 733
	i32 378, ; 734
	i32 349, ; 735
	i32 241, ; 736
	i32 149, ; 737
	i32 260, ; 738
	i32 154, ; 739
	i32 130, ; 740
	i32 395, ; 741
	i32 19, ; 742
	i32 65, ; 743
	i32 176, ; 744
	i32 427, ; 745
	i32 220, ; 746
	i32 146, ; 747
	i32 400, ; 748
	i32 172, ; 749
	i32 47, ; 750
	i32 228, ; 751
	i32 371, ; 752
	i32 357, ; 753
	i32 372, ; 754
	i32 359, ; 755
	i32 246, ; 756
	i32 79, ; 757
	i32 391, ; 758
	i32 422, ; 759
	i32 61, ; 760
	i32 106, ; 761
	i32 295, ; 762
	i32 410, ; 763
	i32 250, ; 764
	i32 434, ; 765
	i32 49, ; 766
	i32 0, ; 767
	i32 281, ; 768
	i32 354, ; 769
	i32 292, ; 770
	i32 14, ; 771
	i32 184, ; 772
	i32 68, ; 773
	i32 433, ; 774
	i32 170, ; 775
	i32 412, ; 776
	i32 256, ; 777
	i32 260, ; 778
	i32 392, ; 779
	i32 379, ; 780
	i32 225, ; 781
	i32 419, ; 782
	i32 438, ; 783
	i32 200, ; 784
	i32 78, ; 785
	i32 390, ; 786
	i32 265, ; 787
	i32 421, ; 788
	i32 381, ; 789
	i32 401, ; 790
	i32 108, ; 791
	i32 249, ; 792
	i32 291, ; 793
	i32 67, ; 794
	i32 436, ; 795
	i32 63, ; 796
	i32 413, ; 797
	i32 27, ; 798
	i32 159, ; 799
	i32 329, ; 800
	i32 194, ; 801
	i32 258, ; 802
	i32 10, ; 803
	i32 209, ; 804
	i32 11, ; 805
	i32 229, ; 806
	i32 392, ; 807
	i32 418, ; 808
	i32 78, ; 809
	i32 126, ; 810
	i32 83, ; 811
	i32 427, ; 812
	i32 187, ; 813
	i32 66, ; 814
	i32 107, ; 815
	i32 382, ; 816
	i32 65, ; 817
	i32 128, ; 818
	i32 122, ; 819
	i32 397, ; 820
	i32 77, ; 821
	i32 306, ; 822
	i32 296, ; 823
	i32 8, ; 824
	i32 264, ; 825
	i32 2, ; 826
	i32 234, ; 827
	i32 345, ; 828
	i32 44, ; 829
	i32 309, ; 830
	i32 155, ; 831
	i32 128, ; 832
	i32 294, ; 833
	i32 388, ; 834
	i32 23, ; 835
	i32 133, ; 836
	i32 252, ; 837
	i32 283, ; 838
	i32 237, ; 839
	i32 29, ; 840
	i32 251, ; 841
	i32 62, ; 842
	i32 211, ; 843
	i32 90, ; 844
	i32 87, ; 845
	i32 147, ; 846
	i32 409, ; 847
	i32 436, ; 848
	i32 331, ; 849
	i32 213, ; 850
	i32 36, ; 851
	i32 86, ; 852
	i32 272, ; 853
	i32 182, ; 854
	i32 399, ; 855
	i32 355, ; 856
	i32 365, ; 857
	i32 186, ; 858
	i32 50, ; 859
	i32 6, ; 860
	i32 208, ; 861
	i32 405, ; 862
	i32 90, ; 863
	i32 355, ; 864
	i32 21, ; 865
	i32 161, ; 866
	i32 96, ; 867
	i32 50, ; 868
	i32 113, ; 869
	i32 288, ; 870
	i32 130, ; 871
	i32 180, ; 872
	i32 426, ; 873
	i32 76, ; 874
	i32 27, ; 875
	i32 344, ; 876
	i32 265, ; 877
	i32 287, ; 878
	i32 7, ; 879
	i32 379, ; 880
	i32 226, ; 881
	i32 393, ; 882
	i32 411, ; 883
	i32 210, ; 884
	i32 110, ; 885
	i32 288, ; 886
	i32 274 ; 887
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
