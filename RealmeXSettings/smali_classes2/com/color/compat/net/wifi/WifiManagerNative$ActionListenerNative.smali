.class public interface abstract Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;
.super Ljava/lang/Object;
.source "WifiManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/net/wifi/WifiManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionListenerNative"
.end annotation


# virtual methods
.method public abstract onFailure(I)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method
