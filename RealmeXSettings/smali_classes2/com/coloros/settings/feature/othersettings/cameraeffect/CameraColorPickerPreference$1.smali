.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;
.super Landroid/os/Handler;
.source "CameraColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/os/Looper;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 155
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;->c()V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;J)J

    .line 160
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result v0

    aget-object p1, p1, v0

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->d(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
