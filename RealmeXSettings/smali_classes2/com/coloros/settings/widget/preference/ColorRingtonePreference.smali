.class public Lcom/coloros/settings/widget/preference/ColorRingtonePreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "ColorRingtonePreference.java"


# instance fields
.field private final i:Lcom/android/settings/notification/c;

.field private final j:Landroid/os/UserManager;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/android/settings/notification/c;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->i:Lcom/android/settings/notification/c;

    .line 69
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->j:Landroid/os/UserManager;

    .line 71
    sget-object v0, Lcom/android/settings/g$a;->ColorRingtonePreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 73
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->n:I

    .line 74
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->k:Z

    const/4 p2, 0x3

    .line 75
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->l:Z

    const/4 p2, 0x2

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    .line 78
    iget-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "sim1"

    .line 79
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 122
    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->n:I

    and-int/lit8 v1, v0, 0x1

    const-string v2, "sim1"

    if-nez v1, :cond_7

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_5

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    const-string v0, "notification_sound"

    goto :goto_2

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    const-string v0, "alarm_alert"

    goto :goto_2

    :cond_3
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    const-string v0, "calendar_sound"

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 128
    :cond_5
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "oppo_sms_notification_sound"

    goto :goto_2

    :cond_6
    const-string v0, "notification_sim2"

    goto :goto_2

    .line 124
    :cond_7
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ringtone"

    goto :goto_2

    :cond_8
    const-string v0, "ringtone_sim2"

    .line 139
    :goto_2
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->j:Landroid/os/UserManager;

    .line 2048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v1

    const/16 v3, -0x2710

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_9

    .line 139
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->i:Lcom/android/settings/notification/c;

    .line 3044
    iget-object v1, v1, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v5

    goto :goto_3

    :cond_9
    move v1, v4

    :goto_3
    if-eqz v1, :cond_a

    .line 141
    iget-object v3, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->j:Landroid/os/UserManager;

    .line 3048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v6

    const-string v7, "sync_parent_sounds"

    .line 141
    invoke-static {v3, v7, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_a

    move v4, v5

    .line 143
    :cond_a
    iget-boolean v3, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->l:Z

    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    if-nez v4, :cond_f

    .line 144
    iget v1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->n:I

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_d

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    and-int/lit8 p1, v1, 0x2

    if-eqz p1, :cond_c

    const-string v0, "work_notification_sound"

    goto :goto_6

    :cond_c
    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_f

    const-string v0, "work_alarm_alert"

    goto :goto_6

    .line 146
    :cond_d
    :goto_4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "work_ringtone"

    goto :goto_5

    :cond_e
    const-string p1, "work_ringtone_sim2"

    :goto_5
    move-object v0, p1

    :cond_f
    :goto_6
    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 221
    invoke-direct {p0, p2}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 223
    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    const-string v0, "ringtone"

    .line 226
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/coloros/settings/utils/j;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void

    :cond_1
    const-string v0, "ringtone_sim2"

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 229
    iget-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/coloros/settings/utils/j;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 308
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 307
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "file://"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_data=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 263
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 265
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 266
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 268
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorRingtonePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object p1
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 3

    .line 115
    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1302
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->n:I

    .line 317
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->a(Landroid/content/Intent;)V

    const-string v0, "extra_oppo_notification_type"

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_type_for_linearmotor_vibrate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->n:I

    const-string v1, "color_ringtone_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    const-class v1, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    .line 168
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 169
    invoke-direct {p0, v1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {p0, v2}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/utils/al;->an(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "sim_picker"

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->m:Ljava/lang/String;

    .line 3188
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "all"

    if-eqz p1, :cond_4

    move-object v0, v2

    .line 3192
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "sim1"

    .line 3193
    invoke-direct {p0, v1, p1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(Landroid/net/Uri;Ljava/lang/String;)V

    const-string p1, "sim2"

    .line 3194
    invoke-direct {p0, v1, p1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 3196
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->q:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->p:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->p:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 285
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->p:Ljava/lang/CharSequence;

    .line 287
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->p:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->q:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
