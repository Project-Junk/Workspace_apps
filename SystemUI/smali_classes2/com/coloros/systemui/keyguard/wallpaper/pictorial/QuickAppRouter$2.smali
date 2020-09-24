.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$2;
.super Lcom/nearme/instant/router/callback/Callback;
.source "QuickAppRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    invoke-direct {p0}, Lcom/nearme/instant/router/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1}, Lcom/nearme/instant/router/callback/Callback$Response;->getCode()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;->onSuccess()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;->onFailed()V

    :goto_0
    return-void
.end method
