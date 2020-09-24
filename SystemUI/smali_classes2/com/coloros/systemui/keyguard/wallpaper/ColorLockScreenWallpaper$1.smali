.class Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;
.super Ljava/lang/Object;
.source "ColorLockScreenWallpaper.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChange(I)V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v3}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 225
    :goto_1
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 226
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWallpaperChange , pictorialCanChange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", localCanChange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", engineCanChange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "ColorLockScreenWallpaper"

    invoke-static {v5, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move p1, v1

    goto :goto_4

    :cond_4
    :goto_3
    move p1, v2

    :goto_4
    if-eqz p1, :cond_5

    .line 233
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$300(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 234
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$400(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    :cond_5
    return-void
.end method

.method public onWallpaperColorChange(Landroid/app/WallpaperColors;II)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$500(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->dispatchWallpaperColorChange(Landroid/app/WallpaperColors;II)V

    return-void
.end method
