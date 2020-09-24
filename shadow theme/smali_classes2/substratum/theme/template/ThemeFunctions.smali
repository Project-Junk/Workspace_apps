.class public final Lsubstratum/theme/template/ThemeFunctions;
.super Ljava/lang/Object;
.source "ThemeFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeFunctions.kt\nsubstratum/theme/template/ThemeFunctions\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,108:1\n1382#2,3:109\n1586#2,2:117\n10070#3,2:112\n3271#3:114\n3688#3,2:115\n*E\n*S KotlinDebug\n*F\n+ 1 ThemeFunctions.kt\nsubstratum/theme/template/ThemeFunctions\n*L\n26#1,3:109\n46#1,2:117\n27#1,2:112\n33#1:114\n33#1,2:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u000eR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lsubstratum/theme/template/ThemeFunctions;",
        "",
        "()V",
        "SIGNATURES",
        "",
        "Landroid/content/pm/Signature;",
        "[Landroid/content/pm/Signature;",
        "SUBSTRATUM_CI_SIGNATURE",
        "SUBSTRATUM_SIGNATURE",
        "checkApprovedSignature",
        "",
        "context",
        "Landroid/content/Context;",
        "packageName",
        "",
        "getSelfSignature",
        "",
        "getSelfVerifiedPirateTools",
        "isCallingPackageAllowed",
        "packageId",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lsubstratum/theme/template/ThemeFunctions;

