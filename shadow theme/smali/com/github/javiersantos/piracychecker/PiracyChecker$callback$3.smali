.class public final Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$3;
.super Ljava/lang/Object;
.source "PiracyChecker.kt"

# interfaces
.implements Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;


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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/PiracyChecker$callback$3",
        "Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;",
        "onError",
        "",
        "error",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
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

    .line 283
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$3;->$callback:Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;)V
    .locals 1
    .param p1, "error"    # Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-static {p0, p1}, Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback$DefaultImpls;->onError(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;)V

    .line 286
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$3;->$callback:Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    invoke-virtual {v0, p1}, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;->onError(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;)V

    .line 287
    return-void
.end method
