.class public final Lcom/android/settings/display/b;
.super Ljava/lang/Object;
.source "NightDisplayTimeFormatter.java"


# instance fields
.field private a:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/b;->a:Ljava/text/DateFormat;

    .line 35
    iget-object p1, p0, Lcom/android/settings/display/b;->a:Ljava/text/DateFormat;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/hardware/display/ColorDisplayManager;)Ljava/lang/String;
    .locals 3

    .line 50
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120e64

    goto :goto_0

    :cond_0
    const v0, 0x7f120e60

    :goto_0
    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/b;->b(Landroid/content/Context;Landroid/hardware/display/ColorDisplayManager;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/settings/display/b;->a:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 42
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    const/16 v1, 0xd

    .line 43
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 44
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/display/b;->a:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;Landroid/hardware/display/ColorDisplayManager;)Ljava/lang/String;
    .locals 3

    .line 56
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    .line 57
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f120e65

    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/display/b;->a(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 60
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f120e61

    .line 63
    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/display/b;->a(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 63
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x2

    if-ne v1, p2, :cond_3

    if-eqz v0, :cond_2

    const p2, 0x7f120e67

    goto :goto_0

    :cond_2
    const p2, 0x7f120e63

    .line 67
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    const p2, 0x7f120e66

    goto :goto_1

    :cond_4
    const p2, 0x7f120e62

    .line 71
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
