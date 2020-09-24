.class public Lcom/android/settings/datetime/d;
.super Lcom/android/settingslib/core/a;
.source "TimePreferenceController.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final b:Lcom/android/settings/datetime/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/d$a;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/android/settings/datetime/d;->b:Lcom/android/settings/datetime/d$a;

    .line 55
    iput-object p3, p0, Lcom/android/settings/datetime/d;->a:Lcom/android/settings/datetime/AutoTimePreferenceController;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "time"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "time"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/d;->b:Lcom/android/settings/datetime/d$a;

    invoke-interface {p1}, Lcom/android/settings/datetime/d$a;->d()V

    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/android/settings/datetime/d;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    .line 1113
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 1114
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    const/4 p3, 0x0

    .line 1115
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    .line 1116
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 1117
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide v0, 0x1160d1b4800L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 1119
    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    .line 1120
    iget-object p3, p0, Lcom/android/settings/datetime/d;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/d;->b:Lcom/android/settings/datetime/d$a;

    invoke-interface {p1}, Lcom/android/settings/datetime/d$a;->a_()V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 65
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/settings/datetime/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/datetime/d;->a:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
