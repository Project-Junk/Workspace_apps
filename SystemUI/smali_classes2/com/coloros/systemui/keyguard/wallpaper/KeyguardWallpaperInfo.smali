.class public abstract Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
.super Ljava/lang/Object;
.source "KeyguardWallpaperInfo.java"


# static fields
.field public static final KEYGUARD_TEXT_DEFAULT_COLOR_WHITE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperInfo"

.field public static final WALLPAPER_TYPE_ENGINE:I = 0x2

.field public static final WALLPAPER_TYPE_LOCAL:I = 0x0

.field public static final WALLPAPER_TYPE_PICTORIAL:I = 0x1


# instance fields
.field protected mColor:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mType:I

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mColor:I

    return p0
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public isEngineType()Z
    .locals 1

    .line 43
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocalType()Z
    .locals 0

    .line 35
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPictorialType()Z
    .locals 1

    .line 39
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setColor(Ljava/lang/Integer;)Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mColor:I

    :cond_0
    return-object p0
.end method
