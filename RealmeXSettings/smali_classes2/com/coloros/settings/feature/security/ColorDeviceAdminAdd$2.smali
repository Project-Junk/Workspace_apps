.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "ColorDeviceAdminAdd.java"

# interfaces
.implements Lcom/coloros/settings/utils/bn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->u(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
