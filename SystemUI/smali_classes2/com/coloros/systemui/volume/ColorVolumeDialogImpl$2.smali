.class Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "ColorVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->checkAndShowDoubleEarButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$2;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 890
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x14008000

    .line 891
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.settings.double.earphone.settings"

    .line 893
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$2;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$1300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 895
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$2;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismiss(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 897
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
