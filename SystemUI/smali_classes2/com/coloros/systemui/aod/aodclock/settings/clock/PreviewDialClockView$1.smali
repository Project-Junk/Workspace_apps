.class Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "PreviewDialClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;)Ljava/util/TimeZone;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "time-zone"

    .line 53
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->access$102(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->onTimeChanged()V

    return-void
.end method
