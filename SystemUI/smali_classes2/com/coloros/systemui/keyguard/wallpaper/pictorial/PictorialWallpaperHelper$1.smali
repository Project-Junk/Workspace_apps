.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;
.super Ljava/lang/Object;
.source "PictorialWallpaperHelper.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 301
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff, mHasAlreadyFetchFromSlidePage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    .line 302
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mHasFetchWallpaperWhenKeyguardShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    .line 303
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PictorialWallpaperHelper"

    .line 301
    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$300(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V

    .line 309
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$002(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)Z

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    const-string v0, "PictorialWallpaperHelper"

    const-string v1, "onScreenTurningOn"

    .line 293
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$002(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)Z

    return-void
.end method
