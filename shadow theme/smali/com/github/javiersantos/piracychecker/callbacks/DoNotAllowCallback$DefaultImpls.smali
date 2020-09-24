.class public final Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "PiracyCheckerCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static dontAllow(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;
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

    .line 16
    invoke-interface {p0, p1, p2}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    return-void
.end method
