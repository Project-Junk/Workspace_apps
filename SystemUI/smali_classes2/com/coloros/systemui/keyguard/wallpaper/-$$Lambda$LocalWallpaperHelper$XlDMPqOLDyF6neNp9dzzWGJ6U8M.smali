.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

.field private final synthetic f$1:Landroid/graphics/Bitmap;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;->f$1:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;->f$1:Landroid/graphics/Bitmap;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->lambda$loadWallpaperDrawable$0$LocalWallpaperHelper(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
