.class public abstract Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;
.super Ljava/lang/Object;
.source "BaseWallpaperHelper.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentUserId:I

.field protected mHandler:Landroid/os/Handler;

.field protected mSelectedUser:Landroid/os/UserHandle;

.field protected mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->mContext:Landroid/content/Context;

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public abstract getWallpaper()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public abstract isEnable()Z
.end method

.method public abstract isEnableLockScreen()Z
.end method

.method public onSimStateChange(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    return-void
.end method

.method public onUserUnlock()V
    .locals 0

    return-void
.end method

.method public onWallpaperChange(I)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

    if-eqz p0, :cond_0

    .line 55
    invoke-interface {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;->onWallpaperChange(I)V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChange(Landroid/app/WallpaperColors;II)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;->onWallpaperColorChange(Landroid/app/WallpaperColors;II)V

    :cond_0
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->mCurrentUserId:I

    return-void
.end method

.method public setSelectedUser(Landroid/os/UserHandle;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->mSelectedUser:Landroid/os/UserHandle;

    return-void
.end method

.method public setWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public abstract type()Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
.end method
