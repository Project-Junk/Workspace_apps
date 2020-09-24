.class public final Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$1;
.super Ljava/lang/Object;
.source "PiracyChecker.kt"

# interfaces
.implements Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;


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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/PiracyChecker$callback$1",
        "Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;",
        "allow",
        "",
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

    .line 273
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$1;->$callback:Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$1;->$callback:Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;->allow()V

    .line 276
    return-void
.end method
