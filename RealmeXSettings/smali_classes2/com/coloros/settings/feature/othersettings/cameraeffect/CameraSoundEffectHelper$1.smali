.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper$1;
.super Ljava/lang/Object;
.source "CameraSoundEffectHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->f()Z

    return-void
.end method
