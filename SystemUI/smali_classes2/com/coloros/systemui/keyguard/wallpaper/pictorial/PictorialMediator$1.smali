.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;
.super Landroid/os/Handler;
.source "PictorialMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Looper;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Ljava/util/List;ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V
    .locals 0

    .line 261
    invoke-interface {p2, p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;->onWallpaperChanged(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic lambda$handleMessage$1(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V
    .locals 0

    .line 271
    invoke-interface {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;->onMessageViewInfoChanged(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ", fetchUserID = "

    const-string v2, "PictorialMediator"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 264
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v3, :cond_1

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage obtain message info no same id = KeyguardUpdateMonitor.getCurrentUser() = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 265
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 271
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$884ZHm1zXQssWiAL1E1m8doMldU;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$884ZHm1zXQssWiAL1E1m8doMldU;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 253
    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_3

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage obtain wallpaper no same id = KeyguardUpdateMonitor.getCurrentUser() = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 260
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 261
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$2TvPoxhZz8oQUHdI4XfWM1hFfTw;

    invoke-direct {p1, v0, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$2TvPoxhZz8oQUHdI4XfWM1hFfTw;-><init>(Ljava/util/List;Z)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :goto_1
    return-void
.end method
