.class final Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SubstratumLauncher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsubstratum/theme/template/SubstratumLauncher;->startAntiPiracyCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubstratumLauncher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1\n*L\n1#1,206:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsubstratum/theme/template/SubstratumLauncher;


# direct methods
.method constructor <init>(Lsubstratum/theme/template/SubstratumLauncher;)V
    .locals 0

    iput-object p1, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {p0, p1}, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->invoke(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V
    .locals 4
    .param p1, "$this$piracyChecker"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    nop

    .line 123
    const-string v0, ""

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p1, v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableGooglePlayLicensing(Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 126
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {p1, v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableSigningCertificate(Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 129
    :cond_3
    new-instance v0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;

    invoke-direct {v0, p0, p1}, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;-><init>(Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;Lcom/github/javiersantos/piracychecker/PiracyChecker;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/github/javiersantos/piracychecker/ExtensionsKt;->callback(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function1;)V

    .line 179
    return-void
.end method
