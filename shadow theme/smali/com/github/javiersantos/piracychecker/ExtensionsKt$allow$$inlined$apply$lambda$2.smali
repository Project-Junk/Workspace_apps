.class public final Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "Extensions.kt"

# interfaces
.implements Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javiersantos/piracychecker/ExtensionsKt;->allow(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function0;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/github/javiersantos/piracychecker/ExtensionsKt$allow$2$1\n*L\n1#1,46:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/ExtensionsKt$allow$2$1",
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
.field final synthetic $allow$inlined:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$2;->$allow$inlined:Lkotlin/jvm/functions/Function0;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$2;->$allow$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
