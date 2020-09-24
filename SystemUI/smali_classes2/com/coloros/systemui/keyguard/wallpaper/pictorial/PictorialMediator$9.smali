.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;
.super Ljava/lang/Object;
.source "PictorialMediator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onServiceConnected$0$PictorialMediator$9()V
    .locals 1

    .line 1086
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$500(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->getPictorialResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1902(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1079
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1800(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->removeCallbacksInWorkThread(Ljava/lang/Runnable;)V

    const-string p1, "PictorialMediator"

    const-string p2, "onServiceConnected to Pictorial service"

    .line 1080
    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1102(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Z)Z

    .line 1082
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {p1, p2, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->obtainPictorialWallpaper(ZZ)V

    .line 1083
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->obtainPictorialMessageViewInfo()V

    .line 1084
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1902(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 1085
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$9$sDGHSRRDJEPOfjPo5NKx0MTA1gY;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$9$sDGHSRRDJEPOfjPo5NKx0MTA1gY;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;)V

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "PictorialMediator"

    const-string v0, "onServiceDisconnected to Pictorial service"

    .line 1092
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1102(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Z)Z

    .line 1094
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1902(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 1095
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->openConnection()V

    return-void
.end method
