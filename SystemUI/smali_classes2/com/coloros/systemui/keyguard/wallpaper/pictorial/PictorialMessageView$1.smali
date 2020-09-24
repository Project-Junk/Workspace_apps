.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;
.super Ljava/lang/Object;
.source "PictorialMessageView.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "PictorialMessageView"

    const-string v1, "onFailed"

    .line 394
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->actionOpenQuickApp(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "PictorialMessageView"

    const-string v1, "onSuccess"

    .line 388
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->actionOpenQuickApp(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)V

    return-void
.end method
