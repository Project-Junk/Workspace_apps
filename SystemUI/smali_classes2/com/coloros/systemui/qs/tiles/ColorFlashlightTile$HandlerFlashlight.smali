.class public final Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;
.super Landroid/os/Handler;
.source "ColorFlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "HandlerFlashlight"
.end annotation


# static fields
.field private static final SET_FLASHLIGHT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;


# direct methods
.method protected constructor <init>(Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;Landroid/os/Looper;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;->this$0:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;

    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;->this$0:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;

    invoke-static {p0}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->access$000(Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    :cond_0
    return-void
.end method
