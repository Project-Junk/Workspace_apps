.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;
.super Ljava/lang/Object;
.source "PictorialMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPictorialServiceRunnable"
.end annotation


# instance fields
.field private mDeviceProvisioned:Z

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;)V
    .locals 0

    .line 1117
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$500(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    .line 1126
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->mDeviceProvisioned:Z

    const-string v2, "PictorialMediator"

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string p0, "StartPictorialServiceRunnable mDeviceProvisioned is false"

    .line 1127
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "StartPictorialServiceRunnable already connect, return"

    .line 1131
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$900(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "StartPictorialServiceRunnable mPictorialExist is not, return"

    .line 1135
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1139
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$2000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_3

    const-string p0, "mStartPictorialServiceRunnable getMainSwitchState is off, return"

    .line 1140
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1143
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.heytap.pictorial.action.START_DECOUPLING_SERVICE"

    .line 1144
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.heytap.pictorial"

    .line 1145
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v3, "mStartPictorialServiceRunnable start"

    .line 1147
    invoke-static {v2, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$500(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Landroid/content/Context;

    move-result-object v3

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$2100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {v3, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartPictorialServiceRunnable Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDeviceProvisioned(Z)V
    .locals 0

    .line 1121
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->mDeviceProvisioned:Z

    return-void
.end method
