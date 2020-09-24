.class public final synthetic Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final synthetic f$2:Landroid/content/Context;

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$0:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$1:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p3, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$3:I

    iput p5, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$0:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$1:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$2:Landroid/content/Context;

    iget v3, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$3:I

    iget p0, p0, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->lambda$onNotificationRemoved$0(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Landroid/content/Context;II)V

    return-void
.end method
