.class Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;
.super Ljava/lang/Object;
.source "ColorosPowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createSavePowerDialog(I)Lcolor/support/v7/app/AlertDialog;
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

    .line 1282
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iput-object p2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1285
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$2400(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1286
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object p1, p1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "Common"

    const-string p1, "ColorOs_PowerUI"

    const-string p2, "createSavePowerDialog: sendBroadcast ACTION_POWER_SAVE_MODE_CHANGED"

    .line 1287
    invoke-static {p0, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
