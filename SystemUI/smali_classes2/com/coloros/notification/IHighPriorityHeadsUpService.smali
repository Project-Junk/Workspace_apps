.class public interface abstract Lcom/coloros/notification/IHighPriorityHeadsUpService;
.super Ljava/lang/Object;
.source "IHighPriorityHeadsUpService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/notification/IHighPriorityHeadsUpService$Stub;,
        Lcom/coloros/notification/IHighPriorityHeadsUpService$Default;
    }
.end annotation


# virtual methods
.method public abstract dismissHeadsUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showHeadsUp(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
