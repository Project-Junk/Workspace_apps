.class final Lcom/coloros/settings/feature/panel/VolumePanelActivity$1;
.super Landroid/os/Handler;
.source "VolumePanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/panel/VolumePanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/panel/VolumePanelActivity;Landroid/os/Looper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$1;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$1;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    iget-object p1, p1, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;

    .line 1224
    iget-object v0, p1, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->a:Lcom/android/sdk/a;

    if-eqz v0, :cond_1

    .line 1225
    iget-object p1, p1, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;->a:Lcom/android/sdk/a;

    invoke-virtual {p1}, Lcom/android/sdk/a;->h()V

    :cond_1
    :goto_0
    return-void
.end method
