.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;
.super Ljava/lang/Object;
.source "PictorialWallpaperLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperALTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;

.field private mRequest:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->mRequest:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    .line 136
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->mListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->mRequest:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->processLoadWallpaperRequest(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->mListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;

    if-eqz v1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;->mRequest:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    invoke-interface {v1, p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;->onLoadWallpaperFinished(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    :cond_0
    return-void
.end method
