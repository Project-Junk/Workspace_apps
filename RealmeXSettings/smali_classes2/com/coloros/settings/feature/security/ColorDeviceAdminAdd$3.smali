.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "ColorDeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 200
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$3;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$3;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$3;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->v(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Lcom/coloros/settings/utils/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/utils/bn;->b()V

    :cond_0
    return-void
.end method
