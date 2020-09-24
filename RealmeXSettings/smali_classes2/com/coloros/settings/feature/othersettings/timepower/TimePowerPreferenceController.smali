.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;
.super Lcom/android/settings/core/a;
.source "TimePowerPreferenceController.java"


# static fields
.field private static final AMPM_SIZE:I = 0xe

.field public static final PREFERENCE_POWER_OFF_STATE:Ljava/lang/String; = "power_off_switch"

.field public static final PREFERENCE_POWER_ON_STATE:Ljava/lang/String; = "power_on_switch"

.field private static final TAG:Ljava/lang/String; = "TimePowerPreferenceController"


# instance fields
.field private mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;IZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->updateSwitchState(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;IZ)V

    return-void
.end method

.method private enterTimePowerSettingsActivity(Landroidx/preference/Preference;)V
    .locals 7

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->is24Hour()Z

    move-result v2

    const-string v3, "extra_24hour"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "power_on_switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "extra_type"

    const-string v4, "extra_repeat"

    const-string v5, "extra_minute"

    const-string v6, "extra_hour"

    if-eqz v2, :cond_0

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3042
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 109
    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3050
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 110
    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3058
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 111
    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 112
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "power_off_switch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3074
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 114
    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3082
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 115
    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3090
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 116
    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f01006b

    const v1, 0x7f010074

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private formatTime(II)Landroid/text/SpannableString;
    .locals 10

    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->is24Hour()Z

    move-result v1

    const-string v2, "."

    const-string v3, "ID"

    const-string v4, ":"

    const-string v5, "%1$02d"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v6

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {p1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 136
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {p1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f12016c

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0xc

    if-lt p1, v8, :cond_2

    .line 142
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f120172

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-le p1, v8, :cond_3

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move p1, v8

    :cond_3
    :goto_0
    const-string v8, "CN"

    .line 149
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "TW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_1

    .line 152
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v6

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {p1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-direct {p0, p1, v1, v6}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->getTimeSpannableString(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_2

    .line 156
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {p1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-direct {p0, p1, v1, v6}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->getTimeSpannableString(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_2

    .line 150
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {p1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-direct {p0, p1, v1, v7}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->getTimeSpannableString(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private getTimeSpannableString(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;
    .locals 4

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xe

    .line 170
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x41600000    # 14.0f

    .line 174
    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 177
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    .line 179
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, v0, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, p1, p3, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 182
    :cond_2
    new-instance p3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p3, v0, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 182
    invoke-virtual {v1, p3, p2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-object v1

    .line 167
    :cond_3
    :goto_1
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private is24Hour()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private updateSwitchState(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;IZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    if-ne p2, v0, :cond_2

    .line 202
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 4074
    iget v6, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 206
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 4082
    iget v7, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 207
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 4090
    iget v9, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 208
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 5042
    iget v4, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 208
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 5050
    iget v5, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 208
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 5058
    iget v8, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 208
    invoke-static/range {v2 .. v9}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JIIIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit8 p2, p3, 0x1

    .line 211
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b(Z)V

    xor-int/lit8 p2, p3, 0x1

    .line 212
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 213
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->e(Landroid/content/Context;)V

    return-void

    .line 217
    :cond_1
    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b(Z)V

    .line 218
    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 219
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {p3}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Z)I

    move-result v2

    .line 5062
    iput v2, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->d:I

    :cond_2
    if-nez p2, :cond_4

    .line 222
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 225
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6042
    iget v4, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 226
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6050
    iget v5, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 227
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6058
    iget v8, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 228
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6074
    iget v6, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 228
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6082
    iget v7, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 229
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6090
    iget v9, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 228
    invoke-static/range {v2 .. v9}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JIIIIII)Z

    move-result v1

    if-eqz v1, :cond_3

    xor-int/lit8 p2, p3, 0x1

    .line 231
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b(Z)V

    xor-int/lit8 p2, p3, 0x1

    .line 232
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 233
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->e(Landroid/content/Context;)V

    return-void

    .line 237
    :cond_3
    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->b(Z)V

    .line 238
    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {p3}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Z)I

    move-result v1

    .line 6094
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->h:I

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/timepower/b;)Z

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;I)V

    .line 245
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result v1

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

    .line 59
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "power_on_switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1042
    iget v0, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 61
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1050
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->formatTime(II)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Landroid/text/SpannableString;)V

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1058
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 62
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "power_off_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1074
    iget v0, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 72
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1082
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->formatTime(II)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Landroid/text/SpannableString;)V

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1090
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 73
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$2;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    :cond_1
    :goto_0
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerPreferenceController$-AlfV2b9jADIzrtDVphvW9EUR5A;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerPreferenceController$-AlfV2b9jADIzrtDVphvW9EUR5A;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;)V

    .line 1108
    iput-object v0, p1, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$displayPreference$0$TimePowerPreferenceController(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->enterTimePowerSettingsActivity(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 88
    instance-of v0, p1, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power_on_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2042
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 95
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2050
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 95
    invoke-direct {p0, p1, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->formatTime(II)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Landroid/text/SpannableString;)V

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2058
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 96
    invoke-static {p1, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "power_off_switch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Z)V

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2074
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 99
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2082
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->formatTime(II)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Landroid/text/SpannableString;)V

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->mTimeConfig:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2090
    iget v1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 100
    invoke-static {p1, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
