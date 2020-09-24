.class public Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ClearDefaultsPreferenceAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/ClearDefaultsPreference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId(I)I
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d0074

    return p1
.end method
