.class public final Lsubstratum/theme/template/SubstratumLauncher;
.super Landroid/app/Activity;
.source "SubstratumLauncher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubstratumLauncher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n3271#2:207\n3688#2,2:208\n1586#3,2:210\n*E\n*S KotlinDebug\n*F\n+ 1 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher\n*L\n83#1:207\n83#1,2:208\n84#1,2:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002J\u0008\u0010\u0014\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lsubstratum/theme/template/SubstratumLauncher;",
        "Landroid/app/Activity;",
        "()V",
        "debug",
        "",
        "getKeysIntent",
        "",
        "receiveKeysIntent",
        "substratumIntentData",
        "tag",
        "themePiracyCheck",
        "getThemePiracyCheck",
        "()Z",
        "themePiracyCheck$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showDialog",
        "startAntiPiracyCheck",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final debug:Z

.field private final getKeysIntent:Ljava/lang/String;

.field private final receiveKeysIntent:Ljava/lang/String;

.field private final substratumIntentData:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final themePiracyCheck$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lsubstratum/theme/template/SubstratumLauncher;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "themePiracyCheck"

    const-string v4, "getThemePiracyCheck()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lsubstratum/theme/template/SubstratumLauncher;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "SubstratumThemeReport"

    iput-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->tag:Ljava/lang/String;

    .line 39
    const-string v0, "projekt.substratum.THEME"

    iput-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->substratumIntentData:Ljava/lang/String;

    .line 40
    const-string v0, "projekt.substratum.GET_KEYS"

    iput-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->getKeysIntent:Ljava/lang/String;

    .line 41
    const-string v0, "projekt.substratum.RECEIVE_KEYS"

    iput-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->receiveKeysIntent:Ljava/lang/String;

    .line 43
    new-instance v0, Lsubstratum/theme/template/SubstratumLauncher$themePiracyCheck$2;

    invoke-direct {v0, p0}, Lsubstratum/theme/template/SubstratumLauncher$themePiracyCheck$2;-><init>(Lsubstratum/theme/template/SubstratumLauncher;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->themePiracyCheck$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getGetKeysIntent$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lsubstratum/theme/template/SubstratumLauncher;

    .line 35
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->getKeysIntent:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getReceiveKeysIntent$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lsubstratum/theme/template/SubstratumLauncher;

    .line 35
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->receiveKeysIntent:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSubstratumIntentData$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lsubstratum/theme/template/SubstratumLauncher;

    .line 35
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->substratumIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getThemePiracyCheck$p(Lsubstratum/theme/template/SubstratumLauncher;)Z
    .locals 1
    .param p0, "$this"    # Lsubstratum/theme/template/SubstratumLauncher;

    .line 35
    invoke-direct {p0}, Lsubstratum/theme/template/SubstratumLauncher;->getThemePiracyCheck()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$startAntiPiracyCheck(Lsubstratum/theme/template/SubstratumLauncher;)V
    .locals 0
    .param p0, "$this"    # Lsubstratum/theme/template/SubstratumLauncher;

    .line 35
    invoke-direct {p0}, Lsubstratum/theme/template/SubstratumLauncher;->startAntiPiracyCheck()V

    return-void
.end method

.method private final getThemePiracyCheck()Z
    .locals 3

    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->themePiracyCheck$delegate:Lkotlin/Lazy;

    sget-object v1, Lsubstratum/theme/template/SubstratumLauncher;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final showDialog()V
    .locals 6

    .line 187
    nop

    .line 192
    nop

    .line 187
    nop

    .line 191
    nop

    .line 187
    nop

    .line 190
    nop

    .line 187
    nop

    .line 189
    nop

    .line 187
    nop

    .line 188
    nop

    .line 187
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0f00c5

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    const/high16 v2, 0x7f0d0000

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    const v2, 0x7f0e003c

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    const v2, 0x7f0e0038

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    new-instance v2, Lsubstratum/theme/template/SubstratumLauncher$showDialog$dialog$1;

    invoke-direct {v2, p0}, Lsubstratum/theme/template/SubstratumLauncher$showDialog$dialog$1;-><init>(Lsubstratum/theme/template/SubstratumLauncher;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f0e003b

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 187
    nop

    .line 193
    .local v0, "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const v2, 0x7f0e0039

    invoke-virtual {p0, v2}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.launch_dialog_negative)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 194
    const v3, 0x7f0e003a

    invoke-virtual {p0, v3}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(R.string.launch_dialog_negative_url)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v1, v4

    :cond_1
    if-eqz v1, :cond_2

    .line 195
    new-instance v1, Lsubstratum/theme/template/SubstratumLauncher$showDialog$1;

    invoke-direct {v1, p0}, Lsubstratum/theme/template/SubstratumLauncher$showDialog$1;-><init>(Lsubstratum/theme/template/SubstratumLauncher;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 201
    :cond_2
    new-instance v1, Lsubstratum/theme/template/SubstratumLauncher$showDialog$2;

    invoke-direct {v1, p0}, Lsubstratum/theme/template/SubstratumLauncher$showDialog$2;-><init>(Lsubstratum/theme/template/SubstratumLauncher;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 202
    :cond_3
    :goto_1
    nop

    .line 204
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 205
    return-void
.end method

.method private final startAntiPiracyCheck()V
    .locals 3

    .line 114
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->debug:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lsubstratum/theme/template/BuildConfig;->DEBUG:Z

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher;->tag:Ljava/lang/String;

    invoke-static {p0}, Lcom/github/javiersantos/piracychecker/utils/LibraryUtilsKt;->getApkSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    invoke-direct {p0}, Lsubstratum/theme/template/SubstratumLauncher;->getThemePiracyCheck()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    nop

    .line 179
    nop

    .line 119
    new-instance v0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    invoke-direct {v0, p0}, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;-><init>(Lsubstratum/theme/template/SubstratumLauncher;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lcom/github/javiersantos/piracychecker/ExtensionsKt;->piracyChecker(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->start()V

    goto :goto_1

    .line 181
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f0e004e

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    invoke-virtual {p0}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    .line 183
    :goto_1
    nop

    .line 184
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 52
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lsubstratum/theme/template/SubstratumLauncher;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "caller":Ljava/lang/String;
    sget-object v2, Lsubstratum/theme/template/AdvancedConstants;->INSTANCE:Lsubstratum/theme/template/AdvancedConstants;

    invoke-virtual {v2}, Lsubstratum/theme/template/AdvancedConstants;->getORGANIZATION_THEME_SYSTEMS()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 57
    .local v2, "organizationsSystem":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    sget-object v5, Lsubstratum/theme/template/AdvancedConstants;->INSTANCE:Lsubstratum/theme/template/AdvancedConstants;

    invoke-virtual {v5}, Lsubstratum/theme/template/AdvancedConstants;->getOTHER_THEME_SYSTEMS()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 58
    .local v5, "supportedSystem":Z
    :goto_1
    const/16 v6, 0x29

    if-nez v5, :cond_3

    .line 59
    iget-object v7, v0, Lsubstratum/theme/template/SubstratumLauncher;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This theme does not support the launching theme system. [HIJACK] ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    nop

    .line 62
    nop

    .line 60
    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    .line 61
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v8, 0x7f0e0052

    invoke-virtual {v0, v8}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.unaut\u2026ized_theme_client_hijack)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v3

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "java.lang.String.format(format, *args)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    .line 62
    nop

    .line 60
    invoke-static {v7, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 62
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    .line 65
    :cond_3
    iget-boolean v7, v0, Lsubstratum/theme/template/SubstratumLauncher;->debug:Z

    const/16 v8, 0x27

    if-eqz v7, :cond_4

    .line 66
    iget-object v7, v0, Lsubstratum/theme/template/SubstratumLauncher;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' has been authorized to launch this theme. (Phase 1)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lsubstratum/theme/template/SubstratumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v9, "intent"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lsubstratum/theme/template/SubstratumLauncher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 72
    .local v9, "sharedPref":Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    .line 73
    .local v10, "verified":Z
    iget-object v11, v0, Lsubstratum/theme/template/SubstratumLauncher;->substratumIntentData:Ljava/lang/String;

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v0, Lsubstratum/theme/template/SubstratumLauncher;->getKeysIntent:Ljava/lang/String;

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    if-eqz v11, :cond_6

    .line 75
    if-eqz v2, :cond_5

    .line 76
    nop

    .line 77
    nop

    .line 76
    move v10, v4

    move-object/from16 v18, v1

    goto :goto_5

    .line 75
    :cond_5
    move-object/from16 v18, v1

    goto :goto_5

    .line 82
    :cond_6
    nop

    .line 84
    nop

    .line 82
    nop

    .line 83
    nop

    .line 82
    sget-object v11, Lsubstratum/theme/template/AdvancedConstants;->INSTANCE:Lsubstratum/theme/template/AdvancedConstants;

    invoke-virtual {v11}, Lsubstratum/theme/template/AdvancedConstants;->getOTHER_THEME_SYSTEMS()[Ljava/lang/String;

    move-result-object v11

    .line 83
    .local v11, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v12, 0x0

    .line 207
    .local v12, "$i$f$filter":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v15, 0x0

    .line 208
    .local v15, "$i$f$filterTo":I
    array-length v3, v14

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_9

    aget-object v6, v14, v8

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v6

    .local v16, "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 83
    .local v17, "$i$a$-filter-SubstratumLauncher$onCreate$1":I
    if-eqz v7, :cond_7

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    .end local v16    # "it":Ljava/lang/String;
    .local v1, "it":Ljava/lang/String;
    .local v18, "caller":Ljava/lang/String;
    invoke-static {v7, v1, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    goto :goto_3

    .end local v18    # "caller":Ljava/lang/String;
    .local v1, "caller":Ljava/lang/String;
    .restart local v16    # "it":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v1, v16

    .end local v16    # "it":Ljava/lang/String;
    .local v1, "it":Ljava/lang/String;
    .restart local v18    # "caller":Ljava/lang/String;
    const/16 v16, 0x0

    .end local v1    # "it":Ljava/lang/String;
    .end local v17    # "$i$a$-filter-SubstratumLauncher$onCreate$1":I
    :goto_3
    if-eqz v16, :cond_8

    invoke-interface {v13, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v18

    const/16 v6, 0x29

    goto :goto_2

    .line 209
    .end local v18    # "caller":Ljava/lang/String;
    .local v1, "caller":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v1

    .end local v1    # "caller":Ljava/lang/String;
    .restart local v18    # "caller":Ljava/lang/String;
    move-object v1, v13

    check-cast v1, Ljava/util/List;

    .end local v11    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v12    # "$i$f$filter":I
    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v15    # "$i$f$filterTo":I
    check-cast v1, Ljava/lang/Iterable;

    .line 84
    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 210
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 84
    .local v12, "$i$a$-forEach-SubstratumLauncher$onCreate$2":I
    const/4 v10, 0x1

    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-SubstratumLauncher$onCreate$2":I
    goto :goto_4

    .line 211
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_a
    nop

    .line 85
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    :goto_5
    nop

    .line 86
    if-nez v10, :cond_b

    .line 87
    iget-object v1, v0, Lsubstratum/theme/template/SubstratumLauncher;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This theme does not support the launching theme system. ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f0e0051

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    .line 90
    return-void

    .line 92
    :cond_b
    iget-boolean v1, v0, Lsubstratum/theme/template/SubstratumLauncher;->debug:Z

    if-eqz v1, :cond_c

    .line 93
    iget-object v1, v0, Lsubstratum/theme/template/SubstratumLauncher;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' has been authorized to launch this theme. (Phase 2)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_c
    nop

    .line 107
    nop

    .line 109
    invoke-direct/range {p0 .. p0}, Lsubstratum/theme/template/SubstratumLauncher;->startAntiPiracyCheck()V

    .line 110
    nop

    .line 111
    return-void
.end method
