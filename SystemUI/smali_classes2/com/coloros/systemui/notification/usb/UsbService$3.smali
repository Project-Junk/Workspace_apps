.class Lcom/coloros/systemui/notification/usb/UsbService$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/usb/UsbService;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isNormalMode()Z
    .locals 2

    .line 508
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOpm:Landroid/content/pm/OppoPackageManager;

    invoke-virtual {p0}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get isFullFunctionMode exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Common"

    const-string v1, "UsbService"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 351
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result v1

    const-string v2, "UsbService"

    const-string v3, "Common"

    if-eqz v1, :cond_0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, and action is: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x1

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    .line 356
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 357
    sput-boolean v5, Lcom/coloros/systemui/notification/usb/UsbService;->sNeedShowUsbDialog:Z

    .line 358
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$600(Lcom/coloros/systemui/notification/usb/UsbService;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_1
    const-string v4, "com.oppo.test.show.usbselector.dialog"

    .line 359
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService$3;->isNormalMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$700(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 365
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$900(Lcom/coloros/systemui/notification/usb/UsbService;)V

    goto/16 :goto_5

    .line 361
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0, v6}, Lcom/coloros/systemui/notification/usb/UsbService;->access$800(Lcom/coloros/systemui/notification/usb/UsbService;Z)V

    goto/16 :goto_5

    :cond_4
    const/16 v4, 0x3e8

    .line 370
    sput-boolean v5, Lcom/coloros/systemui/notification/usb/UsbService;->sNeedShowUsbDialog:Z

    const-string v7, "com.oppo.test.file.transmit"

    .line 371
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "get USB_REMEBER_SELECTION  error e3 ="

    const-string v9, "oppo.cta.support"

    const/4 v10, 0x2

    const-string v11, "usb_remeber_selection"

    if-eqz v7, :cond_8

    .line 373
    :try_start_0
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 374
    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 373
    invoke-static {p2, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_1
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_FILE_TRANSMIT, selectType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , mNoTransmitting = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 383
    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$400(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 382
    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_5
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$400(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 386
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v11, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2, v5}, Lcom/coloros/systemui/notification/usb/UsbService;->access$402(Lcom/coloros/systemui/notification/usb/UsbService;Z)Z

    .line 389
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1000(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/os/Handler;

    move-result-object p2

    int-to-long v0, v4

    invoke-virtual {p2, v10, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 390
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p2, p1, v6}, Lcom/coloros/systemui/notification/usb/UsbService;->changeUsbConfig(Landroid/content/Context;I)V

    .line 391
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p2, p1, v6}, Lcom/coloros/systemui/notification/usb/UsbService;->updateUsbNotification(Landroid/content/Context;I)V

    .line 394
    :cond_6
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 396
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "updateAdbNotificationAdv_becase has configed the feature:oppo.cta.support"

    .line 397
    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_7
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_8
    const-string v7, "com.oppo.test.image.transmit"

    .line 402
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 404
    :try_start_1
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 405
    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 404
    invoke-static {p2, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 408
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get USB_REMEBER_SELECTION  error e4 ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_9
    :goto_2
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_IMAGE_TRANSMIT, selectType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , mNoTransmitting= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 416
    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$400(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 415
    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_a
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$400(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 419
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 420
    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v11, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2, v5}, Lcom/coloros/systemui/notification/usb/UsbService;->access$402(Lcom/coloros/systemui/notification/usb/UsbService;Z)Z

    .line 424
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1000(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/os/Handler;

    move-result-object p2

    int-to-long v0, v4

    invoke-virtual {p2, v10, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 425
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p2, p1, v10}, Lcom/coloros/systemui/notification/usb/UsbService;->changeUsbConfig(Landroid/content/Context;I)V

    .line 426
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p2, p1, v10}, Lcom/coloros/systemui/notification/usb/UsbService;->updateUsbNotification(Landroid/content/Context;I)V

    .line 429
    :cond_b
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 431
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_c
    const-string v4, "com.oppo.test.only.charge"

    .line 433
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 435
    :try_start_2
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 436
    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 435
    invoke-static {p2, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 439
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get USB_REMEBER_SELECTION  error e5 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_d
    :goto_3
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p2, p1, v5}, Lcom/coloros/systemui/notification/usb/UsbService;->changeUsbConfig(Landroid/content/Context;I)V

    .line 448
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p2, p1, v5}, Lcom/coloros/systemui/notification/usb/UsbService;->updateUsbNotification(Landroid/content/Context;I)V

    .line 449
    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->isAdbDebugEnable(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 450
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 452
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V

    .line 455
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "adb_enabled"

    invoke-static {p0, p1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    :cond_f
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    .line 459
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 460
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1100(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p0, "configuration change while usb disconnected"

    .line 461
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_10
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    iget-object p2, p2, Lcom/coloros/systemui/notification/usb/UsbService;->mOpm:Landroid/content/pm/OppoPackageManager;

    invoke-virtual {p2}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p0, "Closed Super Firewall, No ops on config changed"

    .line 467
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 472
    :cond_11
    :try_start_3
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 473
    invoke-static {p2}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 472
    invoke-static {p2, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_4
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_12

    move v5, v6

    :cond_12
    invoke-static {p2, v5}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1202(Lcom/coloros/systemui/notification/usb/UsbService;Z)Z

    .line 479
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 480
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wangzequan add log: size change selectType == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mIsBigFontScale "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 481
    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1200(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 480
    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_13
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V

    .line 487
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p0, p1, v1}, Lcom/coloros/systemui/notification/usb/UsbService;->updateUsbNotification(Landroid/content/Context;I)V

    goto :goto_5

    :cond_14
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 490
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "reason"

    .line 491
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 493
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$500(Lcom/coloros/systemui/notification/usb/UsbService;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 494
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$3;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$500(Lcom/coloros/systemui/notification/usb/UsbService;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 500
    :cond_15
    :goto_5
    sput-boolean v6, Lcom/coloros/systemui/notification/usb/UsbService;->sNeedShowUsbDialog:Z

    return-void
.end method
