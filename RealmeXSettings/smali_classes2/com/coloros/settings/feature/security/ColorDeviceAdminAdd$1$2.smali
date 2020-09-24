.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$2;
.super Ljava/lang/Object;
.source "ColorDeviceAdminAdd.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.app.extra.DISABLE_WARNING"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$2;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Ljava/lang/CharSequence;)V

    return-void
.end method
