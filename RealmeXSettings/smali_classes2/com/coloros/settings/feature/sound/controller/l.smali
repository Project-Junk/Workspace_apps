.class public final Lcom/coloros/settings/feature/sound/controller/l;
.super Lcom/android/settings/notification/o;
.source "WorkPhone1RingtonePreferenceController.java"

# interfaces
.implements Lcom/coloros/settings/feature/sound/a;


# instance fields
.field private final a:Lcom/android/settings/notification/c;

.field private final b:Landroid/os/UserManager;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/notification/o;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/android/settings/notification/c;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/l;->a:Lcom/android/settings/notification/c;

    .line 30
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/l;->b:Landroid/os/UserManager;

    .line 31
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/l;->b:Landroid/os/UserManager;

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/l;->a:Lcom/android/settings/notification/c;

    .line 2044
    iget-object p1, p1, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput-boolean p1, p0, Lcom/coloros/settings/feature/sound/controller/l;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->an(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "work_ringtone"

    if-eqz v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/settings/utils/bb;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {v4, v3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    const-string v0, "work_ringtone_sim2"

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/notification/o;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "work_ringtone_sim1"

    .line 38
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/bb;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    const-string v1, "sim2"

    goto :goto_0

    :cond_1
    const-string v1, "sim1"

    .line 52
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "work_ringtone_sim1"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 62
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/l;->b:Landroid/os/UserManager;

    .line 2048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v2

    const-string v3, "sync_parent_sounds"

    .line 62
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/l;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {v2}, Lcom/coloros/settings/utils/al;->Q(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "simcard_mumber"

    .line 66
    invoke-static {v0, v2, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/l;->a(Landroidx/preference/Preference;)V

    return-void
.end method
