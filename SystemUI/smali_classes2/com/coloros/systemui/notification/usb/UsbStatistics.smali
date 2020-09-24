.class public Lcom/coloros/systemui/notification/usb/UsbStatistics;
.super Ljava/lang/Object;
.source "UsbStatistics.java"


# static fields
.field private static final ENABLE_STATISTIC:Z = true

.field private static final EVENT_USB_INSERT_EVENT:Ljava/lang/String; = "usb_insert_event"

.field private static final EVENT_USB_NOTIFICAITON_CLICK:Ljava/lang/String; = "usb_notification_click_event"

.field private static final LOG_TAG:Ljava/lang/String; = "20082005"

.field private static final TAG:Ljava/lang/String; = "UsbStatistics"

.field private static final USB_ID:Ljava/lang/String; = "usbselect"

.field private static final USB_SELECT_AFTER:Ljava/lang/String; = "usb_select_after"

.field private static final USB_SELECT_BEFORE:Ljava/lang/String; = "usb_select_before"

.field private static volatile sInstance:Lcom/coloros/systemui/notification/usb/UsbStatistics;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/notification/usb/UsbStatistics;
    .locals 2

    .line 42
    sget-object v0, Lcom/coloros/systemui/notification/usb/UsbStatistics;->sInstance:Lcom/coloros/systemui/notification/usb/UsbStatistics;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/coloros/systemui/notification/usb/UsbStatistics;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/notification/usb/UsbStatistics;->sInstance:Lcom/coloros/systemui/notification/usb/UsbStatistics;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/coloros/systemui/notification/usb/UsbStatistics;

    invoke-direct {v1}, Lcom/coloros/systemui/notification/usb/UsbStatistics;-><init>()V

    sput-object v1, Lcom/coloros/systemui/notification/usb/UsbStatistics;->sInstance:Lcom/coloros/systemui/notification/usb/UsbStatistics;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/notification/usb/UsbStatistics;->sInstance:Lcom/coloros/systemui/notification/usb/UsbStatistics;

    return-object v0
.end method


# virtual methods
.method public collectUsbInsertStatistic(Landroid/content/Context;I)V
    .locals 2

    .line 62
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "usbselect"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "20082005"

    const-string v0, "usb_insert_event"

    const/4 v1, 0x0

    .line 64
    invoke-static {p1, p2, v0, p0, v1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public collectUsbNotificationClickStatistic(Landroid/content/Context;II)V
    .locals 1

    .line 72
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "usb_select_before"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "usb_select_after"

    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "20082005"

    const-string p3, "usb_notification_click_event"

    const/4 v0, 0x0

    .line 79
    invoke-static {p1, p2, p3, p0, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
