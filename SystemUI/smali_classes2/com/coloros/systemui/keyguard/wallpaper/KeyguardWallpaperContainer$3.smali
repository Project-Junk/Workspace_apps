.class Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardWallpaperContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 309
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$300(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$400(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$400(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;I)V

    .line 321
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$502(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Z)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 326
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 327
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$600(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    .line 328
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$700(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    return-void
.end method
