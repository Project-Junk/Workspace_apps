.class final Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;
.super Ljava/lang/Object;
.source "VolumePanelActivity.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/panel/VolumePanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/sdk/a;

.field final synthetic b:Lcom/coloros/settings/feature/panel/VolumePanelActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->a:Lcom/android/sdk/a;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    iget-object v0, v0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    iget-object v0, v0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->c:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/sdk/a;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->a:Lcom/android/sdk/a;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/android/sdk/a;->h()V

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->a:Lcom/android/sdk/a;

    .line 209
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->a:Lcom/android/sdk/a;

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    iget-object p1, p1, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    iget-object p1, p1, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->c:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
