.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;
.super Ljava/lang/Object;
.source "PictorialWallpaperHelper.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;


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

    .line 592
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackToKeyguard()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$202(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)Z

    const-string v0, "PictorialWallpaperHelper"

    const-string v1, "onBackToKeyguard update wallpaper"

    .line 597
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$500(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V

    .line 599
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->access$202(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)Z

    :cond_0
    return-void
.end method
