.class public Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;
.super Ljava/lang/Object;
.source "VibrationSettingFeature.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;,
        Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;

.field public b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field public c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field public d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field public e:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    .line 61
    new-instance p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;-><init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;

    .line 1104
    new-instance p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    const-string v0, "intensity_off"

    const v1, 0x7f12163c

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;-><init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->e:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 39
    invoke-static {v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "apply_ramping_ringer"

    .line 280
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "telephony"

    const-string v2, "ramping_ringer_enabled"

    .line 283
    invoke-static {p0, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)V
    .locals 1

    const/4 v0, 0x2

    .line 39
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->c(I)V

    return-void
.end method

.method private b(I)Z
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(I)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x0

    .line 210
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 211
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 212
    invoke-static {p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->d(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 213
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private static d(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0xd

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    const-string p1, "haptic_feedback_enabled"

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1

    .line 234
    :cond_3
    invoke-static {v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "apply_ramping_ringer"

    return-object p1

    :cond_4
    const-string p1, "vibrate_when_ringing"

    return-object p1
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "haptic_feedback_intensity"

    return-object p0

    :cond_1
    const-string p0, "notification_vibration_intensity"

    return-object p0

    :cond_2
    const-string p0, "ring_vibration_intensity"

    return-object p0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 251
    :cond_0
    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    return v1

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result p1

    return p1

    .line 257
    :cond_3
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result p1

    return p1

    .line 255
    :cond_4
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result p1

    return p1
.end method

.method public final a(ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(I)I

    move-result v3

    .line 136
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->e(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "apply_ramping_ringer"

    .line 139
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    .line 142
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 141
    invoke-static {v2, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v4

    :goto_1
    if-nez p1, :cond_3

    move v0, v3

    .line 146
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    .line 4316
    iget v2, p2, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->b:I

    if-ne v2, v0, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v3

    .line 5312
    :goto_2
    iget-object v5, p2, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->a:Ljava/lang/String;

    const-string v6, "intensity_on"

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    if-nez v2, :cond_7

    if-eqz v5, :cond_4

    .line 6312
    :cond_7
    iget-object p1, p2, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->a:Ljava/lang/String;

    return-object p1

    :cond_8
    return-object v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 83
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->e:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    .line 88
    iget-object v2, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    :cond_1
    move p1, v3

    goto :goto_1

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-ne v2, p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-ne v2, p1, :cond_1

    const/4 p1, 0x3

    :goto_1
    if-eqz p2, :cond_4

    .line 96
    new-instance v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    const p2, 0x7f12163e

    .line 97
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(I)I

    move-result v2

    const-string v4, "intensity_on"

    invoke-direct {v0, p0, v4, p2, v2}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;-><init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;Ljava/lang/String;II)V

    .line 1158
    :cond_4
    iget-object p2, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f:Landroid/content/Context;

    if-eqz p2, :cond_b

    .line 1159
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1316
    iget v2, v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->b:I

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v1

    .line 1162
    :goto_2
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->b(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1164
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->e(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apply_ramping_ringer"

    .line 1166
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1168
    invoke-static {p2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_6

    goto :goto_3

    :cond_6
    move v6, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v3

    :goto_4
    if-eq v2, v6, :cond_9

    .line 1170
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1171
    invoke-static {p2, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 1173
    :cond_8
    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1176
    :goto_5
    invoke-static {p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_9

    .line 2316
    iget v4, v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->b:I

    if-ne v1, v4, :cond_9

    .line 1186
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->c(I)V

    :cond_9
    if-nez v2, :cond_a

    .line 1193
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->b(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1195
    :cond_a
    invoke-static {p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->f(I)Ljava/lang/String;

    move-result-object p1

    .line 3316
    iget v0, v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->b:I

    .line 1195
    invoke-static {p2, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    return v3
.end method
