.class public final Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;
.super Ljava/lang/Object;
.source "PiracyCheckerCallbacksDSL.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;",
        "",
        "checker",
        "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
        "(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V",
        "allow",
        "allowCallback",
        "Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;",
        "doNotAllow",
        "doNotAllowCallback",
        "Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;",
        "onError",
        "onErrorCallback",
        "Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final checker:Lcom/github/javiersantos/piracychecker/PiracyChecker;


# direct methods
.method public constructor <init>(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V
    .locals 1
    .param p1, "checker"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "checker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;->checker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    return-void
.end method


# virtual methods
.method public final allow(Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "allowCallback"    # Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "allowCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;->checker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback(Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    move-result-object v0

    return-object v0
.end method

.method public final doNotAllow(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "doNotAllowCallback"    # Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "doNotAllowCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;->checker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    move-result-object v0

    return-object v0
.end method

.method public final onError(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "onErrorCallback"    # Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onErrorCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;->checker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    move-result-object v0

    return-object v0
.end method
