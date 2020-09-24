.class public final Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Extensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javiersantos/piracychecker/ExtensionsKt;->doNotAllow$default(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1\n*L\n1#1,46:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "<anonymous parameter 1>",
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;

    invoke-direct {v0}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;-><init>()V

    sput-object v0, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;->INSTANCE:Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    check-cast p2, Lcom/github/javiersantos/piracychecker/enums/PirateApp;

    invoke-virtual {p0, p1, p2}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;->invoke(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V
    .locals 1
    .param p1, "$noName_0"    # Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$noName_1"    # Lcom/github/javiersantos/piracychecker/enums/PirateApp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-void
.end method
