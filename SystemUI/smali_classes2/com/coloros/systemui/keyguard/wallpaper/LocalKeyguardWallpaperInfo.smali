.class public Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;
.super Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
.source "LocalKeyguardWallpaperInfo.java"


# static fields
.field public static final DEFINE_LOCAL_PATH:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;->mType:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;->mColor:I

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method
