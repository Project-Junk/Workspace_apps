.class public interface abstract Lcom/coloros/settingslib/applications/ApplicationsState$d;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract onAllSizesComputed()V
.end method

.method public abstract onLauncherInfoChanged()V
.end method

.method public abstract onLoadEntriesCompleted()V
.end method

.method public abstract onPackageIconChanged()V
.end method

.method public abstract onPackageListChanged()V
.end method

.method public abstract onPackageSizeChanged(Ljava/lang/String;)V
.end method

.method public abstract onRebuildComplete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRunningStateChanged(Z)V
.end method
