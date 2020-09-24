.class public Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "FallbackHomeAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/FallbackHome;",
        ">;"
    }
.end annotation


# static fields
.field private static sIsFallbackHomeActive:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method

.method public static isFullbackHomeActive()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;->sIsFallbackHomeActive:Z

    return v0
.end method

.method public static setFallbackHomeActiveStatus(Z)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/color/injector/adaptor/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    sput-boolean p0, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;->sIsFallbackHomeActive:Z

    return-void
.end method
