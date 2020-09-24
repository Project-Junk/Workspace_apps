.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$XVCSfD12E0O7qBZu9cBjpSkNMHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$XVCSfD12E0O7qBZu9cBjpSkNMHM;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$XVCSfD12E0O7qBZu9cBjpSkNMHM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onLoadWallpaperFinished(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$XVCSfD12E0O7qBZu9cBjpSkNMHM;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$XVCSfD12E0O7qBZu9cBjpSkNMHM;->f$1:Z

    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->lambda$preloadNextWallpaper$3$PictorialWallpaperHelper(ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    return-void
.end method
