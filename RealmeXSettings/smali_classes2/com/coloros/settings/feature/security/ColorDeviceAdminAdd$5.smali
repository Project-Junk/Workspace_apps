.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$5;
.super Ljava/lang/Object;
.source "ColorDeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 227
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$5;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$5;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    const-string p2, "cancel"

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Ljava/lang/String;)V

    return-void
.end method