.class public final Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$2;
.super Ljava/lang/Object;
.source "PiracyChecker.kt"

# interfaces
.implements Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javiersantos/piracychecker/PiracyChecker;->callback(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/PiracyChecker$callback$2",
        "Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;",
        "doNotAllow",
        "",
        "error",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "app",
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
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
.field final synthetic $callback:Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;


# direct methods
.method constructor <init>(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    .line 278
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$2;->$callback:Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V
    .locals 1
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

    .line 280
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$2;->$callback:Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    invoke-virtual {v0, p1, p2}, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    .line 281
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

    .line 278
    invoke-static {p0, p1, p2}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback$DefaultImpls;->dontAllow(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    return-void
.end method
