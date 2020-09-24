.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;
.super Ljava/lang/Object;
.source "PictorialArrowView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onScreenTurningOn$0$PictorialArrowView$4()V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->updateTipsState()V

    return-void
.end method

.method public onScreenTurningOff()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 374
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->updateTipsState()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 380
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$4$KWsSMmWziVzkgdEy95dtX06BJio;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$4$KWsSMmWziVzkgdEy95dtX06BJio;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
