.class public final Lcom/coloros/settings/feature/sound/controller/j;
.super Lcom/android/settings/notification/q;
.source "WorkAlarmRingtonePreferenceController.java"

# interfaces
.implements Lcom/coloros/settings/feature/sound/a;


# instance fields
.field private final a:Lcom/android/settings/notification/c;

.field private final b:Landroid/os/UserManager;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/notification/q;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/android/settings/notification/c;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/j;->a:Lcom/android/settings/notification/c;

    .line 25
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/j;->b:Landroid/os/UserManager;

    .line 26
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/j;->b:Landroid/os/UserManager;

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    .line 26
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/j;->a:Lcom/android/settings/notification/c;

    .line 2044
    iget-object p1, p1, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput-boolean p1, p0, Lcom/coloros/settings/feature/sound/controller/j;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "work_alarm_alert"

    return-object v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "work_alarm_ringtone"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 32
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/j;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/j;->b:Landroid/os/UserManager;

    .line 2048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v2

    const-string v3, "sync_parent_sounds"

    .line 32
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/j;->a(Landroidx/preference/Preference;)V

    return-void
.end method
