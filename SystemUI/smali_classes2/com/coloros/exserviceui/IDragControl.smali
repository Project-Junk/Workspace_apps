.class public interface abstract Lcom/coloros/exserviceui/IDragControl;
.super Ljava/lang/Object;
.source "IDragControl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/exserviceui/IDragControl$Stub;,
        Lcom/coloros/exserviceui/IDragControl$Default;
    }
.end annotation


# virtual methods
.method public abstract startDragWindow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDragWindowOffSet(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
