.class public interface abstract Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/app/ActivityManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProcessObserverNative"
.end annotation


# virtual methods
.method public abstract onForegroundActivitiesChanged(IIZ)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method

.method public abstract onForegroundServicesChanged(III)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method

.method public abstract onProcessDied(II)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method