.class public interface abstract Lorg/codeaurora/internal/IDsda;
.super Ljava/lang/Object;
.source "IDsda.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/internal/IDsda$Stub;
    }
.end annotation


# virtual methods
.method public abstract getActiveSubscription()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract switchToActiveSub(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
