.class final Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;
.super Ljava/lang/Object;
.source "VolumePanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/panel/VolumePanelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->a(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->a(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->a(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;->a:Lcom/coloros/settings/feature/panel/VolumePanelActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->finish()V

    return-void
.end method
