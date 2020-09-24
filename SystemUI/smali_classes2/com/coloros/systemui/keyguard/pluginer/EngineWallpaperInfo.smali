.class public Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;
.super Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
.source "EngineWallpaperInfo.java"


# static fields
.field private static final DEFINE_ENGINE_PATH:Ljava/lang/String; = "engine"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;-><init>()V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;->mType:I

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;->mColor:I

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 0

    const-string p0, "engine"

    return-object p0
.end method
