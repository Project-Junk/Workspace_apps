.class public interface abstract Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;
.super Ljava/lang/Object;
.source "ConnectivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/net/ConnectivityManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStartTetheringCallbackNative"
.end annotation


# virtual methods
.method public abstract onTetheringFailed()V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation
.end method

.method public abstract onTetheringStarted()V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation
.end method
