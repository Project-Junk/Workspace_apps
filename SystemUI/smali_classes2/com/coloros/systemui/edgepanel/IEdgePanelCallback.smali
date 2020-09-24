.class public interface abstract Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;
.super Ljava/lang/Object;
.source "IEdgePanelCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;,
        Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onDockedStackExistsChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMinimize(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
