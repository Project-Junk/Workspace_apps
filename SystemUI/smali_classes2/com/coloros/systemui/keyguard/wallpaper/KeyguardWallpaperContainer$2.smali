.class Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperContainer.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isSameWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$202(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    .line 264
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    :cond_0
    return-void
.end method
