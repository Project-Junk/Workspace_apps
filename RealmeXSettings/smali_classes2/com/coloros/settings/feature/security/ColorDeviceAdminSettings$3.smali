.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$3;
.super Ljava/lang/Object;
.source "ColorDeviceAdminSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 158
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$3;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$3;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$3;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)Lcom/coloros/settings/utils/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/utils/bn;->b()V

    :cond_0
    return-void
.end method
