.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$6;
.super Ljava/lang/Object;
.source "ColorDeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 234
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$6;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$6;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    const-string v0, "cancel"

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Ljava/lang/String;)V

    return-void
.end method
