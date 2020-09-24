.class public interface abstract Lcom/android/systemui/dock/DockManager;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dock/DockManager$DockEventListener;
    }
.end annotation


# static fields
.field public static final STATE_DOCKED:I = 0x1

.field public static final STATE_DOCKED_HIDE:I = 0x2

.field public static final STATE_NONE:I


# virtual methods
.method public abstract addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
.end method

.method public abstract isDocked()Z
.end method

.method public abstract removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
.end method
