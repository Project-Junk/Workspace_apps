.class Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;
.super Landroid/content/BroadcastReceiver;
.source "ColorosPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$ColorosPowerUI$2()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissLowBatteryWarning()V

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissInvalidChargerDialog()V

    .line 374
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1900(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$ColorosPowerUI$2()V
    .locals 5

    const-string v0, "ColorOs_PowerUI"

    const-string v1, "Common"

    const-string v2, "ACTION_PHONE_STATE_CHANGED"

    .line 360
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v2

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PHONE_STATE_CHANGED: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-void

    .line 371
    :cond_1
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/notification/power/-$$Lambda$ColorosPowerUI$2$vrO99iAebz7U15DwKpyWms2b4i4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/power/-$$Lambda$ColorosPowerUI$2$vrO99iAebz7U15DwKpyWms2b4i4;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorOs_PowerUI"

    const-string v5, "Common"

    invoke-static {v5, v4, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 221
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v6, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_10

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent start() mHideLowBDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    .line 229
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const-string v9, "level"

    invoke-virtual {v1, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldBatteryLevel = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "mBatteryLevel = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v6, v6, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryStatus:I

    .line 233
    iget-object v6, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const-string v9, "status"

    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryStatus:I

    .line 235
    iget-object v6, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v6, v6, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    .line 236
    iget-object v9, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const-string v10, "plugged"

    invoke-virtual {v1, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    .line 238
    iget-object v9, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v9, v9, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidCharger:I

    .line 239
    iget-object v10, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const-string v11, "invalid_charger"

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidCharger:I

    .line 241
    iget-object v10, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v10, v10, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    if-eqz v10, :cond_1

    move v10, v7

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    if-eqz v6, :cond_2

    move v11, v7

    goto :goto_1

    :cond_2
    move v11, v8

    .line 245
    :goto_1
    iget-object v12, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v12, v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$200(Lcom/coloros/systemui/notification/power/ColorosPowerUI;I)I

    move-result v12

    .line 246
    iget-object v13, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v14, v13, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-static {v13, v14}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$200(Lcom/coloros/systemui/notification/power/ColorosPowerUI;I)I

    move-result v13

    .line 247
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "buckets, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v15, v15, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " .. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v7, v7, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    aget v7, v7, v8

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v7, v7, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v15, 0x1

    aget v7, v7, v15

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", level          "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v7, v7, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", status         "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryStatus:I

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", plugType       "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", invalidCharger "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidCharger:I

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bucket         "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", plugged        "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_3

    .line 257
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidCharger:I

    if-eqz v2, :cond_3

    const-string v1, "showing invalid charger warning"

    .line 258
    invoke-static {v5, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showInvalidChargerDialog()V

    return-void

    :cond_3
    if-eqz v9, :cond_4

    .line 261
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidCharger:I

    if-nez v2, :cond_4

    const-string v2, "dismissInvalidChargerDialog***************"

    .line 262
    invoke-static {v5, v4, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-virtual {v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissInvalidChargerDialog()V

    goto :goto_2

    .line 264
    :cond_4
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidChargerDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v2, :cond_5

    return-void

    .line 269
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v6, 0x2

    aget v3, v3, v6

    if-gt v2, v3, :cond_6

    .line 270
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v6

    goto :goto_3

    .line 271
    :cond_6
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v6, 0x1

    aget v3, v3, v6

    if-gt v2, v3, :cond_7

    .line 272
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v6

    goto :goto_3

    .line 273
    :cond_7
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v8

    if-gt v2, v3, :cond_8

    .line 274
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v8

    goto :goto_3

    :cond_8
    move v2, v8

    .line 276
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "warningLevel = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isBattWarningAllowed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 278
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 279
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    iget-object v6, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v6, v6, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v7}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$300(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)I

    move-result v7

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v9, v9, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v8

    invoke-virtual {v6, v7, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcolor/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    :cond_9
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryStatus:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_d

    if-eqz v2, :cond_d

    if-nez v10, :cond_d

    if-ge v13, v12, :cond_a

    if-ltz v13, :cond_b

    :cond_a
    if-eqz v11, :cond_d

    :cond_b
    const-string v3, "Warning Level Down, or Charger plug out*************"

    .line 285
    invoke-static {v5, v4, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$400(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 288
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v4, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-static {v3, v2, v10, v4}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$500(Lcom/coloros/systemui/notification/power/ColorosPowerUI;IZI)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 289
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-virtual {v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->playLowBatterySound()V

    goto :goto_4

    .line 292
    :cond_c
    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v3, v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$600(Lcom/coloros/systemui/notification/power/ColorosPowerUI;I)V

    goto :goto_4

    :cond_d
    if-gt v13, v12, :cond_e

    if-eqz v10, :cond_f

    if-nez v11, :cond_f

    :cond_e
    const-string v2, "Warning Level Up, or Charger plug in*************"

    .line 296
    invoke-static {v5, v4, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-virtual {v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissLowBatteryWarning()V

    .line 301
    :cond_f
    :goto_4
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$700(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V

    .line 303
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/extend/PowerUIExt;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getExt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 304
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/extend/PowerUIExt;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getExt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/extend/PowerUIExt;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/extend/PowerUIExt;->initOtg()V

    goto/16 :goto_7

    :cond_10
    const-string v3, "android.intent.action.BATTERY_LOW"

    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 307
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$802(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    goto/16 :goto_7

    :cond_11
    const-string v3, "android.intent.action.BATTERY_OKAY"

    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 310
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v0, v8}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$802(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    goto/16 :goto_7

    :cond_12
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v7, 0x2717

    const/4 v9, 0x0

    if-eqz v3, :cond_13

    .line 312
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v1, v8}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$802(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    .line 313
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$900(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Context;)V

    .line 314
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1000(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    .line 315
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v1, v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_1e

    .line 316
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v7, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_7

    :cond_13
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 319
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    goto/16 :goto_7

    :cond_14
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 321
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v1, v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v1, v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 322
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v1, v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v2, 0x7f110170

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v4, v4, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    .line 323
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 322
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1e

    .line 325
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_15
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "android.intent.action.ACTION_BOOT_IPO"

    .line 329
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_6

    :cond_16
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent android.intent.action.ACTION_SHUTDOWN_IPO mHideLowBDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$102(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    .line 335
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iput v6, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    goto/16 :goto_7

    :cond_17
    const-string v3, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 339
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const-string v3, "chargeplugged"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOppoPlugType:I

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOppoPlugType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOppoPlugType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v3, v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOppoPlugType:I

    if-nez v2, :cond_18

    .line 342
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1202(Lcom/coloros/systemui/notification/power/ColorosPowerUI;I)I

    .line 343
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2, v8}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1302(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    .line 344
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2, v8}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1402(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    goto :goto_5

    .line 346
    :cond_18
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1402(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    .line 348
    :goto_5
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isPlatformQcom()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isOppoDevice()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 349
    :cond_19
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1500(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V

    .line 350
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1600(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V

    .line 351
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1400(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1702(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    .line 352
    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v2, v2, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOppoPlugType:I

    if-eqz v2, :cond_1e

    .line 353
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$1800(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V

    goto :goto_7

    :cond_1a
    const-string v3, "android.intent.action.PHONE_STATE"

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 359
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v1

    new-instance v2, Lcom/coloros/systemui/notification/power/-$$Lambda$ColorosPowerUI$2$UWSbDPoMUOcGvCaLJsDHec_ZwEw;

    invoke-direct {v2, v0}, Lcom/coloros/systemui/notification/power/-$$Lambda$ColorosPowerUI$2$UWSbDPoMUOcGvCaLJsDHec_ZwEw;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;)V

    invoke-virtual {v1, v2}, Lcom/coloros/common/thread/ThreadManager;->postInThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_1b
    const-string v3, "oppo.intent.action.CANCEL_NOTIFICAITON"

    .line 379
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 380
    iget-object v1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v1, v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_1e

    .line 381
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v7, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_7

    .line 384
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 330
    :cond_1d
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intetnt BOOT mHideLowBDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {v0, v8}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$102(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    :cond_1e
    :goto_7
    return-void
.end method
