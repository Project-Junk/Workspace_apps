.class Lcom/coloros/systemui/notification/power/ColorosPowerUI$6;
.super Ljava/lang/Object;
.source "ColorosPowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createPlugChargerDialog(I)Lcolor/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$6;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iput-object p2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "ColorOs_PowerUI"

    const-string p2, "Common"

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$6;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPlugChargerDialog: Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "createPlugChargerDialog: startActivity power consumption"

    .line 1338
    invoke-static {p2, p1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
