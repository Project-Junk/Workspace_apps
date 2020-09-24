.class public final synthetic Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

.field private final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    iput-object p2, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;->f$1:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    iget-object v1, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-virtual {v0, v1, p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->lambda$bindInlineControlsCustom$2$NotificationInfoBase(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;)V

    return-void
.end method
