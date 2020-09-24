.class public final enum Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;
.super Ljava/lang/Enum;
.source "WallpaperSetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/wallpapersetter/WallpaperSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WallpaperType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

.field public static final enum ALL:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

.field public static final enum DESKTOP:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

.field public static final enum KEYGUARD:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    const/4 v1, 0x0

    const-string v2, "DESKTOP"

    invoke-direct {v0, v2, v1}, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->DESKTOP:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    new-instance v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    const/4 v2, 0x1

    const-string v3, "KEYGUARD"

    invoke-direct {v0, v3, v2}, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->KEYGUARD:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    new-instance v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->ALL:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    const/4 v0, 0x3

    .line 69
    new-array v0, v0, [Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    sget-object v4, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->DESKTOP:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->KEYGUARD:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->ALL:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->$VALUES:[Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;
    .locals 1

    .line 69
    const-class v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    return-object p0
.end method

.method public static values()[Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;
    .locals 1

    .line 69
    sget-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->$VALUES:[Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    invoke-virtual {v0}, [Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    return-object v0
.end method
