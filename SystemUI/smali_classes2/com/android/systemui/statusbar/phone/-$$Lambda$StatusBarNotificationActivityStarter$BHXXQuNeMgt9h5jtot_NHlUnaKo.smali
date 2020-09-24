.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/Intent;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ILandroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$3:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$2:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;->f$3:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationGutsIntent$6$StatusBarNotificationActivityStarter(ILandroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0
.end method
