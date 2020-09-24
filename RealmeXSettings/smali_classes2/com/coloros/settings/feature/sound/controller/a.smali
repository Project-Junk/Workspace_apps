.class public final Lcom/coloros/settings/feature/sound/controller/a;
.super Lcom/android/settings/notification/q;
.source "CalendarReminderRingtonePreferenceController.java"

# interfaces
.implements Lcom/coloros/settings/feature/sound/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/notification/q;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "calendar_sound"

    return-object v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "calendar_remind_ringtone"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/a;->a(Landroidx/preference/Preference;)V

    return-void
.end method
