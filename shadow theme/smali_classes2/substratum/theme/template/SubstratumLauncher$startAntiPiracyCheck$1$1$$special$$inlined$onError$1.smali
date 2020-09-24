.class public final Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$onError$1;
.super Ljava/lang/Object;
.source "Extensions.kt"

# interfaces
.implements Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->invoke(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/github/javiersantos/piracychecker/ExtensionsKt$onError$2$1\n+ 2 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1\n*L\n1#1,46:1\n173#2,5:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0007"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/ExtensionsKt$onError$2$1",
        "Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;",
        "onError",
        "",
        "error",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "library_release",
        "com/github/javiersantos/piracychecker/ExtensionsKt$onError$$inlined$apply$lambda$1"
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

    iput-object p1, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$onError$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;)V
    .locals 5
    .param p1, "error"    # Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0, p1}, Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback$DefaultImpls;->onError(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;)V

    .line 39
    move-object v0, p1

    .local v0, "error":Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
    const/4 v1, 0x0

    .line 47
    .local v1, "$i$a$-onError-SubstratumLauncher$startAntiPiracyCheck$1$1$3":I
    nop

    .line 48
    nop

    .line 47
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$onError$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 49
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$onError$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->$this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->destroy()V

    .line 50
    iget-object v2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$onError$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iget-object v2, v2, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v2}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    .line 51
    .end local v0    # "error":Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
    .end local v1    # "$i$a$-onError-SubstratumLauncher$startAntiPiracyCheck$1$1$3":I
    nop

    .line 40
    return-void
.end method
