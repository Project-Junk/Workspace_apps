.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "CameraEffectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;B)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 271
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;->INSTANCE:Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "oppo.intent.action.MOTOR_DOWNED"

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 273
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;I)I

    .line 274
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;)Lcom/coloros/settings/feature/othersettings/cameraeffect/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/c;->b()V

    return-void

    :cond_0
    const-string p2, "oppo.intent.action.MOTOR_UPED"

    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;I)I

    .line 277
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;)Lcom/coloros/settings/feature/othersettings/cameraeffect/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/c;->a()V

    :cond_1
    return-void
.end method
