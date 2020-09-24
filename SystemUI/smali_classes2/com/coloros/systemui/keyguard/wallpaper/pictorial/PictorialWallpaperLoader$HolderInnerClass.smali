.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$HolderInnerClass;
.super Ljava/lang/Object;
.source "PictorialWallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolderInnerClass"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$1;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$HolderInnerClass;->INSTANCE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;
    .locals 1

    .line 33
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$HolderInnerClass;->INSTANCE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    return-object v0
.end method
