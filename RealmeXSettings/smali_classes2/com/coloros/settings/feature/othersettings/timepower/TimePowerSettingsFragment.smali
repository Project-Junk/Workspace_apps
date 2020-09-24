.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;
.super Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;
.source "TimePowerSettingsFragment.java"


# instance fields
.field a:Lcom/color/support/widget/OppoTimePicker;

.field b:I

.field c:Z

.field d:Lcom/coloros/settings/feature/othersettings/timepower/b;

.field private e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 265
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 2

    .line 104
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerRepeatSelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    const-string v1, "extra_repeat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1216a4

    goto :goto_0

    :cond_0
    const v0, 0x7f1216a5

    .line 107
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "navigate_title_text"

    .line 106
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 21

    move-object/from16 v0, p0

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v2

    iput-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 127
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v3}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1277
    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v12, 0x1

    if-nez v2, :cond_0

    const/4 v6, 0x5

    .line 1279
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v12

    .line 1280
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/16 v6, 0xb

    .line 1282
    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 1283
    invoke-virtual {v5, v6, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    const/4 v13, 0x0

    .line 1284
    invoke-virtual {v5, v6, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 1285
    invoke-virtual {v5, v6, v13}, Ljava/util/Calendar;->set(II)V

    .line 1286
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 132
    iget-boolean v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c:Z

    const-string v14, "timepower_repeat"

    const-string v15, "timepower_time"

    const-string v10, "%1$02d"

    if-nez v5, :cond_5

    .line 133
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v5}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result v16

    .line 134
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 2090
    iget v9, v5, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 135
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3074
    iget v7, v5, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 135
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 3082
    iget v8, v5, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 136
    iget v6, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    move v5, v2

    move/from16 v17, v6

    move v6, v11

    move/from16 v18, v9

    move/from16 v9, v17

    move-object/from16 v19, v10

    move/from16 v10, v18

    .line 135
    invoke-static/range {v3 .. v10}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JIIIIII)Z

    move-result v3

    if-eqz v16, :cond_1

    if-eqz v3, :cond_1

    .line 138
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->e(Landroid/content/Context;)V

    return v13

    .line 141
    :cond_1
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 4042
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    if-ne v3, v2, :cond_3

    .line 141
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 4050
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    if-eq v3, v11, :cond_2

    goto :goto_0

    :cond_2
    move v3, v13

    goto :goto_1

    .line 142
    :cond_3
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    move-object/from16 v10, v19

    invoke-static {v5, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v5, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "set_timepower_on_time"

    .line 5042
    invoke-static {v1, v4, v3}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v3, v12

    .line 148
    :goto_1
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 5058
    iget v4, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 148
    iget v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    if-eq v4, v5, :cond_4

    .line 149
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "set_timepower_on_repeat"

    .line 6042
    invoke-static {v1, v4, v3}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v3, v12

    .line 154
    :cond_4
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 7038
    iput v2, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 7046
    iput v11, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 156
    iget v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    .line 7054
    iput v2, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    goto/16 :goto_4

    .line 158
    :cond_5
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v5}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result v16

    .line 159
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 7058
    iget v9, v5, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 160
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 8042
    iget v5, v5, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 160
    iget-object v6, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 8050
    iget v6, v6, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 160
    iget v8, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    move v7, v2

    move/from16 v17, v8

    move v8, v11

    move-object/from16 v20, v10

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JIIIIII)Z

    move-result v3

    if-eqz v16, :cond_6

    if-eqz v3, :cond_6

    .line 163
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->e(Landroid/content/Context;)V

    return v13

    .line 166
    :cond_6
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 8074
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    if-ne v3, v2, :cond_8

    .line 166
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 8082
    iget v3, v3, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    if-eq v3, v11, :cond_7

    goto :goto_2

    :cond_7
    move v3, v13

    goto :goto_3

    .line 167
    :cond_8
    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    move-object/from16 v7, v20

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v13

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "set_timepower_off_time"

    .line 9042
    invoke-static {v1, v4, v3}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v3, v12

    .line 173
    :goto_3
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 9090
    iget v4, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 173
    iget v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    if-eq v4, v5, :cond_9

    .line 174
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "set_timepower_off_repeat"

    .line 10042
    invoke-static {v1, v4, v3}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v3, v12

    .line 179
    :cond_9
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    .line 10070
    iput v2, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 10078
    iput v11, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 181
    iget v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    .line 10086
    iput v2, v4, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    :goto_4
    if-eqz v3, :cond_d

    .line 185
    iget-boolean v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c:Z

    if-eqz v2, :cond_b

    .line 186
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    .line 189
    :cond_a
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {v12}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Z)I

    move-result v3

    .line 10094
    iput v3, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->h:I

    goto :goto_6

    .line 192
    :cond_b
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_5
    move v13, v12

    goto :goto_6

    .line 195
    :cond_c
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {v12}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Z)I

    move-result v3

    .line 11062
    iput v3, v2, Lcom/coloros/settings/feature/othersettings/timepower/b;->d:I

    .line 198
    :goto_6
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->d:Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/timepower/b;)Z

    if-eqz v13, :cond_d

    .line 200
    iget-boolean v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c:Z

    xor-int/2addr v2, v12

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;I)V

    :cond_d
    return v12
.end method

.method private c()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Che-aaujk-u0QraWqt006Oo5ioU(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$o5XA6zezIQDCThYJhvPNG_qZtYE(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$tQGqe2hL1s3o2CNDCacO3-O-9go(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 258
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerSettingsFragment$Che-aaujk-u0QraWqt006Oo5ioU;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerSettingsFragment$Che-aaujk-u0QraWqt006Oo5ioU;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;)V

    const v2, 0x7f1216c1

    .line 259
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerSettingsFragment$o5XA6zezIQDCThYJhvPNG_qZtYE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerSettingsFragment$o5XA6zezIQDCThYJhvPNG_qZtYE;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;)V

    const v2, 0x7f1216c0

    .line 264
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreate extra ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimePowerTimeSettingsActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    const-string v2, "extra_24hour"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/support/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 87
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/color/support/widget/OppoTimePicker;->setTextVisibility(Z)V

    .line 88
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    const-string v3, "extra_hour"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 89
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    const-string v3, "extra_minute"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/color/support/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const-string v1, "extra_repeat"

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    const-string v1, "extra_type"

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c:Z

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "save_repeat"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    :cond_2
    const-string p1, "timepower_repeat_settings"

    .line 102
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerSettingsFragment$tQGqe2hL1s3o2CNDCacO3-O-9go;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerSettingsFragment$tQGqe2hL1s3o2CNDCacO3-O-9go;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 246
    iget p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    const-string p2, "extra_repeat"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    .line 247
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->c()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->setHasOptionsMenu(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f13014a

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f1500e7

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a048b

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/OppoTimePicker;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->a:Lcom/color/support/widget/OppoTimePicker;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a011c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a021e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 304
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingsFragment;->b:I

    const-string v1, "save_repeat"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
