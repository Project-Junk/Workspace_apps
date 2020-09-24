.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

.field private final synthetic f$3:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$1:Z

    iput-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$2:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    iput-object p4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$3:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$1:Z

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$2:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;->f$3:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    invoke-virtual {v0, v1, v2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->lambda$null$2$PictorialWallpaperHelper(ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    return-void
.end method
