.class public final Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;
.super Ljava/lang/Object;
.source "Extensions.kt"

# interfaces
.implements Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->invoke(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$2$1\n+ 2 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1\n*L\n1#1,46:1\n165#2,7:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\t"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$2$1",
        "Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;",
        "doNotAllow",
        "",
        "error",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "app",
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
        "library_release",
        "com/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$$inlined$apply$lambda$1"
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

    iput-object p1, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V
    .locals 7
    .param p1, "error"    # Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "app"    # Lcom/github/javiersantos/piracychecker/enums/PirateApp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p1

    .local v0, "$noName_0":Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
    move-object v1, p2

    .local v1, "$noName_1":Lcom/github/javiersantos/piracychecker/enums/PirateApp;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$a$-doNotAllow-SubstratumLauncher$startAntiPiracyCheck$1$1$2":I
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 48
    iget-object v3, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v3, v3, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    const v4, 0x7f0e004d

    invoke-virtual {v3, v4}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.toast_unlicensed)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    iget-object v5, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v5, v5, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v5, v5, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    const v6, 0x7f0e0003

    invoke-virtual {v5, v6}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 47
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .local v3, "parse":Ljava/lang/String;
    iget-object v4, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v4, v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v4, v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    check-cast v4, Landroid/content/Context;

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 51
    iget-object v4, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v4, v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->$this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v4}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->destroy()V

    .line 52
    iget-object v4, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v4, v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v4, v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v4}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    .line 53
    .end local v3    # "parse":Ljava/lang/String;
    return-void
.end method

.method public dontAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V
    .locals 1
    .param p1, "error"    # Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "app"    # Lcom/github/javiersantos/piracychecker/enums/PirateApp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "dontAllow has been deprecated in favor of doNotAllow"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "doNotAllow"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p0, p1, p2}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback$DefaultImpls;->dontAllow(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    return-void
.end method
