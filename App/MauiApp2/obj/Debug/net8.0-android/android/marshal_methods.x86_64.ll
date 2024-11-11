; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [444 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [888 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 271
	i64 44359872337921045, ; 1: System.ServiceModel.NetTcp => 0x9d9911a0fbc415 => 238
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 197
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 170
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 213
	i64 176210343261064415, ; 5: System.ServiceModel.NetNamedPipe.dll => 0x272065fa3d34cdf => 237
	i64 196720943101637631, ; 6: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 7: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 258
	i64 229794953483747371, ; 8: System.ValueTuple.dll => 0x330654aed93802b => 150
	i64 232391251801502327, ; 9: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 299
	i64 233856603507324090, ; 10: System.ServiceModel.Federation.dll => 0x33ed357846ef4ba => 234
	i64 236512707967922597, ; 11: pt-BR\System.ServiceModel.Federation.resources.dll => 0x348430e074b31a5 => 368
	i64 295915112840604065, ; 12: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 302
	i64 316157742385208084, ; 13: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 265
	i64 329079579674636315, ; 14: pl\System.ServiceModel.Federation.resources => 0x49120225957701b => 367
	i64 350667413455104241, ; 15: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 354178770117062970, ; 16: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0x4ea4bb703cff13a => 196
	i64 368310478436231069, ; 17: tr\System.ServiceModel.NetFramingBase.resources => 0x51c806dc23ee79d => 396
	i64 422779754995088667, ; 18: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 19: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 301
	i64 439161221770931646, ; 20: System.ServiceModel.Security => 0x61836cdeec86dbe => 240
	i64 535107122908063503, ; 21: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 194
	i64 560278790331054453, ; 22: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 571911706346497508, ; 23: zh-Hant\System.ServiceModel.Primitives.resources => 0x7efd6aab3aba5e4 => 437
	i64 634308326490598313, ; 24: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 284
	i64 649145001856603771, ; 25: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 26: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 185
	i64 670564002081277297, ; 27: Microsoft.Identity.Client.dll => 0x94e526837380571 => 198
	i64 702024105029695270, ; 28: System.Drawing.Common => 0x9be17343c0e7726 => 225
	i64 703889276121812442, ; 29: System.ServiceModel.Duplex.dll => 0x9c4b79138728dda => 233
	i64 740849446214830010, ; 30: pl\System.ServiceModel.Federation.resources.dll => 0xa4806a569ae07ba => 367
	i64 750875890346172408, ; 31: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 144
	i64 798450721097591769, ; 32: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 259
	i64 799765834175365804, ; 33: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 34: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 338
	i64 808711970685479400, ; 35: ja\System.ServiceModel.Federation.resources.dll => 0xb391f40aa5069e8 => 365
	i64 872800313462103108, ; 36: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 270
	i64 895210737996778430, ; 37: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 285
	i64 937459790420187032, ; 38: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 215
	i64 940822596282819491, ; 39: System.Transactions => 0xd0e792aa81923a3 => 149
	i64 960778385402502048, ; 40: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 41: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1060858978308751610, ; 42: Azure.Core.dll => 0xeb8ed9ebee080fa => 172
	i64 1106195547578177592, ; 43: ja\System.ServiceModel.NetNamedPipe.resources => 0xf59fefd59841838 => 404
	i64 1120440138749646132, ; 44: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 314
	i64 1182127179608908528, ; 45: fr\System.ServiceModel.NetTcp.resources.dll => 0x1067c2681bec62f0 => 415
	i64 1268860745194512059, ; 46: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 47: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 180
	i64 1301626418029409250, ; 48: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 49: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 254
	i64 1320654197929453943, ; 50: Microsoft.IdentityModel.Tokens.Saml => 0x1253e7fef2b6a977 => 207
	i64 1350488117176064860, ; 51: ja\System.ServiceModel.NetTcp.resources => 0x12bde5c991aa5b5c => 417
	i64 1369545283391376210, ; 52: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 292
	i64 1394216470480432226, ; 53: ja\System.ServiceModel.Http.resources.dll => 0x1359407e36fc2c62 => 378
	i64 1404195534211153682, ; 54: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1417008720549124638, ; 55: zh-Hans\System.ServiceModel.NetTcp.resources.dll => 0x13aa39ec77f61a1e => 423
	i64 1425944114962822056, ; 56: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 57: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 58: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 210
	i64 1492954217099365037, ; 59: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 60: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 169
	i64 1537168428375924959, ; 61: System.Threading.Thread.dll => 0x15551e8a954ae0df => 144
	i64 1551412839480201446, ; 62: it\System.ServiceModel.Primitives.resources.dll => 0x1587b9c1fd3290e6 => 429
	i64 1576750169145655260, ; 63: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 313
	i64 1617235198659916586, ; 64: ko\System.ServiceModel.Primitives.resources => 0x167192d83e61f32a => 431
	i64 1624659445732251991, ; 65: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 253
	i64 1628611045998245443, ; 66: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 288
	i64 1636321030536304333, ; 67: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 278
	i64 1651621767716022336, ; 68: it\System.ServiceModel.Http.resources.dll => 0x16ebbd3f40042840 => 377
	i64 1651782184287836205, ; 69: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 70: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1680559570755486426, ; 71: tr\System.ServiceModel.Http.resources => 0x17528c068ec382da => 383
	i64 1682513316613008342, ; 72: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1725268389376441734, ; 73: Swashbuckle.AspNetCore.SwaggerUI.dll => 0x17f1627592fe3d86 => 439
	i64 1731380447121279447, ; 74: Newtonsoft.Json => 0x18071957e9b889d7 => 217
	i64 1735388228521408345, ; 75: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 76: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1764797081625604034, ; 77: fr\System.ServiceModel.Federation.resources => 0x187dd1986ef0afc2 => 363
	i64 1767386781656293639, ; 78: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 79: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 252
	i64 1813473727062752547, ; 80: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0x192ac0bf1f143d23 => 411
	i64 1825687700144851180, ; 81: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 82: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 332
	i64 1836611346387731153, ; 83: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 299
	i64 1854145951182283680, ; 84: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 85: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 175
	i64 1875417405349196092, ; 86: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 87: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 249
	i64 1881198190668717030, ; 88: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 354
	i64 1897575647115118287, ; 89: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 301
	i64 1920760634179481754, ; 90: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 211
	i64 1965636032501521710, ; 91: ja\System.ServiceModel.NetTcp.resources.dll => 0x1b47578ea2f61d2e => 417
	i64 1972385128188460614, ; 92: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1980725144359361681, ; 93: ru\System.ServiceModel.Federation.resources => 0x1b7cf30643395c91 => 369
	i64 1981742497975770890, ; 94: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 286
	i64 2040001226662520565, ; 95: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 141
	i64 2059469483644638515, ; 96: ru\System.ServiceModel.NetTcp.resources => 0x1c94b49576655533 => 421
	i64 2062890601515140263, ; 97: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 140
	i64 2064708342624596306, ; 98: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 322
	i64 2080945842184875448, ; 99: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 100: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 101: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 140
	i64 2133195048986300728, ; 102: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 217
	i64 2165310824878145998, ; 103: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 246
	i64 2165725771938924357, ; 104: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 256
	i64 2179947168683658163, ; 105: de\System.ServiceModel.NetNamedPipe.resources => 0x1e40ba666a820bb3 => 400
	i64 2187820665329845162, ; 106: it\System.ServiceModel.NetTcp.resources => 0x1e5cb34db53e83aa => 416
	i64 2192948757939169934, ; 107: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 178
	i64 2200176636225660136, ; 108: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 193
	i64 2262844636196693701, ; 109: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 270
	i64 2284054589560053283, ; 110: ru\System.ServiceModel.Primitives.resources => 0x1fb2978c3a53de23 => 434
	i64 2287834202362508563, ; 111: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 112: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 113: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 298
	i64 2309964453332250390, ; 114: de\System.ServiceModel.NetFramingBase.resources => 0x200ea46e7ca5ef16 => 387
	i64 2315304989185124968, ; 115: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 116: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 204
	i64 2329709569556905518, ; 117: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 281
	i64 2334065076924874282, ; 118: pl\System.ServiceModel.Http.resources => 0x206443d230c07e2a => 380
	i64 2335503487726329082, ; 119: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 120: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 121: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 263
	i64 2479423007379663237, ; 122: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 308
	i64 2497223385847772520, ; 123: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 124: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 247
	i64 2554797818648757682, ; 125: System.Runtime.Caching.dll => 0x23747714858085b2 => 228
	i64 2592350477072141967, ; 126: System.Xml.dll => 0x23f9e10627330e8f => 162
	i64 2602673633151553063, ; 127: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 353
	i64 2612152650457191105, ; 128: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 206
	i64 2624866290265602282, ; 129: mscorlib.dll => 0x246d65fbde2db8ea => 165
	i64 2626312880454308354, ; 130: de\System.ServiceModel.NetTcp.resources.dll => 0x247289a664831202 => 413
	i64 2632269733008246987, ; 131: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 132: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 186
	i64 2662981627730767622, ; 133: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 328
	i64 2706075432581334785, ; 134: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 135: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 136: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 303
	i64 2789714023057451704, ; 137: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 201
	i64 2815524396660695947, ; 138: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 139: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 224
	i64 2895129759130297543, ; 140: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 333
	i64 2923871038697555247, ; 141: Jsr305Binding => 0x2893ad37e69ec52f => 315
	i64 2981042564486070135, ; 142: cs\System.ServiceModel.Federation.resources.dll => 0x295eca6b0c82ff77 => 360
	i64 2993444100528724881, ; 143: Microsoft.OpenApi => 0x298ad98cab00db91 => 442
	i64 2996449450746491361, ; 144: tr\System.ServiceModel.Primitives.resources.dll => 0x299586e64b28b1e1 => 435
	i64 3017136373564924869, ; 145: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 146: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 314
	i64 3047674380219621959, ; 147: es\System.ServiceModel.NetTcp.resources.dll => 0x2a4b83b3980ca247 => 414
	i64 3075974917408215435, ; 148: zh-Hant\System.ServiceModel.Http.resources => 0x2ab00ee3e220d18b => 385
	i64 3106852385031680087, ; 149: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 150: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 151: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3238539556702659506, ; 152: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 216
	i64 3281594302220646930, ; 153: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 154: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 279
	i64 3303437397778967116, ; 155: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 250
	i64 3311221304742556517, ; 156: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 157: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328758490895923850, ; 158: ja\System.ServiceModel.Federation.resources => 0x2e32203600eaba8a => 365
	i64 3328853167529574890, ; 159: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 160: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 325
	i64 3402534845034375023, ; 161: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 226
	i64 3429672777697402584, ; 162: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 213
	i64 3434643982246424963, ; 163: it\System.ServiceModel.NetFramingBase.resources.dll => 0x2faa4e811bbb3183 => 390
	i64 3437845325506641314, ; 164: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 165: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 305
	i64 3494946837667399002, ; 166: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 183
	i64 3508450208084372758, ; 167: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 168: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 304
	i64 3523004241079211829, ; 169: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 182
	i64 3531994851595924923, ; 170: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 171: System.Private.CoreLib.dll => 0x31480e226177735f => 171
	i64 3552918255982455594, ; 172: ko\System.ServiceModel.NetTcp.resources => 0x314e805463d5ab2a => 418
	i64 3561390990477819316, ; 173: pl\System.ServiceModel.NetFramingBase.resources => 0x316c9a3c9db4fdb4 => 393
	i64 3567343442040498961, ; 174: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 348
	i64 3571415421602489686, ; 175: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 176: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 184
	i64 3647754201059316852, ; 177: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 155
	i64 3655542548057982301, ; 178: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 183
	i64 3656732466067224761, ; 179: Microsoft.IdentityModel.Protocols.WsTrust => 0x32bf52cdbe9338b9 => 205
	i64 3659371656528649588, ; 180: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 244
	i64 3716579019761409177, ; 181: netstandard.dll => 0x3393f0ed5c8c5c99 => 166
	i64 3724788330609220757, ; 182: it\System.ServiceModel.NetNamedPipe.resources => 0x33b11b407d7b9c95 => 403
	i64 3727469159507183293, ; 183: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 297
	i64 3772598417116884899, ; 184: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 271
	i64 3845599895817604529, ; 185: zh-Hant\System.ServiceModel.NetFramingBase.resources.dll => 0x355e50bafa7ccdb1 => 398
	i64 3847323185292082162, ; 186: fr\System.ServiceModel.Http.resources => 0x3564700d93757bf2 => 376
	i64 3869221888984012293, ; 187: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 191
	i64 3869649043256705283, ; 188: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 189: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 211
	i64 3893942950894553177, ; 190: es\System.ServiceModel.Primitives.resources.dll => 0x360a107b9bb4c859 => 427
	i64 3919223565570527920, ; 191: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 192: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 193: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 194: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 160
	i64 4009997192427317104, ; 195: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4070326265757318011, ; 196: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 329
	i64 4073500526318903918, ; 197: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 198: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 209
	i64 4120493066591692148, ; 199: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 359
	i64 4148881117810174540, ; 200: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 201: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 202: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 145
	i64 4168469861834746866, ; 203: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 204: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 205: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 265
	i64 4205801962323029395, ; 206: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4234650624138384307, ; 207: tr\System.ServiceModel.Federation.resources => 0x3ac4804e77a793b3 => 370
	i64 4235503420553921860, ; 208: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 209: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4351295671783217625, ; 210: cs\System.ServiceModel.Http.resources => 0x3c62e85bfd5559d9 => 373
	i64 4360412976914417659, ; 211: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 354
	i64 4373617458794931033, ; 212: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 213: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4454584262273369104, ; 214: pl\System.ServiceModel.Primitives.resources.dll => 0x3dd1dcc8fed98410 => 432
	i64 4477672992252076438, ; 215: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 151
	i64 4484706122338676047, ; 216: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 217: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 179
	i64 4533124835995628778, ; 218: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4560453051006720631, ; 219: it\System.ServiceModel.NetFramingBase.resources => 0x3f49fbe3381a1a77 => 390
	i64 4612482779465751747, ; 220: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 178
	i64 4616101634287018717, ; 221: pt-BR\System.ServiceModel.Primitives.resources => 0x400faffaaec722dd => 433
	i64 4630786218465755599, ; 222: pt-BR\System.ServiceModel.NetFramingBase.resources.dll => 0x4043db87de6d01cf => 394
	i64 4636684751163556186, ; 223: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 309
	i64 4657212095206026001, ; 224: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 190
	i64 4672453897036726049, ; 225: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 226: System.Xml.XmlSerializer => 0x417501590542f358 => 161
	i64 4743821336939966868, ; 227: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 228: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 283
	i64 4794310189461587505, ; 229: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 247
	i64 4795410492532947900, ; 230: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 304
	i64 4809057822547766521, ; 231: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 232: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4815998809053730120, ; 233: Swashbuckle.AspNetCore.Swagger => 0x42d5dd668c5a1548 => 441
	i64 4853321196694829351, ; 234: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 235: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 344
	i64 4913488914438867428, ; 236: zh-Hans\System.ServiceModel.Federation.resources.dll => 0x4430382288f2c9e4 => 371
	i64 4953714692329509532, ; 237: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 352
	i64 5055365687667823624, ; 238: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 248
	i64 5071398478759053283, ; 239: ja\System.ServiceModel.Primitives.resources => 0x46613a0c08e3c7e3 => 430
	i64 5081566143765835342, ; 240: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 241: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 242: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5124798205776099597, ; 243: zh-Hant\System.ServiceModel.Primitives.resources.dll => 0x471ef0d0d8d7f90d => 437
	i64 5178715688604046882, ; 244: ru\System.ServiceModel.Http.resources => 0x47de7e7b13fc9622 => 382
	i64 5182934613077526976, ; 245: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 246: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 290
	i64 5244375036463807528, ; 247: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 248: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 249: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 250: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 282
	i64 5290786973231294105, ; 251: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5331517626801526305, ; 252: es\System.ServiceModel.NetFramingBase.resources.dll => 0x49fd5b08b33d1621 => 388
	i64 5332349484191854038, ; 253: Syncfusion.Maui.Core.dll => 0x4a004f9a977e2dd6 => 219
	i64 5376510917114486089, ; 254: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 308
	i64 5408338804355907810, ; 255: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 306
	i64 5423376490970181369, ; 256: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 257: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5445845718793242646, ; 258: de\System.ServiceModel.Primitives.resources => 0x4b9387d3f240c816 => 426
	i64 5446034149219586269, ; 259: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 260: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 261
	i64 5457765010617926378, ; 261: System.Xml.Serialization => 0x4bbde05c557002ea => 156
	i64 5471532531798518949, ; 262: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 352
	i64 5488847537322884930, ; 263: System.Windows.Extensions => 0x4c2c4dc108687f42 => 242
	i64 5507995362134886206, ; 264: System.Core.dll => 0x4c705499688c873e => 21
	i64 5521052132552059825, ; 265: Syncfusion.Maui.Inputs => 0x4c9eb7a9ab2dabb1 => 222
	i64 5522859530602327440, ; 266: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 355
	i64 5527431512186326818, ; 267: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 268: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 269: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 270: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 251
	i64 5591791169662171124, ; 271: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 272: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5650370239627215726, ; 273: System.ServiceModel.Security.dll => 0x4e6a25cbc66b436e => 240
	i64 5692067934154308417, ; 274: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 311
	i64 5724799082821825042, ; 275: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 274
	i64 5757522595884336624, ; 276: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 260
	i64 5783556987928984683, ; 277: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5816864004925684276, ; 278: fr\System.ServiceModel.Primitives.resources => 0x50b9a6fe5059fa34 => 428
	i64 5896680224035167651, ; 279: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 280
	i64 5938631692456801490, ; 280: tr\System.ServiceModel.NetTcp.resources => 0x526a420f60c3b4d2 => 422
	i64 5952455131197516416, ; 281: cs\System.ServiceModel.Federation.resources => 0x529b5e67847aaa80 => 360
	i64 5959344983920014087, ; 282: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 300
	i64 5975693538080295492, ; 283: pt-BR\System.ServiceModel.NetTcp.resources => 0x52eded9cbfdf8a44 => 420
	i64 5979151488806146654, ; 284: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 285: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6010431355156821277, ; 286: zh-Hant\System.ServiceModel.NetNamedPipe.resources.dll => 0x536957790efdf51d => 411
	i64 6010974535988770325, ; 287: Microsoft.Extensions.Diagnostics.dll => 0x536b457e33877615 => 188
	i64 6072574083591391795, ; 288: Syncfusion.Maui.Inputs.dll => 0x54461df484b54a33 => 222
	i64 6102788177522843259, ; 289: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 300
	i64 6184291411622536774, ; 290: fr\System.ServiceModel.NetTcp.resources => 0x55d30445e942a646 => 415
	i64 6200764641006662125, ; 291: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 349
	i64 6222399776351216807, ; 292: System.Text.Json.dll => 0x565a67a0ffe264a7 => 241
	i64 6251069312384999852, ; 293: System.Transactions.Local => 0x56c0426b870da1ac => 148
	i64 6269197312359843633, ; 294: de\System.ServiceModel.NetNamedPipe.resources.dll => 0x5700a9bd6e0ac731 => 400
	i64 6278736998281604212, ; 295: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 296: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6288213823986309268, ; 297: ko\System.ServiceModel.NetFramingBase.resources => 0x5744392812679894 => 392
	i64 6300676701234028427, ; 298: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 332
	i64 6319713645133255417, ; 299: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 284
	i64 6357457916754632952, ; 300: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 443
	i64 6401687960814735282, ; 301: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 281
	i64 6416451242169474896, ; 302: ko\System.ServiceModel.NetNamedPipe.resources.dll => 0x590bd068b0201f50 => 405
	i64 6471714727257221498, ; 303: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 333
	i64 6478287442656530074, ; 304: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 337
	i64 6504860066809920875, ; 305: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 256
	i64 6506916921333231814, ; 306: ko\System.ServiceModel.Http.resources => 0x5a4d3676ff0bb0c6 => 379
	i64 6548213210057960872, ; 307: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 267
	i64 6557084851308642443, ; 308: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 312
	i64 6560151584539558821, ; 309: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 195
	i64 6589202984700901502, ; 310: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 317
	i64 6591971792923354531, ; 311: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 282
	i64 6617685658146568858, ; 312: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6698352322976258428, ; 313: cs\System.ServiceModel.NetNamedPipe.resources.dll => 0x5cf553f2c769997c => 399
	i64 6703725107163354527, ; 314: tr\System.ServiceModel.NetNamedPipe.resources => 0x5d086a779456d59f => 409
	i64 6713440830605852118, ; 315: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 316: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 317: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 345
	i64 6750700927172492327, ; 318: it\System.ServiceModel.Http.resources => 0x5daf4eb9fd043c27 => 377
	i64 6754049461663216379, ; 319: ja\System.ServiceModel.Primitives.resources.dll => 0x5dbb34336ddab2fb => 430
	i64 6772837112740759457, ; 320: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 321: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6790105737542025891, ; 322: it\System.ServiceModel.Federation.resources.dll => 0x5e3b4d315988c2a3 => 364
	i64 6798329586179154312, ; 323: System.Windows => 0x5e5884bd523ca188 => 153
	i64 6814185388980153342, ; 324: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 157
	i64 6829746631661060873, ; 325: pt-BR\System.ServiceModel.NetTcp.resources.dll => 0x5ec822603e140309 => 420
	i64 6876862101832370452, ; 326: System.Xml.Linq => 0x5f6f85a57d108914 => 154
	i64 6894844156784520562, ; 327: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6918152283207106586, ; 328: fr\System.ServiceModel.Http.resources.dll => 0x600236d8fe9e001a => 376
	i64 6994714925497792253, ; 329: cs\System.ServiceModel.NetTcp.resources => 0x6112382a476b36fd => 412
	i64 7011053663211085209, ; 330: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 276
	i64 7041056731259377614, ; 331: pt-BR\System.ServiceModel.Federation.resources => 0x61b6dbcabe1697ce => 368
	i64 7060448593242414269, ; 332: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 231
	i64 7060896174307865760, ; 333: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 142
	i64 7083547580668757502, ; 334: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 335: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 336: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 277
	i64 7105430439328552570, ; 337: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 229
	i64 7112547816752919026, ; 338: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7186972659700597177, ; 339: MauiApp2 => 0x63bd418e47e601b9 => 0
	i64 7192745174564810625, ; 340: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 246
	i64 7262627442013704703, ; 341: zh-Hans\System.ServiceModel.Http.resources.dll => 0x64ca092df13b11ff => 384
	i64 7270811800166795866, ; 342: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7278193053534512468, ; 343: fr\System.ServiceModel.Primitives.resources.dll => 0x650156054aa3e554 => 428
	i64 7289912052297460952, ; 344: pt-BR\System.ServiceModel.Http.resources.dll => 0x652af86351076cd8 => 381
	i64 7299370801165188114, ; 345: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 346: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 347: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 348: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 227
	i64 7349431895026339542, ; 349: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 245
	i64 7350910574546538092, ; 350: ru\System.ServiceModel.NetNamedPipe.resources => 0x6603ae3883824e6c => 408
	i64 7377312882064240630, ; 351: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7472041865435991508, ; 352: tr\System.ServiceModel.NetTcp.resources.dll => 0x67b2067cf028cdd4 => 422
	i64 7474619377462624881, ; 353: ko\System.ServiceModel.Http.resources.dll => 0x67bb2eb8b8e94271 => 379
	i64 7488575175965059935, ; 354: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 154
	i64 7489048572193775167, ; 355: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 356: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 226
	i64 7507338075031127501, ; 357: pl\System.ServiceModel.NetNamedPipe.resources => 0x682f6c3422fec5cd => 406
	i64 7526939507201682620, ; 358: Syncfusion.Maui.DataSource.dll => 0x68750f9a349c2cbc => 220
	i64 7592577537120840276, ; 359: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 360: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 361: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 362: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 363: System.Private.CoreLib => 0x6b0ff375198b9c17 => 171
	i64 7725404731275645577, ; 364: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 285
	i64 7735176074855944702, ; 365: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 366: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 320
	i64 7742555799473854801, ; 367: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 340
	i64 7791074099216502080, ; 368: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 369: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 370: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 253
	i64 7919757340696389605, ; 371: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 189
	i64 7972383140441761405, ; 372: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 181
	i64 7975724199463739455, ; 373: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 351
	i64 8025517457475554965, ; 374: WindowsBase => 0x6f605d9b4786ce95 => 164
	i64 8031450141206250471, ; 375: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 376: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 377: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 279
	i64 8085230611270010360, ; 378: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 379: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 380: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 381: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 342
	i64 8113615946733131500, ; 382: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8117493672424589315, ; 383: zh-Hans\System.ServiceModel.NetFramingBase.resources.dll => 0x70a7217c9b594803 => 397
	i64 8161788945634753591, ; 384: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x71447fcd9444fc37 => 407
	i64 8167236081217502503, ; 385: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 167
	i64 8174477988419522883, ; 386: zh-Hans\System.ServiceModel.Http.resources => 0x7171946b93fed143 => 384
	i64 8185542183669246576, ; 387: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187568296582843689, ; 388: ru\System.ServiceModel.NetFramingBase.resources => 0x71a015fc74120d29 => 395
	i64 8187640529827139739, ; 389: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 324
	i64 8234598844743906698, ; 390: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 199
	i64 8246048515196606205, ; 391: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 214
	i64 8263396617372552768, ; 392: zh-Hans\System.ServiceModel.NetNamedPipe.resources.dll => 0x72ad7b7130a7ce40 => 410
	i64 8264926008854159966, ; 393: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290671195414145311, ; 394: ru\System.ServiceModel.Primitives.resources.dll => 0x730e6186c039291f => 434
	i64 8290740647658429042, ; 395: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 396: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 397: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 398: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 357
	i64 8398329775253868912, ; 399: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 262
	i64 8400357532724379117, ; 400: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 294
	i64 8410671156615598628, ; 401: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 402: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 283
	i64 8427103965103130678, ; 403: FarmacyAPI.dll => 0x74f3166855420836 => 438
	i64 8445211794174623818, ; 404: de\System.ServiceModel.NetFramingBase.resources.dll => 0x75336b61d4b7c04a => 387
	i64 8476857680833348370, ; 405: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 232
	i64 8513291706828295435, ; 406: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 215
	i64 8518192943965980473, ; 407: de\System.ServiceModel.Primitives.resources.dll => 0x7636b359e954c739 => 426
	i64 8518412311883997971, ; 408: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 409: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 410: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 273
	i64 8601935802264776013, ; 411: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 306
	i64 8623059219396073920, ; 412: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 413: Java.Interop => 0x77b654e585b55834 => 167
	i64 8638972117149407195, ; 414: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 415: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 293
	i64 8648495978913578441, ; 416: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 417: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 347
	i64 8684531736582871431, ; 418: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 419: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8740610862248308472, ; 420: Microsoft.IdentityModel.Tokens.Saml.dll => 0x794ce344fc3b2ef8 => 207
	i64 8750104989811284373, ; 421: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x796e9e20d1131995 => 398
	i64 8816904670177563593, ; 422: Microsoft.Extensions.Diagnostics => 0x7a5bf015646a93c9 => 188
	i64 8853378295825400934, ; 423: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 321
	i64 8941376889969657626, ; 424: System.Xml.XDocument => 0x7c1626e87187471a => 157
	i64 8951477988056063522, ; 425: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 296
	i64 8954753533646919997, ; 426: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 427: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 198
	i64 9045785047181495996, ; 428: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 357
	i64 9052662452269567435, ; 429: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 203
	i64 9111603110219107042, ; 430: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 182
	i64 9138683372487561558, ; 431: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9206439850007503396, ; 432: pl\System.ServiceModel.NetTcp.resources => 0x7fc3d84409b2a224 => 419
	i64 9236758604623169489, ; 433: es\System.ServiceModel.Http.resources => 0x802f8f033098c7d1 => 375
	i64 9250544137016314866, ; 434: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 177
	i64 9263201321826310745, ; 435: ko\System.ServiceModel.Primitives.resources.dll => 0x808d80860e62da59 => 431
	i64 9280092456055116671, ; 436: pt-BR\System.ServiceModel.NetNamedPipe.resources.dll => 0x80c982ebb5f2937f => 407
	i64 9312692141327339315, ; 437: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 311
	i64 9316287416046110943, ; 438: MauiApp2.dll => 0x814a1a0b8adec8df => 0
	i64 9324707631942237306, ; 439: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 252
	i64 9363564275759486853, ; 440: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 331
	i64 9384974865304406479, ; 441: pl\System.ServiceModel.NetNamedPipe.resources.dll => 0x823e20ea907049cf => 406
	i64 9419757349738764784, ; 442: ja\System.ServiceModel.NetNamedPipe.resources.dll => 0x82b9b366cd8dd9f0 => 404
	i64 9427266486299436557, ; 443: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 202
	i64 9429125686736324352, ; 444: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0x82dafbdabc6e0700 => 397
	i64 9468215723722196442, ; 445: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 158
	i64 9500688326720985260, ; 446: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 180
	i64 9551379474083066910, ; 447: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 355
	i64 9554839972845591462, ; 448: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 449: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 316
	i64 9584643793929893533, ; 450: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 451: System.Text.RegularExpressions => 0x860e407c9991dd9b => 137
	i64 9662334977499516867, ; 452: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 453: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 454: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 263
	i64 9702891218465930390, ; 455: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9733213995311057333, ; 456: es\System.ServiceModel.Federation.resources => 0x8713528f596049b5 => 362
	i64 9773637193738963987, ; 457: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 327
	i64 9780093022148426479, ; 458: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 313
	i64 9781854986812340793, ; 459: cs\System.ServiceModel.NetFramingBase.resources.dll => 0x87c02148b5553a39 => 386
	i64 9808709177481450983, ; 460: Mono.Android.dll => 0x881f890734e555e7 => 170
	i64 9819168441846169364, ; 461: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 203
	i64 9825649861376906464, ; 462: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 260
	i64 9834056768316610435, ; 463: System.Transactions.dll => 0x8879968718899783 => 149
	i64 9836529246295212050, ; 464: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9907349773706910547, ; 465: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 273
	i64 9933555792566666578, ; 466: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 467: Microsoft.Maui => 0x8a2b8315b36616ac => 212
	i64 9960800019978769040, ; 468: es\System.ServiceModel.Federation.resources.dll => 0x8a3bded7f589d290 => 362
	i64 9974604633896246661, ; 469: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 156
	i64 10017511394021241210, ; 470: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 193
	i64 10038780035334861115, ; 471: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10040763467948948093, ; 472: tr\System.ServiceModel.NetNamedPipe.resources.dll => 0x8b57f52d04d0fa7d => 409
	i64 10051358222726253779, ; 473: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10061990739975680329, ; 474: zh-Hant\System.ServiceModel.Federation.resources.dll => 0x8ba35f446d853149 => 372
	i64 10078727084704864206, ; 475: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 476: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 477: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 210
	i64 10096670194649521199, ; 478: System.ServiceModel.Primitives => 0x8c1e940c2e5bdc2f => 239
	i64 10105485790837105934, ; 479: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 142
	i64 10143853363526200146, ; 480: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 329
	i64 10172042533944518731, ; 481: Syncfusion.Maui.GridCommon.dll => 0x8d2a5aca73ed684b => 221
	i64 10197415184292957254, ; 482: ko\System.ServiceModel.Federation.resources => 0x8d847f14f6f4cc46 => 366
	i64 10205853378024263619, ; 483: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 185
	i64 10209869394718195525, ; 484: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 345
	i64 10226222362177979215, ; 485: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 322
	i64 10229024438826829339, ; 486: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 267
	i64 10236703004850800690, ; 487: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 488: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 489: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 319
	i64 10360651442923773544, ; 490: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 491: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 492: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 305
	i64 10406448008575299332, ; 493: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 325
	i64 10430153318873392755, ; 494: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 264
	i64 10447083246144586668, ; 495: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 175
	i64 10462231721195350770, ; 496: it\System.ServiceModel.Primitives.resources => 0x91315051b3ac2af2 => 429
	i64 10469453728112873959, ; 497: pt-BR\System.ServiceModel.Primitives.resources.dll => 0x914af8b2388e91e7 => 433
	i64 10506226065143327199, ; 498: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 327
	i64 10512690409504421330, ; 499: Syncfusion.Maui.GridCommon => 0x91e4943a942ab5d2 => 221
	i64 10546663366131771576, ; 500: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 501: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 502: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 158
	i64 10670374202010151210, ; 503: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 504: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10733493810775535810, ; 505: System.ServiceModel.NetFramingBase.dll => 0x94f507c09e2130c2 => 236
	i64 10761706286639228993, ; 506: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 359
	i64 10785150219063592792, ; 507: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10809043855025277762, ; 508: Microsoft.Extensions.Options.ConfigurationExtensions => 0x9601701e0c668b42 => 196
	i64 10811915265162633087, ; 509: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 179
	i64 10822644899632537592, ; 510: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 511: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 512: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 254
	i64 10857251597261229409, ; 513: pl\System.ServiceModel.NetFramingBase.resources.dll => 0x96acb4cdb3cc4d61 => 393
	i64 10889380495983713167, ; 514: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 176
	i64 10899834349646441345, ; 515: System.Web => 0x9743fd975946eb81 => 152
	i64 10913396506891090045, ; 516: tr\System.ServiceModel.Federation.resources.dll => 0x97742c4d263b787d => 370
	i64 10943875058216066601, ; 517: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 518: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 519: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 192
	i64 11009005086950030778, ; 520: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 212
	i64 11018178252090604864, ; 521: Microsoft.IdentityModel.Xml => 0x98e86ebe53cb7d40 => 208
	i64 11019817191295005410, ; 522: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 251
	i64 11023048688141570732, ; 523: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 524: System.Xml => 0x992e31d0412bf7fc => 162
	i64 11047101296015504039, ; 525: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 216
	i64 11071824625609515081, ; 526: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 317
	i64 11103970607964515343, ; 527: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 338
	i64 11136029745144976707, ; 528: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 315
	i64 11156122287428000958, ; 529: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 353
	i64 11157797727133427779, ; 530: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 334
	i64 11157832426039186247, ; 531: System.ServiceModel.NetTcp.dll => 0x9ad8957989669347 => 238
	i64 11162124722117608902, ; 532: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 310
	i64 11188319605227840848, ; 533: System.Threading.Overlapped => 0x9b44e5671724e550 => 139
	i64 11220793807500858938, ; 534: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 341
	i64 11226290749488709958, ; 535: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 195
	i64 11235648312900863002, ; 536: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11280940017990338692, ; 537: ru\System.ServiceModel.NetFramingBase.resources.dll => 0x9c8df32d68cd8884 => 395
	i64 11289176806901695813, ; 538: zh-Hans\System.ServiceModel.Federation.resources => 0x9cab367e45f44545 => 371
	i64 11329751333533450475, ; 539: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 146
	i64 11340910727871153756, ; 540: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 266
	i64 11341245327015630248, ; 541: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 224
	i64 11347436699239206956, ; 542: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 161
	i64 11392833485892708388, ; 543: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 295
	i64 11399145176672566267, ; 544: ko\System.ServiceModel.NetFramingBase.resources.dll => 0x9e31e62496acfbfb => 392
	i64 11430949118656437382, ; 545: zh-Hant\System.ServiceModel.NetTcp.resources.dll => 0x9ea2e3a8df14dc86 => 424
	i64 11432101114902388181, ; 546: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 547: Mono.Android.Export => 0x9edabf8623efc131 => 168
	i64 11448276831755070604, ; 548: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 549: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11500833653984418941, ; 550: ru\System.ServiceModel.Http.resources.dll => 0x9f9b2b4636995c7d => 382
	i64 11503653075602048397, ; 551: System.ServiceModel.Http => 0x9fa52f85f697058d => 235
	i64 11508496261504176197, ; 552: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 276
	i64 11517440453979132662, ; 553: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 200
	i64 11518296021396496455, ; 554: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 339
	i64 11529969570048099689, ; 555: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 310
	i64 11530571088791430846, ; 556: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 191
	i64 11580057168383206117, ; 557: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 249
	i64 11591352189662810718, ; 558: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 303
	i64 11597940890313164233, ; 559: netstandard => 0xa0f429ca8d1805c9 => 166
	i64 11672361001936329215, ; 560: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 277
	i64 11692977985522001935, ; 561: System.Threading.Overlapped.dll => 0xa245cd869980680f => 139
	i64 11707554492040141440, ; 562: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11735746404054041039, ; 563: ko\System.ServiceModel.Federation.resources.dll => 0xa2ddbf2d03b581cf => 366
	i64 11743665907891708234, ; 564: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 143
	i64 11855031688536399763, ; 565: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 356
	i64 11949116578634023363, ; 566: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa5d3ca38193641c3 => 424
	i64 11991047634523762324, ; 567: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 568: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 230
	i64 12040886584167504988, ; 569: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 570: System.Security => 0xa76a99f6ce740786 => 130
	i64 12089821315035631174, ; 571: Swashbuckle.AspNetCore.SwaggerGen.dll => 0xa7c7ac6e70a50e46 => 440
	i64 12096697103934194533, ; 572: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 573: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12103502009779171514, ; 574: ko\System.ServiceModel.NetTcp.resources.dll => 0xa7f846f3671d30ba => 418
	i64 12123043025855404482, ; 575: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 576: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 307
	i64 12145679461940342714, ; 577: System.Text.Json => 0xa88e1f1ebcb62fba => 241
	i64 12148258109226484831, ; 578: System.ServiceModel.NetFramingBase => 0xa8974862d834045f => 236
	i64 12153312702598915601, ; 579: ja\System.ServiceModel.NetFramingBase.resources => 0xa8a93d8312a6a611 => 391
	i64 12191646537372739477, ; 580: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 243
	i64 12198439281774268251, ; 581: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 204
	i64 12201331334810686224, ; 582: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12208489443106253639, ; 583: ja\System.ServiceModel.NetFramingBase.resources.dll => 0xa96d447714746b47 => 391
	i64 12269460666702402136, ; 584: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 585: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12342184558428949313, ; 586: System.ServiceModel.Primitives.dll => 0xab483f76d5780b41 => 239
	i64 12375446203996702057, ; 587: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 588: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 201
	i64 12451044538927396471, ; 589: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 275
	i64 12466513435562512481, ; 590: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 289
	i64 12475113361194491050, ; 591: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 443
	i64 12487638416075308985, ; 592: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 269
	i64 12493213219680520345, ; 593: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 176
	i64 12517810545449516888, ; 594: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 595: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 257
	i64 12550732019250633519, ; 596: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12563362775336008096, ; 597: de\System.ServiceModel.Http.resources => 0xae5a07e17044b9a0 => 374
	i64 12574057397895485952, ; 598: Swashbuckle.AspNetCore.SwaggerGen => 0xae8006954aeeda00 => 440
	i64 12594160867402462460, ; 599: fr\System.ServiceModel.NetNamedPipe.resources => 0xaec7729509a634fc => 402
	i64 12699999919562409296, ; 600: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 601: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 258
	i64 12708238894395270091, ; 602: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 603: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 604: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 605: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 312
	i64 12828192437253469131, ; 606: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 323
	i64 12835242264250840079, ; 607: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 608: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 197
	i64 12843770487262409629, ; 609: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 610: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12925973142558461920, ; 611: de\System.ServiceModel.NetTcp.resources => 0xb3624816a26fcfe0 => 413
	i64 12963446364377008305, ; 612: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 225
	i64 12969436488308964832, ; 613: cs\System.ServiceModel.Primitives.resources.dll => 0xb3fcb1c566a53de0 => 425
	i64 12982280885948128408, ; 614: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 268
	i64 12989346753972519995, ; 615: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 326
	i64 13005833372463390146, ; 616: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 347
	i64 13053546704887121209, ; 617: zh-Hans\System.ServiceModel.Primitives.resources.dll => 0xb527839143c48539 => 436
	i64 13068258254871114833, ; 618: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13113583242634760252, ; 619: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xb5fcce7afdc2903c => 205
	i64 13129914918964716986, ; 620: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 272
	i64 13162471042547327635, ; 621: System.Security.Permissions => 0xb6aa7dace9662293 => 232
	i64 13164229635607550844, ; 622: FarmacyAPI => 0xb6b0bd1b440edb7c => 438
	i64 13173818576982874404, ; 623: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13237365648602513252, ; 624: zh-Hant\System.ServiceModel.Http.resources.dll => 0xb7b491ec3ee93f64 => 385
	i64 13276998518761325296, ; 625: it\System.ServiceModel.NetTcp.resources.dll => 0xb8415fceea2802f0 => 416
	i64 13343850469010654401, ; 626: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 169
	i64 13370592475155966277, ; 627: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 628: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 335
	i64 13401370062847626945, ; 629: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 307
	i64 13404347523447273790, ; 630: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 262
	i64 13431476299110033919, ; 631: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 632: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 318
	i64 13463706743370286408, ; 633: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 634: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 320
	i64 13472767881616983716, ; 635: ru\System.ServiceModel.NetTcp.resources.dll => 0xbaf8e301ad1286a4 => 421
	i64 13491513212026656886, ; 636: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 255
	i64 13492260750531519258, ; 637: Syncfusion.Maui.ListView.dll => 0xbb3e23aae460631a => 223
	i64 13540124433173649601, ; 638: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 356
	i64 13572454107664307259, ; 639: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 297
	i64 13578472628727169633, ; 640: System.Xml.XPath => 0xbc706ce9fba5c261 => 159
	i64 13580399111273692417, ; 641: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 642: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 268
	i64 13647894001087880694, ; 643: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 644: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 248
	i64 13702626353344114072, ; 645: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 646: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 647: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 648: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 649: Azure.Identity => 0xbeb596218df25c82 => 173
	i64 13768883594457632599, ; 650: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13828521679616088467, ; 651: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 321
	i64 13830070810343648044, ; 652: System.ServiceModel.Http.dll => 0xbfee48208d082b2c => 235
	i64 13874392747353528814, ; 653: it\System.ServiceModel.Federation.resources => 0xc08bbeb1ac4359ee => 364
	i64 13881769479078963060, ; 654: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 655: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 242
	i64 13911222732217019342, ; 656: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 657: System.Windows.dll => 0xc14bc67b8bba9714 => 153
	i64 13947035440391415689, ; 658: zh-Hans\System.ServiceModel.Primitives.resources => 0xc18dd2d6a6506789 => 436
	i64 13959074834287824816, ; 659: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 275
	i64 13970307180132182141, ; 660: Syncfusion.Licensing => 0xc1e0805ccade287d => 218
	i64 13984310788332443955, ; 661: Swashbuckle.AspNetCore.Swagger.dll => 0xc2124091e737d933 => 441
	i64 14062537208056738663, ; 662: cs\System.ServiceModel.NetNamedPipe.resources => 0xc3282b158eef7367 => 399
	i64 14075334701871371868, ; 663: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14124974489674258913, ; 664: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 257
	i64 14125464355221830302, ; 665: System.Threading.dll => 0xc407bafdbc707a9e => 147
	i64 14133832980772275001, ; 666: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 177
	i64 14178052285788134900, ; 667: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 244
	i64 14212104595480609394, ; 668: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 669: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 670: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 671: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 672: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 673: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 295
	i64 14298246716367104064, ; 674: System.Web.dll => 0xc66d93a217f4e840 => 152
	i64 14327695147300244862, ; 675: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 676: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 677: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 245
	i64 14346402571976470310, ; 678: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 679: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 349
	i64 14353329275190349375, ; 680: Syncfusion.Maui.ListView => 0xc73144edb7ef8e3f => 223
	i64 14362574057949885361, ; 681: it\System.ServiceModel.NetNamedPipe.resources.dll => 0xc7521d027057f3b1 => 403
	i64 14421361542546680254, ; 682: fr\System.ServiceModel.Federation.resources.dll => 0xc822f7ea50f969be => 363
	i64 14461014870687870182, ; 683: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 684: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 350
	i64 14486659737292545672, ; 685: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 280
	i64 14491877563792607819, ; 686: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 358
	i64 14495724990987328804, ; 687: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 298
	i64 14497605124368440498, ; 688: pt-BR\System.ServiceModel.NetFramingBase.resources => 0xc931d70c8bdd1cb2 => 394
	i64 14538127318538747197, ; 689: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 218
	i64 14551742072151931844, ; 690: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 691: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 692: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14610046442689856844, ; 693: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 328
	i64 14622043554576106986, ; 694: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 695: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 290
	i64 14648804764802849406, ; 696: Azure.Identity.dll => 0xcb4b0252261f9a7e => 173
	i64 14669215534098758659, ; 697: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 186
	i64 14690985099581930927, ; 698: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 151
	i64 14705122255218365489, ; 699: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 342
	i64 14721940850768001396, ; 700: ru\System.ServiceModel.NetNamedPipe.resources.dll => 0xcc4ed7341e56b974 => 408
	i64 14735017007120366644, ; 701: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 341
	i64 14741804258040025864, ; 702: es\System.ServiceModel.NetNamedPipe.resources => 0xcc9568de04d11308 => 401
	i64 14741906619329732858, ; 703: es\System.ServiceModel.Http.resources.dll => 0xcc95c5f6dd20e0fa => 375
	i64 14744092281598614090, ; 704: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 358
	i64 14750216453141343598, ; 705: ja\System.ServiceModel.Http.resources => 0xccb34bb6d19cad6e => 378
	i64 14792063746108907174, ; 706: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 318
	i64 14792991364388157008, ; 707: es\System.ServiceModel.NetTcp.resources => 0xcd4b4344efc6f650 => 414
	i64 14832630590065248058, ; 708: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14839664071391251657, ; 709: System.ServiceModel.Duplex => 0xcdf113d959670cc9 => 233
	i64 14852515768018889994, ; 710: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 266
	i64 14870951093111881137, ; 711: zh-Hans\System.ServiceModel.NetTcp.resources => 0xce603b3ac123fdb1 => 423
	i64 14889905118082851278, ; 712: GoogleGson.dll => 0xcea391d0969961ce => 174
	i64 14904040806490515477, ; 713: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 326
	i64 14912225920358050525, ; 714: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 715: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 716: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 187
	i64 14984936317414011727, ; 717: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 718: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 719: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 269
	i64 15015154896917945444, ; 720: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 721: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15033183115947713165, ; 722: cs\System.ServiceModel.Primitives.resources => 0xd0a098650d76a28d => 425
	i64 15051741671811457419, ; 723: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 189
	i64 15071021337266399595, ; 724: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 725: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 726: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 343
	i64 15115185479366240210, ; 727: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 728: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 729: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 200
	i64 15150743910298169673, ; 730: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 296
	i64 15203009853192377507, ; 731: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 348
	i64 15227001540531775957, ; 732: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 184
	i64 15234786388537674379, ; 733: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 734: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 735: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 259
	i64 15279429628684179188, ; 736: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 324
	i64 15299439993936780255, ; 737: System.Xml.XPath.dll => 0xd452879d55019bdf => 159
	i64 15338463749992804988, ; 738: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 739: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 264
	i64 15383240894167415497, ; 740: System.Memory.Data => 0xd57c4016df1c7ac9 => 227
	i64 15391712275433856905, ; 741: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 187
	i64 15393074522552085424, ; 742: tr\System.ServiceModel.Http.resources.dll => 0xd59f2fb8e5d52bb0 => 383
	i64 15412490934096474927, ; 743: System.ServiceModel.Federation => 0xd5e42ad87ebfb32f => 234
	i64 15413989682962769581, ; 744: es\System.ServiceModel.Primitives.resources => 0xd5e97df3288826ad => 427
	i64 15472743225642400231, ; 745: zh-Hant\System.ServiceModel.Federation.resources => 0xd6ba39fc513f39e7 => 372
	i64 15512084913707906237, ; 746: pt-BR\System.ServiceModel.Http.resources => 0xd745ff0adf4174bd => 381
	i64 15526743539506359484, ; 747: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 748: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 749: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 750: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 330
	i64 15541854775306130054, ; 751: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 752: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15569033818817228135, ; 753: tr\System.ServiceModel.NetFramingBase.resources.dll => 0xd81051c51aa4ed67 => 396
	i64 15582737692548360875, ; 754: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 288
	i64 15609085926864131306, ; 755: System.dll => 0xd89e9cf3334914ea => 163
	i64 15637857104874081957, ; 756: System.ServiceModel.NetNamedPipe => 0xd904d42f18568ea5 => 237
	i64 15661133872274321916, ; 757: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 155
	i64 15710114879900314733, ; 758: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15741736072247611081, ; 759: de\System.ServiceModel.Federation.resources.dll => 0xda75e18dee458ec9 => 361
	i64 15745825835632158716, ; 760: Syncfusion.Maui.Core => 0xda84692c2c05e7fc => 219
	i64 15755368083429170162, ; 761: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 762: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 302
	i64 15783653065526199428, ; 763: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 331
	i64 15796759896944584724, ; 764: Swashbuckle.AspNetCore.SwaggerUI => 0xdb395d6e7384a814 => 439
	i64 15817206913877585035, ; 765: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 143
	i64 15847085070278954535, ; 766: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 138
	i64 15885744048853936810, ; 767: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 768: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 209
	i64 15934062614519587357, ; 769: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 770: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 771: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 141
	i64 15971679995444160383, ; 772: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 773: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16046481083542319511, ; 774: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 194
	i64 16054465462676478687, ; 775: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 776: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 350
	i64 16114460324092078703, ; 777: Microsoft.IdentityModel.Xml.dll => 0xdfa2104964a26a6f => 208
	i64 16154507427712707110, ; 778: System => 0xe03056ea4e39aa26 => 163
	i64 16219561732052121626, ; 779: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16272480664611126357, ; 780: fr\System.ServiceModel.NetFramingBase.resources => 0xe1d376f2fc8efc55 => 389
	i64 16288847719894691167, ; 781: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 344
	i64 16315482530584035869, ; 782: WindowsBase.dll => 0xe26c3ceb1e8d821d => 164
	i64 16321164108206115771, ; 783: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 192
	i64 16337011941688632206, ; 784: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 785: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 274
	i64 16423015068819898779, ; 786: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 323
	i64 16454459195343277943, ; 787: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16465012559999924934, ; 788: ko\System.ServiceModel.NetNamedPipe.resources => 0xe47f79b01d23fac6 => 405
	i64 16496768397145114574, ; 789: Mono.Android.Export.dll => 0xe4f04b741db987ce => 168
	i64 16558262036769511634, ; 790: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 190
	i64 16571052248489204195, ; 791: es\System.ServiceModel.NetFramingBase.resources => 0xe5f8343909a319e3 => 388
	i64 16589693266713801121, ; 792: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 287
	i64 16621146507174665210, ; 793: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 261
	i64 16649148416072044166, ; 794: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 214
	i64 16650408747315020520, ; 795: es\System.ServiceModel.NetNamedPipe.resources.dll => 0xe7122289bcc4c2e8 => 401
	i64 16677317093839702854, ; 796: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 294
	i64 16702652415771857902, ; 797: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 150
	i64 16709499819875633724, ; 798: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 799: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 800: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 801: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 802: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16803648858859583026, ; 803: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 343
	i64 16822611501064131242, ; 804: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 805: mscorlib => 0xe99c30c1484d7f4f => 165
	i64 16856067890322379635, ; 806: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 807: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 137
	i64 16917672339696510452, ; 808: pl\System.ServiceModel.NetTcp.resources.dll => 0xeac7a55bfa0fe5f4 => 419
	i64 16933958494752847024, ; 809: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 810: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 351
	i64 16945858842201062480, ; 811: Azure.Core => 0xeb2bc8d57f4e7c50 => 172
	i64 16977952268158210142, ; 812: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 813: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 287
	i64 16998075588627545693, ; 814: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 292
	i64 17008137082415910100, ; 815: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 816: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 250
	i64 17031351772568316411, ; 817: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 291
	i64 17031924682156397346, ; 818: pl\System.ServiceModel.Primitives.resources => 0xec5d8d426923d322 => 432
	i64 17037200463775726619, ; 819: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 278
	i64 17053734385704495427, ; 820: fr\System.ServiceModel.NetFramingBase.resources.dll => 0xecab0911b9c7e943 => 389
	i64 17062143951396181894, ; 821: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17101677393452997189, ; 822: de\System.ServiceModel.Federation.resources => 0xed555cfb14181a45 => 361
	i64 17118171214553292978, ; 823: System.Threading.Channels => 0xed8ff6060fc420b2 => 138
	i64 17137864900836977098, ; 824: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 206
	i64 17187273293601214786, ; 825: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 826: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 199
	i64 17201328579425343169, ; 827: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 828: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 829: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 346
	i64 17230721278011714856, ; 830: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 831: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 148
	i64 17260702271250283638, ; 832: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17276988206817606697, ; 833: Microsoft.OpenApi.dll => 0xefc4313c97f9fc29 => 442
	i64 17310278548634113468, ; 834: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 336
	i64 17333249706306540043, ; 835: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 836: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 837: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 336
	i64 17360349973592121190, ; 838: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 316
	i64 17371436720558481852, ; 839: System.Runtime.Caching => 0xf113bda8d710a1bc => 228
	i64 17399987107450734316, ; 840: cs\System.ServiceModel.Http.resources.dll => 0xf1792c15cbfa46ec => 373
	i64 17470386307322966175, ; 841: System.Threading.Timer => 0xf27347c8d0d5709f => 146
	i64 17509662556995089465, ; 842: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 843: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 334
	i64 17522591619082469157, ; 844: GoogleGson => 0xf32cc03d27a5bf25 => 174
	i64 17523946658117960076, ; 845: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 230
	i64 17590473451926037903, ; 846: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 243
	i64 17623389608345532001, ; 847: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 346
	i64 17627500474728259406, ; 848: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17649468012153667028, ; 849: de\System.ServiceModel.Http.resources.dll => 0xf4ef81a56b09fdd4 => 374
	i64 17685511033268820096, ; 850: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xf56f8e95393d5880 => 410
	i64 17685921127322830888, ; 851: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 852: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 289
	i64 17710060891934109755, ; 853: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 286
	i64 17712670374920797664, ; 854: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17735863702094357145, ; 855: pl\System.ServiceModel.Http.resources.dll => 0xf622721184142299 => 380
	i64 17777860260071588075, ; 856: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 857: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 202
	i64 17827813215687577648, ; 858: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 337
	i64 17838668724098252521, ; 859: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17871147545075994307, ; 860: cs\System.ServiceModel.NetFramingBase.resources => 0xf8031201c0d94ec3 => 386
	i64 17891337867145587222, ; 861: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 319
	i64 17907856582667321842, ; 862: ru\System.ServiceModel.Federation.resources.dll => 0xf8857cae9a86c1f2 => 369
	i64 17928294245072900555, ; 863: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 864: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 330
	i64 17992315986609351877, ; 865: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 160
	i64 18017743553296241350, ; 866: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 181
	i64 18025913125965088385, ; 867: System.Threading => 0xfa28e87b91334681 => 147
	i64 18064602570212040998, ; 868: fr\System.ServiceModel.NetNamedPipe.resources.dll => 0xfab25c53c618e126 => 402
	i64 18116111925905154859, ; 869: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 255
	i64 18121036031235206392, ; 870: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 291
	i64 18146411883821974900, ; 871: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 872: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18164061295166068260, ; 873: Syncfusion.Maui.DataSource => 0xfc13b582b8cb9624 => 220
	i64 18203743254473369877, ; 874: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 229
	i64 18225059387460068507, ; 875: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 145
	i64 18245806341561545090, ; 876: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 877: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 272
	i64 18305135509493619199, ; 878: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 293
	i64 18318849532986632368, ; 879: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 880: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 340
	i64 18342408478508122430, ; 881: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 339
	i64 18358161419737137786, ; 882: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 335
	i64 18362437444048002214, ; 883: tr\System.ServiceModel.Primitives.resources => 0xfed47b9126d01ca6 => 435
	i64 18380184030268848184, ; 884: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 309
	i64 18393880674450668525, ; 885: cs\System.ServiceModel.NetTcp.resources.dll => 0xff443104b98dfbed => 412
	i64 18428404840311395189, ; 886: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 231
	i64 18439108438687598470 ; 887: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [888 x i32] [
	i32 271, ; 0
	i32 238, ; 1
	i32 197, ; 2
	i32 170, ; 3
	i32 213, ; 4
	i32 237, ; 5
	i32 58, ; 6
	i32 258, ; 7
	i32 150, ; 8
	i32 299, ; 9
	i32 234, ; 10
	i32 368, ; 11
	i32 302, ; 12
	i32 265, ; 13
	i32 367, ; 14
	i32 132, ; 15
	i32 196, ; 16
	i32 396, ; 17
	i32 56, ; 18
	i32 301, ; 19
	i32 240, ; 20
	i32 194, ; 21
	i32 95, ; 22
	i32 437, ; 23
	i32 284, ; 24
	i32 129, ; 25
	i32 185, ; 26
	i32 198, ; 27
	i32 225, ; 28
	i32 233, ; 29
	i32 367, ; 30
	i32 144, ; 31
	i32 259, ; 32
	i32 18, ; 33
	i32 338, ; 34
	i32 365, ; 35
	i32 270, ; 36
	i32 285, ; 37
	i32 215, ; 38
	i32 149, ; 39
	i32 104, ; 40
	i32 95, ; 41
	i32 172, ; 42
	i32 404, ; 43
	i32 314, ; 44
	i32 415, ; 45
	i32 36, ; 46
	i32 180, ; 47
	i32 28, ; 48
	i32 254, ; 49
	i32 207, ; 50
	i32 417, ; 51
	i32 292, ; 52
	i32 378, ; 53
	i32 50, ; 54
	i32 423, ; 55
	i32 115, ; 56
	i32 70, ; 57
	i32 210, ; 58
	i32 65, ; 59
	i32 169, ; 60
	i32 144, ; 61
	i32 429, ; 62
	i32 313, ; 63
	i32 431, ; 64
	i32 253, ; 65
	i32 288, ; 66
	i32 278, ; 67
	i32 377, ; 68
	i32 40, ; 69
	i32 89, ; 70
	i32 383, ; 71
	i32 81, ; 72
	i32 439, ; 73
	i32 217, ; 74
	i32 66, ; 75
	i32 62, ; 76
	i32 363, ; 77
	i32 86, ; 78
	i32 252, ; 79
	i32 411, ; 80
	i32 106, ; 81
	i32 332, ; 82
	i32 299, ; 83
	i32 102, ; 84
	i32 175, ; 85
	i32 35, ; 86
	i32 249, ; 87
	i32 354, ; 88
	i32 301, ; 89
	i32 211, ; 90
	i32 417, ; 91
	i32 119, ; 92
	i32 369, ; 93
	i32 286, ; 94
	i32 141, ; 95
	i32 421, ; 96
	i32 140, ; 97
	i32 322, ; 98
	i32 53, ; 99
	i32 35, ; 100
	i32 140, ; 101
	i32 217, ; 102
	i32 246, ; 103
	i32 256, ; 104
	i32 400, ; 105
	i32 416, ; 106
	i32 178, ; 107
	i32 193, ; 108
	i32 270, ; 109
	i32 434, ; 110
	i32 8, ; 111
	i32 14, ; 112
	i32 298, ; 113
	i32 387, ; 114
	i32 51, ; 115
	i32 204, ; 116
	i32 281, ; 117
	i32 380, ; 118
	i32 136, ; 119
	i32 101, ; 120
	i32 263, ; 121
	i32 308, ; 122
	i32 116, ; 123
	i32 247, ; 124
	i32 228, ; 125
	i32 162, ; 126
	i32 353, ; 127
	i32 206, ; 128
	i32 165, ; 129
	i32 413, ; 130
	i32 67, ; 131
	i32 186, ; 132
	i32 328, ; 133
	i32 80, ; 134
	i32 101, ; 135
	i32 303, ; 136
	i32 201, ; 137
	i32 117, ; 138
	i32 224, ; 139
	i32 333, ; 140
	i32 315, ; 141
	i32 360, ; 142
	i32 442, ; 143
	i32 435, ; 144
	i32 78, ; 145
	i32 314, ; 146
	i32 414, ; 147
	i32 385, ; 148
	i32 114, ; 149
	i32 121, ; 150
	i32 48, ; 151
	i32 216, ; 152
	i32 128, ; 153
	i32 279, ; 154
	i32 250, ; 155
	i32 82, ; 156
	i32 110, ; 157
	i32 365, ; 158
	i32 75, ; 159
	i32 325, ; 160
	i32 226, ; 161
	i32 213, ; 162
	i32 390, ; 163
	i32 53, ; 164
	i32 305, ; 165
	i32 183, ; 166
	i32 69, ; 167
	i32 304, ; 168
	i32 182, ; 169
	i32 83, ; 170
	i32 171, ; 171
	i32 418, ; 172
	i32 393, ; 173
	i32 348, ; 174
	i32 116, ; 175
	i32 184, ; 176
	i32 155, ; 177
	i32 183, ; 178
	i32 205, ; 179
	i32 244, ; 180
	i32 166, ; 181
	i32 403, ; 182
	i32 297, ; 183
	i32 271, ; 184
	i32 398, ; 185
	i32 376, ; 186
	i32 191, ; 187
	i32 32, ; 188
	i32 211, ; 189
	i32 427, ; 190
	i32 122, ; 191
	i32 72, ; 192
	i32 62, ; 193
	i32 160, ; 194
	i32 113, ; 195
	i32 329, ; 196
	i32 88, ; 197
	i32 209, ; 198
	i32 359, ; 199
	i32 105, ; 200
	i32 18, ; 201
	i32 145, ; 202
	i32 118, ; 203
	i32 58, ; 204
	i32 265, ; 205
	i32 17, ; 206
	i32 370, ; 207
	i32 52, ; 208
	i32 92, ; 209
	i32 373, ; 210
	i32 354, ; 211
	i32 55, ; 212
	i32 129, ; 213
	i32 432, ; 214
	i32 151, ; 215
	i32 41, ; 216
	i32 179, ; 217
	i32 92, ; 218
	i32 390, ; 219
	i32 178, ; 220
	i32 433, ; 221
	i32 394, ; 222
	i32 309, ; 223
	i32 190, ; 224
	i32 50, ; 225
	i32 161, ; 226
	i32 13, ; 227
	i32 283, ; 228
	i32 247, ; 229
	i32 304, ; 230
	i32 36, ; 231
	i32 67, ; 232
	i32 441, ; 233
	i32 109, ; 234
	i32 344, ; 235
	i32 371, ; 236
	i32 352, ; 237
	i32 248, ; 238
	i32 430, ; 239
	i32 99, ; 240
	i32 99, ; 241
	i32 11, ; 242
	i32 437, ; 243
	i32 382, ; 244
	i32 11, ; 245
	i32 290, ; 246
	i32 25, ; 247
	i32 128, ; 248
	i32 76, ; 249
	i32 282, ; 250
	i32 109, ; 251
	i32 388, ; 252
	i32 219, ; 253
	i32 308, ; 254
	i32 306, ; 255
	i32 106, ; 256
	i32 2, ; 257
	i32 426, ; 258
	i32 26, ; 259
	i32 261, ; 260
	i32 156, ; 261
	i32 352, ; 262
	i32 242, ; 263
	i32 21, ; 264
	i32 222, ; 265
	i32 355, ; 266
	i32 49, ; 267
	i32 43, ; 268
	i32 126, ; 269
	i32 251, ; 270
	i32 59, ; 271
	i32 119, ; 272
	i32 240, ; 273
	i32 311, ; 274
	i32 274, ; 275
	i32 260, ; 276
	i32 3, ; 277
	i32 428, ; 278
	i32 280, ; 279
	i32 422, ; 280
	i32 360, ; 281
	i32 300, ; 282
	i32 420, ; 283
	i32 38, ; 284
	i32 124, ; 285
	i32 411, ; 286
	i32 188, ; 287
	i32 222, ; 288
	i32 300, ; 289
	i32 415, ; 290
	i32 349, ; 291
	i32 241, ; 292
	i32 148, ; 293
	i32 400, ; 294
	i32 85, ; 295
	i32 90, ; 296
	i32 392, ; 297
	i32 332, ; 298
	i32 284, ; 299
	i32 443, ; 300
	i32 281, ; 301
	i32 405, ; 302
	i32 333, ; 303
	i32 337, ; 304
	i32 256, ; 305
	i32 379, ; 306
	i32 267, ; 307
	i32 312, ; 308
	i32 195, ; 309
	i32 317, ; 310
	i32 282, ; 311
	i32 133, ; 312
	i32 399, ; 313
	i32 409, ; 314
	i32 96, ; 315
	i32 3, ; 316
	i32 345, ; 317
	i32 377, ; 318
	i32 430, ; 319
	i32 105, ; 320
	i32 33, ; 321
	i32 364, ; 322
	i32 153, ; 323
	i32 157, ; 324
	i32 420, ; 325
	i32 154, ; 326
	i32 82, ; 327
	i32 376, ; 328
	i32 412, ; 329
	i32 276, ; 330
	i32 368, ; 331
	i32 231, ; 332
	i32 142, ; 333
	i32 87, ; 334
	i32 19, ; 335
	i32 277, ; 336
	i32 229, ; 337
	i32 51, ; 338
	i32 0, ; 339
	i32 246, ; 340
	i32 384, ; 341
	i32 61, ; 342
	i32 428, ; 343
	i32 381, ; 344
	i32 54, ; 345
	i32 4, ; 346
	i32 97, ; 347
	i32 227, ; 348
	i32 245, ; 349
	i32 408, ; 350
	i32 17, ; 351
	i32 422, ; 352
	i32 379, ; 353
	i32 154, ; 354
	i32 84, ; 355
	i32 226, ; 356
	i32 406, ; 357
	i32 220, ; 358
	i32 29, ; 359
	i32 45, ; 360
	i32 64, ; 361
	i32 66, ; 362
	i32 171, ; 363
	i32 285, ; 364
	i32 1, ; 365
	i32 320, ; 366
	i32 340, ; 367
	i32 47, ; 368
	i32 24, ; 369
	i32 253, ; 370
	i32 189, ; 371
	i32 181, ; 372
	i32 351, ; 373
	i32 164, ; 374
	i32 108, ; 375
	i32 12, ; 376
	i32 279, ; 377
	i32 63, ; 378
	i32 27, ; 379
	i32 23, ; 380
	i32 342, ; 381
	i32 93, ; 382
	i32 397, ; 383
	i32 407, ; 384
	i32 167, ; 385
	i32 384, ; 386
	i32 12, ; 387
	i32 395, ; 388
	i32 324, ; 389
	i32 199, ; 390
	i32 214, ; 391
	i32 410, ; 392
	i32 29, ; 393
	i32 434, ; 394
	i32 103, ; 395
	i32 14, ; 396
	i32 126, ; 397
	i32 357, ; 398
	i32 262, ; 399
	i32 294, ; 400
	i32 91, ; 401
	i32 283, ; 402
	i32 438, ; 403
	i32 387, ; 404
	i32 232, ; 405
	i32 215, ; 406
	i32 426, ; 407
	i32 9, ; 408
	i32 86, ; 409
	i32 273, ; 410
	i32 306, ; 411
	i32 71, ; 412
	i32 167, ; 413
	i32 1, ; 414
	i32 293, ; 415
	i32 5, ; 416
	i32 347, ; 417
	i32 44, ; 418
	i32 27, ; 419
	i32 207, ; 420
	i32 398, ; 421
	i32 188, ; 422
	i32 321, ; 423
	i32 157, ; 424
	i32 296, ; 425
	i32 112, ; 426
	i32 198, ; 427
	i32 357, ; 428
	i32 203, ; 429
	i32 182, ; 430
	i32 121, ; 431
	i32 419, ; 432
	i32 375, ; 433
	i32 177, ; 434
	i32 431, ; 435
	i32 407, ; 436
	i32 311, ; 437
	i32 0, ; 438
	i32 252, ; 439
	i32 331, ; 440
	i32 406, ; 441
	i32 404, ; 442
	i32 202, ; 443
	i32 397, ; 444
	i32 158, ; 445
	i32 180, ; 446
	i32 355, ; 447
	i32 131, ; 448
	i32 316, ; 449
	i32 57, ; 450
	i32 137, ; 451
	i32 83, ; 452
	i32 30, ; 453
	i32 263, ; 454
	i32 10, ; 455
	i32 362, ; 456
	i32 327, ; 457
	i32 313, ; 458
	i32 386, ; 459
	i32 170, ; 460
	i32 203, ; 461
	i32 260, ; 462
	i32 149, ; 463
	i32 94, ; 464
	i32 273, ; 465
	i32 60, ; 466
	i32 212, ; 467
	i32 362, ; 468
	i32 156, ; 469
	i32 193, ; 470
	i32 64, ; 471
	i32 409, ; 472
	i32 88, ; 473
	i32 372, ; 474
	i32 79, ; 475
	i32 47, ; 476
	i32 210, ; 477
	i32 239, ; 478
	i32 142, ; 479
	i32 329, ; 480
	i32 221, ; 481
	i32 366, ; 482
	i32 185, ; 483
	i32 345, ; 484
	i32 322, ; 485
	i32 267, ; 486
	i32 74, ; 487
	i32 91, ; 488
	i32 319, ; 489
	i32 135, ; 490
	i32 90, ; 491
	i32 305, ; 492
	i32 325, ; 493
	i32 264, ; 494
	i32 175, ; 495
	i32 429, ; 496
	i32 433, ; 497
	i32 327, ; 498
	i32 221, ; 499
	i32 112, ; 500
	i32 42, ; 501
	i32 158, ; 502
	i32 4, ; 503
	i32 103, ; 504
	i32 236, ; 505
	i32 359, ; 506
	i32 70, ; 507
	i32 196, ; 508
	i32 179, ; 509
	i32 60, ; 510
	i32 39, ; 511
	i32 254, ; 512
	i32 393, ; 513
	i32 176, ; 514
	i32 152, ; 515
	i32 370, ; 516
	i32 56, ; 517
	i32 34, ; 518
	i32 192, ; 519
	i32 212, ; 520
	i32 208, ; 521
	i32 251, ; 522
	i32 21, ; 523
	i32 162, ; 524
	i32 216, ; 525
	i32 317, ; 526
	i32 338, ; 527
	i32 315, ; 528
	i32 353, ; 529
	i32 334, ; 530
	i32 238, ; 531
	i32 310, ; 532
	i32 139, ; 533
	i32 341, ; 534
	i32 195, ; 535
	i32 89, ; 536
	i32 395, ; 537
	i32 371, ; 538
	i32 146, ; 539
	i32 266, ; 540
	i32 224, ; 541
	i32 161, ; 542
	i32 295, ; 543
	i32 392, ; 544
	i32 424, ; 545
	i32 6, ; 546
	i32 168, ; 547
	i32 31, ; 548
	i32 107, ; 549
	i32 382, ; 550
	i32 235, ; 551
	i32 276, ; 552
	i32 200, ; 553
	i32 339, ; 554
	i32 310, ; 555
	i32 191, ; 556
	i32 249, ; 557
	i32 303, ; 558
	i32 166, ; 559
	i32 277, ; 560
	i32 139, ; 561
	i32 59, ; 562
	i32 366, ; 563
	i32 143, ; 564
	i32 356, ; 565
	i32 424, ; 566
	i32 81, ; 567
	i32 230, ; 568
	i32 74, ; 569
	i32 130, ; 570
	i32 440, ; 571
	i32 25, ; 572
	i32 7, ; 573
	i32 418, ; 574
	i32 93, ; 575
	i32 307, ; 576
	i32 241, ; 577
	i32 236, ; 578
	i32 391, ; 579
	i32 243, ; 580
	i32 204, ; 581
	i32 113, ; 582
	i32 391, ; 583
	i32 9, ; 584
	i32 104, ; 585
	i32 239, ; 586
	i32 19, ; 587
	i32 201, ; 588
	i32 275, ; 589
	i32 289, ; 590
	i32 443, ; 591
	i32 269, ; 592
	i32 176, ; 593
	i32 33, ; 594
	i32 257, ; 595
	i32 46, ; 596
	i32 374, ; 597
	i32 440, ; 598
	i32 402, ; 599
	i32 30, ; 600
	i32 258, ; 601
	i32 57, ; 602
	i32 134, ; 603
	i32 114, ; 604
	i32 312, ; 605
	i32 323, ; 606
	i32 55, ; 607
	i32 197, ; 608
	i32 6, ; 609
	i32 77, ; 610
	i32 413, ; 611
	i32 225, ; 612
	i32 425, ; 613
	i32 268, ; 614
	i32 326, ; 615
	i32 347, ; 616
	i32 436, ; 617
	i32 111, ; 618
	i32 205, ; 619
	i32 272, ; 620
	i32 232, ; 621
	i32 438, ; 622
	i32 102, ; 623
	i32 385, ; 624
	i32 416, ; 625
	i32 169, ; 626
	i32 115, ; 627
	i32 335, ; 628
	i32 307, ; 629
	i32 262, ; 630
	i32 76, ; 631
	i32 318, ; 632
	i32 85, ; 633
	i32 320, ; 634
	i32 421, ; 635
	i32 255, ; 636
	i32 223, ; 637
	i32 356, ; 638
	i32 297, ; 639
	i32 159, ; 640
	i32 2, ; 641
	i32 268, ; 642
	i32 24, ; 643
	i32 248, ; 644
	i32 32, ; 645
	i32 117, ; 646
	i32 37, ; 647
	i32 16, ; 648
	i32 173, ; 649
	i32 52, ; 650
	i32 321, ; 651
	i32 235, ; 652
	i32 364, ; 653
	i32 20, ; 654
	i32 242, ; 655
	i32 123, ; 656
	i32 153, ; 657
	i32 436, ; 658
	i32 275, ; 659
	i32 218, ; 660
	i32 441, ; 661
	i32 399, ; 662
	i32 131, ; 663
	i32 257, ; 664
	i32 147, ; 665
	i32 177, ; 666
	i32 244, ; 667
	i32 120, ; 668
	i32 28, ; 669
	i32 132, ; 670
	i32 100, ; 671
	i32 134, ; 672
	i32 295, ; 673
	i32 152, ; 674
	i32 97, ; 675
	i32 125, ; 676
	i32 245, ; 677
	i32 69, ; 678
	i32 349, ; 679
	i32 223, ; 680
	i32 403, ; 681
	i32 363, ; 682
	i32 72, ; 683
	i32 350, ; 684
	i32 280, ; 685
	i32 358, ; 686
	i32 298, ; 687
	i32 394, ; 688
	i32 218, ; 689
	i32 136, ; 690
	i32 124, ; 691
	i32 71, ; 692
	i32 328, ; 693
	i32 111, ; 694
	i32 290, ; 695
	i32 173, ; 696
	i32 186, ; 697
	i32 151, ; 698
	i32 342, ; 699
	i32 408, ; 700
	i32 341, ; 701
	i32 401, ; 702
	i32 375, ; 703
	i32 358, ; 704
	i32 378, ; 705
	i32 318, ; 706
	i32 414, ; 707
	i32 118, ; 708
	i32 233, ; 709
	i32 266, ; 710
	i32 423, ; 711
	i32 174, ; 712
	i32 326, ; 713
	i32 127, ; 714
	i32 133, ; 715
	i32 187, ; 716
	i32 77, ; 717
	i32 46, ; 718
	i32 269, ; 719
	i32 73, ; 720
	i32 63, ; 721
	i32 425, ; 722
	i32 189, ; 723
	i32 98, ; 724
	i32 84, ; 725
	i32 343, ; 726
	i32 43, ; 727
	i32 61, ; 728
	i32 200, ; 729
	i32 296, ; 730
	i32 348, ; 731
	i32 184, ; 732
	i32 37, ; 733
	i32 40, ; 734
	i32 259, ; 735
	i32 324, ; 736
	i32 159, ; 737
	i32 98, ; 738
	i32 264, ; 739
	i32 227, ; 740
	i32 187, ; 741
	i32 383, ; 742
	i32 234, ; 743
	i32 427, ; 744
	i32 372, ; 745
	i32 381, ; 746
	i32 135, ; 747
	i32 20, ; 748
	i32 65, ; 749
	i32 330, ; 750
	i32 125, ; 751
	i32 75, ; 752
	i32 396, ; 753
	i32 288, ; 754
	i32 163, ; 755
	i32 237, ; 756
	i32 155, ; 757
	i32 5, ; 758
	i32 361, ; 759
	i32 219, ; 760
	i32 49, ; 761
	i32 302, ; 762
	i32 331, ; 763
	i32 439, ; 764
	i32 143, ; 765
	i32 138, ; 766
	i32 100, ; 767
	i32 209, ; 768
	i32 123, ; 769
	i32 120, ; 770
	i32 141, ; 771
	i32 39, ; 772
	i32 68, ; 773
	i32 194, ; 774
	i32 41, ; 775
	i32 350, ; 776
	i32 208, ; 777
	i32 163, ; 778
	i32 73, ; 779
	i32 389, ; 780
	i32 344, ; 781
	i32 164, ; 782
	i32 192, ; 783
	i32 127, ; 784
	i32 274, ; 785
	i32 323, ; 786
	i32 68, ; 787
	i32 405, ; 788
	i32 168, ; 789
	i32 190, ; 790
	i32 388, ; 791
	i32 287, ; 792
	i32 261, ; 793
	i32 214, ; 794
	i32 401, ; 795
	i32 294, ; 796
	i32 150, ; 797
	i32 45, ; 798
	i32 108, ; 799
	i32 48, ; 800
	i32 96, ; 801
	i32 31, ; 802
	i32 343, ; 803
	i32 23, ; 804
	i32 165, ; 805
	i32 22, ; 806
	i32 137, ; 807
	i32 419, ; 808
	i32 78, ; 809
	i32 351, ; 810
	i32 172, ; 811
	i32 54, ; 812
	i32 287, ; 813
	i32 292, ; 814
	i32 10, ; 815
	i32 250, ; 816
	i32 291, ; 817
	i32 432, ; 818
	i32 278, ; 819
	i32 389, ; 820
	i32 16, ; 821
	i32 361, ; 822
	i32 138, ; 823
	i32 206, ; 824
	i32 13, ; 825
	i32 199, ; 826
	i32 15, ; 827
	i32 122, ; 828
	i32 346, ; 829
	i32 87, ; 830
	i32 148, ; 831
	i32 22, ; 832
	i32 442, ; 833
	i32 336, ; 834
	i32 34, ; 835
	i32 79, ; 836
	i32 336, ; 837
	i32 316, ; 838
	i32 228, ; 839
	i32 373, ; 840
	i32 146, ; 841
	i32 80, ; 842
	i32 334, ; 843
	i32 174, ; 844
	i32 230, ; 845
	i32 243, ; 846
	i32 346, ; 847
	i32 42, ; 848
	i32 374, ; 849
	i32 410, ; 850
	i32 26, ; 851
	i32 289, ; 852
	i32 286, ; 853
	i32 107, ; 854
	i32 380, ; 855
	i32 110, ; 856
	i32 202, ; 857
	i32 337, ; 858
	i32 7, ; 859
	i32 386, ; 860
	i32 319, ; 861
	i32 369, ; 862
	i32 44, ; 863
	i32 330, ; 864
	i32 160, ; 865
	i32 181, ; 866
	i32 147, ; 867
	i32 402, ; 868
	i32 255, ; 869
	i32 291, ; 870
	i32 38, ; 871
	i32 15, ; 872
	i32 220, ; 873
	i32 229, ; 874
	i32 145, ; 875
	i32 8, ; 876
	i32 272, ; 877
	i32 293, ; 878
	i32 130, ; 879
	i32 340, ; 880
	i32 339, ; 881
	i32 335, ; 882
	i32 435, ; 883
	i32 309, ; 884
	i32 412, ; 885
	i32 231, ; 886
	i32 94 ; 887
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
