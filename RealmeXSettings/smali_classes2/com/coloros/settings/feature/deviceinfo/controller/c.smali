.class public final Lcom/coloros/settings/feature/deviceinfo/controller/c;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorDeviceModelPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "device_model"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/coloros/settings/feature/deviceinfo/controller/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
