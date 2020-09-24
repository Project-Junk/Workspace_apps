.class public Lcom/android/settings/datetime/b;
.super Lcom/android/settingslib/core/a;
.source "DatePreferenceController.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/datetime/b$a;

.field private final b:Lcom/android/settings/datetime/AutoTimePreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/b$a;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcom/android/settings/datetime/b;->a:Lcom/android/settings/datetime/b$a;

    .line 54
    iput-object p3, p0, Lcom/android/settings/datetime/b;->b:Lcom/android/settings/datetime/AutoTimePreferenceController;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "date"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "date"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/b;->a:Lcom/android/settings/datetime/b$a;

    invoke-interface {p1}, Lcom/android/settings/datetime/b$a;->e()V

    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .line 1114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 1116
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 1117
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 1118
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 1119
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide p3, 0x1160d1b4800L

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    .line 1121
    div-long p3, p1, p3

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p3, v0

    if-gez p3, :cond_0

    .line 1122
    iget-object p3, p0, Lcom/android/settings/datetime/b;->mContext:Landroid/content/Context;

    const-string p4, "alarm"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/b;->a:Lcom/android/settings/datetime/b$a;

    invoke-interface {p1}, Lcom/android/settings/datetime/b$a;->a_()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 64
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/datetime/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/settings/datetime/b;->b:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
