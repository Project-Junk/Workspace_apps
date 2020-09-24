.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$2;
.super Ljava/lang/Object;
.source "ColorDeviceAdminSettings.java"

# interfaces
.implements Lcom/coloros/settings/utils/bn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
