.class public Lcom/android/settings/datetime/c;
.super Lcom/android/settingslib/core/a;
.source "TimeFormatPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/util/Calendar;

.field private final b:Z

.field private final c:Lcom/android/settings/datetime/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/f;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean p3, p0, Lcom/android/settings/datetime/c;->b:Z

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/c;->a:Ljava/util/Calendar;

    .line 65
    iput-object p2, p0, Lcom/android/settings/datetime/c;->c:Lcom/android/settings/datetime/f;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 112
    invoke-static {p0, p1}, Lcom/android/settings/datetime/c;->c(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 113
    invoke-static {p0, p1}, Lcom/android/settings/datetime/c;->b(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "20120"

    const-string v2, "click_24_hour"

    .line 131
    invoke-static {p0, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "24"

    goto :goto_0

    :cond_1
    const-string v0, "12"

    .line 134
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "time_12_24"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "24 hour"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 92
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "24 hour"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/android/settings/datetime/c;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/datetime/c;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/datetime/c;->c:Lcom/android/settings/datetime/f;

    invoke-interface {p1}, Lcom/android/settings/datetime/f;->c()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/android/settings/datetime/c;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 11

    .line 75
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/c;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v0}, Lcom/android/settings/datetime/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 80
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 1108
    iget-object v2, p0, Lcom/android/settings/datetime/c;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 80
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/android/settings/datetime/c;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    iget-object v4, p0, Lcom/android/settings/datetime/c;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0x1f

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/datetime/c;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/settings/datetime/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
