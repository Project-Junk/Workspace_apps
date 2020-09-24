.class Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;
.super Landroid/os/AsyncTask;
.source "LocalWallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->this$1:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->this$1:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 470
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->doInBackground([Ljava/lang/Void;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 3

    .line 479
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->this$1:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->access$202(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;Z)Z

    .line 481
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperManagerCallback : result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocalWallpaperHelper"

    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->this$1:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->access$302(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 486
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->this$1:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->onWallpaperChange(I)V

    .line 487
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->this$1:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->access$402(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 470
    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->onPostExecute(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    return-void
.end method
