.class public final Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;
.super Ljava/lang/Object;
.source "PiracyCheckerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;",
        "",
        "()V",
        "content",
        "",
        "pcDialog",
        "Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;",
        "title",
        "newInstance",
        "dialogTitle",
        "dialogContent",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 23
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;
    .locals 1
    .param p1, "dialogTitle"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "dialogContent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "dialogTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    invoke-direct {v0}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;-><init>()V

    invoke-static {v0}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->access$setPcDialog$cp(Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;)V

    .line 30
    invoke-static {p1}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->access$setTitle$cp(Ljava/lang/String;)V

    .line 31
    invoke-static {p2}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->access$setContent$cp(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->access$getPcDialog$cp()Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    move-result-object v0

    return-object v0
.end method
