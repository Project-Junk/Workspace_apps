.class Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$1;
.super Ljava/lang/Object;
.source "KeyguardWallpaperContainer.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    .line 187
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;I)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    return-void
.end method
