.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;
.super Ljava/lang/Object;
.source "ColorDeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;Landroid/app/Activity;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;->c:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;->a:Landroid/app/Activity;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 118
    iget p2, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;->b:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;->c:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->finish()V

    return-void
.end method
