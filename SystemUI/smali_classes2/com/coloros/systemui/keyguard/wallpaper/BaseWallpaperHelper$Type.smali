.class public final enum Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
.super Ljava/lang/Enum;
.source "BaseWallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

.field public static final enum Engine:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

.field public static final enum Local:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

.field public static final enum Pictorial:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    const/4 v1, 0x0

    const-string v2, "Local"

    invoke-direct {v0, v2, v1}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Local:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    const/4 v2, 0x1

    const-string v3, "Engine"

    invoke-direct {v0, v3, v2}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Engine:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    const/4 v3, 0x2

    const-string v4, "Pictorial"

    invoke-direct {v0, v4, v3}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Pictorial:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    sget-object v4, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Local:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Engine:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Pictorial:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->$VALUES:[Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
    .locals 1

    .line 31
    const-class v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    return-object p0
.end method

.method public static values()[Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
    .locals 1

    .line 31
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->$VALUES:[Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    invoke-virtual {v0}, [Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    return-object v0
.end method
