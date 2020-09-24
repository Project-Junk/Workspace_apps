.class public final Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;
.super Ljava/lang/Object;
.source "Extensions.kt"

# interfaces
.implements Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->invoke(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/github/javiersantos/piracychecker/ExtensionsKt$allow$2$1\n+ 2 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1\n*L\n1#1,46:1\n131#2,33:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0005"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/ExtensionsKt$allow$2$1",
        "Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;",
        "allow",
        "",
        "library_release",
        "com/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;


# direct methods
.method public constructor <init>(Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;)V
    .locals 0

    iput-object p1, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 10

    .line 23
    const/4 v0, 0x0

    .line 47
    .local v0, "$i$a$-allow-SubstratumLauncher$startAntiPiracyCheck$1$1$1":I
    iget-object v1, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v1, v1, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v1, v1, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v1}, Lsubstratum/theme/template/SubstratumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-static {v3}, Lsubstratum/theme/template/SubstratumLauncher;->access$getGetKeysIntent$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-static {v3}, Lsubstratum/theme/template/SubstratumLauncher;->access$getReceiveKeysIntent$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    :goto_0
    nop

    .line 53
    .local v1, "returnIntent":Landroid/content/Intent;
    iget-object v3, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    const v4, 0x7f0e0003

    invoke-virtual {v3, v4}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "themeName":Ljava/lang/String;
    iget-object v4, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v4, v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v4, v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    const/high16 v5, 0x7f0e0000

    invoke-virtual {v4, v5}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "themeAuthor":Ljava/lang/String;
    iget-object v5, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v5, v5, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v5, v5, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v5}, Lsubstratum/theme/template/SubstratumLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "themePid":Ljava/lang/String;
    const-string v6, "theme_name"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v6, "theme_author"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v6, "theme_pid"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-boolean v6, Lsubstratum/theme/template/BuildConfig;->DEBUG:Z

    const-string v7, "theme_debug"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    iget-object v6, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v6, v6, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v6, v6, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-static {v6}, Lsubstratum/theme/template/SubstratumLauncher;->access$getThemePiracyCheck$p(Lsubstratum/theme/template/SubstratumLauncher;)Z

    move-result v6

    const-string v7, "theme_piracy_check"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    sget-object v6, Lsubstratum/theme/template/BuildConfig;->DECRYPTION_KEY:[B

    const-string v7, "encryption_key"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 62
    sget-object v6, Lsubstratum/theme/template/BuildConfig;->IV_KEY:[B

    const-string v7, "iv_encrypt_key"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 64
    iget-object v6, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v6, v6, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v6, v6, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v6}, Lsubstratum/theme/template/SubstratumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "calling_package_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "callingPackage":Ljava/lang/String;
    sget-object v7, Lsubstratum/theme/template/ThemeFunctions;->INSTANCE:Lsubstratum/theme/template/ThemeFunctions;

    const-string v8, "callingPackage"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lsubstratum/theme/template/ThemeFunctions;->isCallingPackageAllowed(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    iget-object v7, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v7}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :goto_1
    nop

    .line 71
    iget-object v7, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v7}, Lsubstratum/theme/template/SubstratumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v8, v8, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v8, v8, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-static {v8}, Lsubstratum/theme/template/SubstratumLauncher;->access$getSubstratumIntentData$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    sget-object v7, Lsubstratum/theme/template/ThemeFunctions;->INSTANCE:Lsubstratum/theme/template/ThemeFunctions;

    iget-object v8, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v8, v8, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v8, v8, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v8}, Lsubstratum/theme/template/SubstratumLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "applicationContext"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lsubstratum/theme/template/ThemeFunctions;->getSelfSignature(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v2, v7, v1}, Lsubstratum/theme/template/SubstratumLauncher;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 73
    :cond_2
    iget-object v7, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v7}, Lsubstratum/theme/template/SubstratumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v7, v7, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-static {v7}, Lsubstratum/theme/template/SubstratumLauncher;->access$getGetKeysIntent$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-static {v2}, Lsubstratum/theme/template/SubstratumLauncher;->access$getReceiveKeysIntent$p(Lsubstratum/theme/template/SubstratumLauncher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v2, v1}, Lsubstratum/theme/template/SubstratumLauncher;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    :cond_3
    :goto_2
    nop

    .line 77
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->$this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->destroy()V

    .line 78
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v2}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    .line 79
    .end local v1    # "returnIntent":Landroid/content/Intent;
    .end local v3    # "themeName":Ljava/lang/String;
    .end local v4    # "themeAuthor":Ljava/lang/String;
    .end local v5    # "themePid":Ljava/lang/String;
    .end local v6    # "callingPackage":Ljava/lang/String;
    return-void
.end method
