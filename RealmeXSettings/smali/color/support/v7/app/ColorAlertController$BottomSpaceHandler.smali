.class final Lcolor/support/v7/app/ColorAlertController$BottomSpaceHandler;
.super Landroid/os/Handler;
.source "ColorAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/ColorAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BottomSpaceHandler"
.end annotation


# static fields
.field private static final MSG_ADD_BOTTOM_SPACE:I = 0x1

.field private static final MSG_REMOVE_BOTTOM_SPACE:I = 0x2


# instance fields
.field private mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcolor/support/v7/app/ColorAlertController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 1

    .line 624
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 625
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController$BottomSpaceHandler;->mController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 630
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcolor/support/v7/app/ColorAlertController;

    .line 635
    invoke-static {p1}, Lcolor/support/v7/app/ColorAlertController;->access$300(Lcolor/support/v7/app/ColorAlertController;)V

    :goto_0
    return-void
.end method
