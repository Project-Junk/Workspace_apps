.class public final Lcom/coloros/settings/feature/sound/controller/m;
.super Lcom/android/settings/notification/o;
.source "WorkPhone2RingtonePreferenceController.java"

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

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->a:Lcom/android/settings/notification/c;

    .line 30
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/m;->b:Landroid/os/UserManager;

    .line 31
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/m;->b:Landroid/os/UserManager;

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/m;->a:Lcom/android/settings/notification/c;

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
    iput-boolean p1, p0, Lcom/coloros/settings/feature/sound/controller/m;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "work_ringtone_sim2"

    return-object v0
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/notification/o;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->f(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "work_ringtone_sim2"

    .line 49
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    const-string v1, "sim2"

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "work_ringtone_sim2"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 58
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/settings/feature/sound/controller/m;->b:Landroid/os/UserManager;

    .line 2048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v3

    const-string v4, "sync_parent_sounds"

    .line 58
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;)Z

    move-result v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/m;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121aa2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/m;->a(Landroidx/preference/Preference;)V

    return-void
.end method
