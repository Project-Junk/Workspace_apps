.class Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ColorLockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRefreshHelperRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 295
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$ColorLockScreenWallpaper$2$CWFYqEVWiM8JlaKQ1ApPt5kZENE;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$ColorLockScreenWallpaper$2$CWFYqEVWiM8JlaKQ1ApPt5kZENE;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->mRefreshHelperRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$$0$ColorLockScreenWallpaper$2()V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V

    return-void
.end method

.method public onColorKeyguardLoad(Z)V
    .locals 0

    .line 305
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onColorKeyguardLoad(Z)V

    .line 306
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .line 299
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 300
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$600(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$700(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    .line 252
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$600(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isAutoPlaySwitchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    .line 253
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$700(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    .line 254
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$700(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ColorLockScreenWallpaper"

    const-string v1, "check pictorial connect!"

    .line 255
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->mRefreshHelperRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->removeCallbacksInUiThread(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->mRefreshHelperRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 261
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->show()V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->hide()V

    .line 266
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$900(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 267
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$900(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->hide()V

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object v0

    instance-of v0, v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    .line 271
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1000(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    .line 272
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1000(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 274
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1000(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->show()V

    goto :goto_1

    .line 276
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1000(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->hide()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 319
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 320
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 321
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->onSimStateChange(Lcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 312
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$900(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->postUpdateWallpaper()V

    .line 313
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V

    .line 314
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$400(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 3

    .line 283
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->mRefreshHelperRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->removeCallbacksInUiThread(Ljava/lang/Runnable;)V

    .line 285
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1100(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isNeedDelayUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->mRefreshHelperRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$1200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->onUserUnlock()V

    :cond_1
    return-void
.end method
