.class public final synthetic Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;ZLandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    iput-boolean p2, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$1:Z

    iput-object p3, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$2:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$3:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$1:Z

    iget-object v2, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$2:Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;->f$3:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->lambda$bindInlineControlsCustom$1$NotificationInfoBase(ZLandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;)V

    return-void
.end method
