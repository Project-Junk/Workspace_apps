.class final Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;
.super Ljava/lang/Object;
.source "OppoScheduleTimePreference.java"

# interfaces
.implements Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;->a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeChanged(Lcom/color/support/widget/OppoTimePicker;II)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOpenTimePicker_onTimeChangeEnd_hour = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoScheduleTimePreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;->a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    invoke-static {v0, p2}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;I)I

    .line 132
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;->a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    invoke-static {p2, p3}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->b(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;I)I

    .line 133
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;->a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;Lcom/color/support/widget/OppoTimePicker;)V

    .line 134
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;->a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->c(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;->a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    invoke-static {p2}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)I

    move-result p2

    iget-object p3, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;->a:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    invoke-static {p3}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->b(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;->a(II)V

    return-void
.end method
