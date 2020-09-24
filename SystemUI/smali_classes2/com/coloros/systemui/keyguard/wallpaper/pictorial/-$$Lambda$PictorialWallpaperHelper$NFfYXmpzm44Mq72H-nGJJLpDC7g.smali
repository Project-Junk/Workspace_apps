.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;->f$1:Z

    iput-boolean p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onLoadWallpaperFinished(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;->f$1:Z

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;->f$2:Z

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->lambda$asyncUpdateWallpaper$1$PictorialWallpaperHelper(ZZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    return-void
.end method
