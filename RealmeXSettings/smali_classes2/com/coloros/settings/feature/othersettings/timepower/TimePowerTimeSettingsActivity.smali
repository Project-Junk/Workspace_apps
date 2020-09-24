.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "TimePowerTimeSettingsActivity.java"


# instance fields
.field a:Landroid/widget/Toolbar;

.field private b:Lcom/color/support/widget/OppoTimePicker;

.field private c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private d:Z

.field private e:I

.field private f:Lcom/coloros/settings/feature/othersettings/timepower/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static a(JII)J
    .locals 1

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    if-nez p2, :cond_0

    const/4 p0, 0x5

    .line 271
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 272
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/16 p0, 0xb

    .line 274
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 275
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    .line 276
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 277
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 278
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->finish()V

    return-void
.end method

.method private a()Z
    .locals 15

    .line 120
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v1}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    invoke-static {v2, v3, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a(JII)J

    move-result-wide v4

    .line 126
    iget-boolean v6, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->d:Z

    const-string v7, "timepower_repeat"

    const-string v8, "timepower_time"

    const-wide/32 v9, 0x927c0

    const-string v11, "%1$02d"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v6, :cond_4

    .line 127
    iget-object v6, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1074
    iget v6, v6, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 127
    iget-object v14, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 1082
    iget v14, v14, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 127
    invoke-static {v2, v3, v6, v14}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a(JII)J

    move-result-wide v2

    sub-long/2addr v4, v2

    .line 128
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-gtz v2, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b()V

    return v12

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2042
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    if-ne v2, v0, :cond_2

    .line 132
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2050
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v12

    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "set_timepower_on_time"

    .line 3042
    invoke-static {p0, v3, v2}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v2, v13

    .line 139
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3058
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 139
    iget v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    if-eq v3, v4, :cond_3

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "set_timepower_on_repeat"

    .line 4042
    invoke-static {p0, v3, v2}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v2, v13

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 5038
    iput v0, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 5046
    iput v1, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 147
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    .line 5054
    iput v0, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    goto/16 :goto_4

    .line 149
    :cond_4
    iget-object v6, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6042
    iget v6, v6, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 149
    iget-object v14, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6050
    iget v14, v14, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 149
    invoke-static {v2, v3, v6, v14}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a(JII)J

    move-result-wide v2

    sub-long/2addr v4, v2

    .line 150
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-gtz v2, :cond_5

    .line 151
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b()V

    return v12

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6074
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    if-ne v2, v0, :cond_7

    .line 154
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 6082
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    if-eq v2, v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v12

    goto :goto_3

    .line 155
    :cond_7
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "set_timepower_off_time"

    .line 7042
    invoke-static {p0, v3, v2}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v2, v13

    .line 161
    :goto_3
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 7090
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 161
    iget v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    if-eq v3, v4, :cond_8

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "set_timepower_off_repeat"

    .line 8042
    invoke-static {p0, v3, v2}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v2, v13

    .line 167
    :cond_8
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 8070
    iput v0, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 8078
    iput v1, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 169
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    .line 8086
    iput v0, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    :goto_4
    if-eqz v2, :cond_c

    .line 173
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->d:Z

    if-eqz v0, :cond_a

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {v13}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Z)I

    move-result v1

    .line 8094
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->h:I

    goto :goto_6

    .line 180
    :cond_a
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_5
    move v12, v13

    goto :goto_6

    .line 183
    :cond_b
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {v13}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Z)I

    move-result v1

    .line 9062
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->d:I

    .line 186
    :goto_6
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/timepower/b;)Z

    if-eqz v12, :cond_c

    .line 188
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->d:Z

    xor-int/2addr v0, v13

    invoke-static {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;I)V

    :cond_c
    return v13
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 2

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    const-string v1, "extra_repeat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1216a4

    goto :goto_0

    :cond_0
    const v0, 0x7f1216a5

    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "navigate_title_text"

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 2

    const v0, 0x7f1216c3

    .line 196
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->finish()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 248
    iget v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    invoke-static {p0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Ue6qey5Zy8mbNL3Gy1XhLdHVAXw(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$qI_Efxh32KKBICIcZf_Yat6UbX4(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$xieHp50x2DOcuVI6eFGj5x_SQJw(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    const v0, 0x7f010073

    const v1, 0x7f010069

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 241
    iget p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    const-string p2, "extra_repeat"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    .line 242
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->c()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 9200
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 9202
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9203
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v1}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9204
    iget-boolean v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->d:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 9205
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 10042
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    if-ne v2, v0, :cond_0

    .line 9205
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 10050
    iget v0, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    move v4, v3

    .line 9208
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 10058
    iget v0, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 9208
    iget v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 9212
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 10074
    iget v2, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    if-ne v2, v0, :cond_3

    .line 9212
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 10082
    iget v0, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    if-eq v0, v1, :cond_4

    :cond_3
    move v4, v3

    .line 9215
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->f:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 10090
    iget v0, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 9215
    iget v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_0
    if-eqz v3, :cond_6

    .line 10253
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1216c1

    new-instance v2, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerTimeSettingsActivity$qI_Efxh32KKBICIcZf_Yat6UbX4;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerTimeSettingsActivity$qI_Efxh32KKBICIcZf_Yat6UbX4;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;)V

    .line 10254
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1216c0

    new-instance v2, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerTimeSettingsActivity$Ue6qey5Zy8mbNL3Gy1XhLdHVAXw;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerTimeSettingsActivity$Ue6qey5Zy8mbNL3Gy1XhLdHVAXw;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;)V

    .line 10258
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    const/4 v2, 0x0

    .line 10259
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 10260
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 10261
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0600d3

    .line 10262
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x3

    .line 10263
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0600d2

    .line 10264
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    .line 227
    :cond_6
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const p1, 0x7f0d0236

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->setContentView(I)V

    const p1, 0x7f1500e7

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->addPreferencesFromResource(I)V

    const p1, 0x7f0a070a

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a:Landroid/widget/Toolbar;

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a:Landroid/widget/Toolbar;

    const/4 v0, 0x1

    .line 1068
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    const-string v4, "setPreviewFrame"

    invoke-static {p1, v4, v1, v2}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a:Landroid/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f0a048b

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/OppoTimePicker;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreate extra ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimePowerTimeSettingsActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    const-string v2, "extra_24hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/support/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 67
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v1, v3}, Lcom/color/support/widget/OppoTimePicker;->setTextVisibility(Z)V

    .line 68
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    const-string v2, "extra_hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 69
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->b:Lcom/color/support/widget/OppoTimePicker;

    const-string v2, "extra_minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/support/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const-string v1, "extra_repeat"

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->e:I

    const-string v1, "extra_type"

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->d:Z

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-nez p1, :cond_3

    return-void

    .line 78
    :cond_3
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerTimeSettingsActivity$xieHp50x2DOcuVI6eFGj5x_SQJw;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerTimeSettingsActivity$xieHp50x2DOcuVI6eFGj5x_SQJw;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->c()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 92
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->d:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a:Landroid/widget/Toolbar;

    const v1, 0x7f1216a5

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a:Landroid/widget/Toolbar;

    const v1, 0x7f1216a4

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a011c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a021e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->finish()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerTimeSettingsActivity;->finish()V

    .line 116
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