.field private static final SIGNATURES:[Landroid/content/pm/Signature;

.field private static final SUBSTRATUM_CI_SIGNATURE:Landroid/content/pm/Signature;

.field private static final SUBSTRATUM_SIGNATURE:Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lsubstratum/theme/template/ThemeFunctions;

    invoke-direct {v0}, Lsubstratum/theme/template/ThemeFunctions;-><init>()V

    sput-object v0, Lsubstratum/theme/template/ThemeFunctions;->INSTANCE:Lsubstratum/theme/template/ThemeFunctions;

    .line 67
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308202eb308201d3a003020102020411c02f2f300d06092a864886f70d01010b05003026312430220603550403131b5375627374726174756d20446576656c6f706d656e74205465616d301e170d3136303730333032333335385a170d3431303632373032333335385a3026312430220603550403131b5375627374726174756d20446576656c6f706d656e74205465616d30820122300d06092a864886f70d01010105000382010f003082010a02820101008855626336f645a335aa5d40938f15db911556385f72f72b5f8bad01339aaf82ae2d30302d3f2bba26126e8da8e76a834e9da200cdf66d1d5977c90a4e4172ce455704a22bbe4a01b08478673b37d23c34c8ade3ec040a704da8570d0a17fce3c7397ea63ebcde3a2a3c7c5f983a163e4cd5a1fc80c735808d014df54120e2e5708874739e22e5a22d50e1c454b2ae310b480825ab3d877f675d6ac1293222602a53080f94e4a7f0692b627905f69d4f0bb1dfd647e281cc0695e0733fa3efc57d88706d4426c4969aff7a177ac2d9634401913bb20a93b6efe60e790e06dad3493776c2c0878ce82caababa183b494120edde3d823333efd464c8aea1f51f330203010001a321301f301d0603551d0e04160414203ec8b075d1c9eb9d600100281c3924a831a46c300d06092a864886f70d01010b0500038201010042d4bd26d535ce2bf0375446615ef5bf25973f61ecf955bdb543e4b6e6b5d026fdcab09fec09c747fb26633c221df8e3d3d0fe39ce30ca0a31547e9ec693a0f2d83e26d231386ff45f8e4fd5c060958681f9d3bd6db5e940b1e4a0b424f5c463c79c5748a14a3a38da4dd7a5499dcc14a70ba82a50be5fe082890c89a27e56067d2eae952e0bcba4d6beb5359520845f1fdb7df99868786055555187ba46c69ee67fa2d2c79e74a364a8b3544997dc29cc625395e2f45bf8bdb2c9d8df0d5af1a59a58ad08b32cdbec3819fa49201bb5b5aadeee8f2f096ac029055713b77054e8af07cd61fe97f7365d0aa92d570be98acb8941b8a2b0053b54f18bfde092eb"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsubstratum/theme/template/ThemeFunctions;->SUBSTRATUM_SIGNATURE:Landroid/content/pm/Signature;

    .line 89
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308201dd30820146020101300d06092a864886f70d010105050030373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b3009060355040613025553301e170d3137303232333036303730325a170d3437303231363036303730325a30373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b300906035504061302555330819f300d06092a864886f70d010101050003818d00308189028181008aa6cf56e3ba4d0921da3baf527529205efbe440e1f351c40603afa5e6966e6a6ef2def780c8be80d189dc6101935e6f8340e61dc699cfd34d50e37d69bf66fbb58619d0ebf66f22db5dbe240b6087719aa3ceb1c68f3fa277b8846f1326763634687cc286b0760e51d1b791689fa2d948ae5f31cb8e807e00bd1eb72788b2330203010001300d06092a864886f70d0101050500038181007b2b7e432bff612367fbb6fdf8ed0ad1a19b969e4c4ddd8837d71ae2ec0c35f52fe7c8129ccdcdc41325f0bcbc90c38a0ad6fc0c604a73720917d37421955c47f9104ea56ad05031b90c748b94831969a266fa7c55bc083e20899a13089402be49a5edc769811adc2b0496a8a066924af9eeb33f8d57d625a5fa150f7bc18e55"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsubstratum/theme/template/ThemeFunctions;->SUBSTRATUM_CI_SIGNATURE:Landroid/content/pm/Signature;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 105
    sget-object v1, Lsubstratum/theme/template/ThemeFunctions;->SUBSTRATUM_SIGNATURE:Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 106
    sget-object v1, Lsubstratum/theme/template/ThemeFunctions;->SUBSTRATUM_CI_SIGNATURE:Landroid/content/pm/Signature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 104
    sput-object v0, Lsubstratum/theme/template/ThemeFunctions;->SIGNATURES:[Landroid/content/pm/Signature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkApprovedSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    nop

    .line 46
    nop

    .line 33
    sget-object v3, Lsubstratum/theme/template/ThemeFunctions;->SIGNATURES:[Landroid/content/pm/Signature;

    .local v3, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$f$filter":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v3

    .local v5, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    move-object v6, v0

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 115
    .local v7, "$i$f$filterTo":I
    array-length v0, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v0, :cond_2

    aget-object v10, v5, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Landroid/content/pm/Signature;
    const/4 v12, 0x0

    .line 34
    .local v12, "$i$a$-filter-ThemeFunctions$checkApprovedSignature$1":I
    nop

    .line 35
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 36
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v13, 0x40

    invoke-virtual {v0, v1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 37
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    nop

    .line 38
    nop

    .line 39
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v14, :cond_1

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v14, v14

    if-ne v14, v8, :cond_1

    sget-object v14, Lsubstratum/theme/template/ThemeFunctions;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v14, v14, v9

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v15, v15, v9

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    sget-object v14, Lsubstratum/theme/template/ThemeFunctions;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v14, v14, v8

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v15, v15, v9

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v14, :cond_1

    .line 40
    :cond_0
    return v8

    .line 42
    :cond_1
    return v9

    .line 43
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    return v9

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "it":Landroid/content/pm/Signature;
    .end local v12    # "$i$a$-filter-ThemeFunctions$checkApprovedSignature$1":I
    :cond_2
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .end local v3    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$filter":I
    .end local v5    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$filterTo":I
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/content/pm/Signature;

    .local v5, "it":Landroid/content/pm/Signature;
    const/4 v6, 0x0

    .line 46
    .local v6, "$i$a$-forEach-ThemeFunctions$checkApprovedSignature$2":I
    return v8

    .line 118
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Landroid/content/pm/Signature;
    .end local v6    # "$i$a$-forEach-ThemeFunctions$checkApprovedSignature$2":I
    :cond_3
    nop

    .line 47
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    return v9
.end method

.method public final getSelfSignature(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    nop

    .line 54
    nop

    .line 57
    nop

    .line 54
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 56
    const/16 v3, 0x40

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 58
    .local v1, "sigs":[Landroid/content/pm/Signature;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->hashCode()I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 59
    .end local v1    # "sigs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 61
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 63
    return v0
.end method

.method public final getSelfVerifiedPirateTools(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 24
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 25
    .local v1, "packages":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v2, "listOfInstalled":Ljava/util/ArrayList;
    const-string v3, "packages"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$mapTo$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 109
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 110
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    move-object v8, v6

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .local v8, "it":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 26
    .local v9, "$i$a$-mapTo-ThemeFunctions$getSelfVerifiedPirateTools$1":I
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v11, "it.packageName"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v8    # "it":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "$i$a$-mapTo-ThemeFunctions$getSelfVerifiedPirateTools$1":I
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v6    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 111
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    .line 27
    .end local v3    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    sget-object v3, Lsubstratum/theme/template/AdvancedConstants;->INSTANCE:Lsubstratum/theme/template/AdvancedConstants;

    invoke-virtual {v3}, Lsubstratum/theme/template/AdvancedConstants;->getBLACKLISTED_APPLICATIONS()[Ljava/lang/String;

    move-result-object v3

    .local v3, "$this$any$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 112
    .local v4, "$i$f$any":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_2

    aget-object v8, v3, v7

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 27
    .local v10, "$i$a$-any-ThemeFunctions$getSelfVerifiedPirateTools$2":I
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-ThemeFunctions$getSelfVerifiedPirateTools$2":I
    if-eqz v9, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 113
    :cond_2
    nop

    .end local v3    # "$this$any$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$any":I
    :goto_2
    return v6
.end method

.method public final isCallingPackageAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    nop

    .line 19
    sget-object v0, Lsubstratum/theme/template/AdvancedConstants;->INSTANCE:Lsubstratum/theme/template/AdvancedConstants;

    invoke-virtual {v0}, Lsubstratum/theme/template/AdvancedConstants;->getORGANIZATION_THEME_SYSTEMS()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
