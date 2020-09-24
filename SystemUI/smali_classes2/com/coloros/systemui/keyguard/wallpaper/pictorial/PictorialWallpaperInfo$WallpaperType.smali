.class public final enum Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;
.super Ljava/lang/Enum;
.source "PictorialWallpaperInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WallpaperType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

.field public static final enum COVER:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

.field public static final enum IDLE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

.field public static final enum NEXT:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 86
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->IDLE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    .line 87
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    const/4 v2, 0x1

    const-string v3, "COVER"

    invoke-direct {v0, v3, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->COVER:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    .line 88
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    const/4 v3, 0x2

    const-string v4, "NEXT"

    invoke-direct {v0, v4, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->NEXT:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    const/4 v0, 0x3

    .line 85
    new-array v0, v0, [Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    sget-object v4, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->IDLE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->COVER:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->NEXT:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->$VALUES:[Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;
    .locals 1

    .line 85
    const-class v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    return-object p0
.end method

.method public static values()[Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;
    .locals 1

    .line 85
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->$VALUES:[Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    invoke-virtual {v0}, [Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    return-object v0
.end method
