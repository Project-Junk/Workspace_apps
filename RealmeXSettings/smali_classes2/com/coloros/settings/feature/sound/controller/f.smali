.class public final Lcom/coloros/settings/feature/sound/controller/f;
.super Lcom/android/settings/notification/o;
.source "Phone1RingtonePreferenceController.java"

# interfaces
.implements Lcom/coloros/settings/feature/sound/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/notification/o;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->an(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ringtone"

    if-eqz v0, :cond_0

    return-object v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 89
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/settings/utils/bb;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {v4, v3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    const-string v0, "ringtone_sim2"

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/notification/o;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ringtone_sim1"

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 51
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/bb;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    const-string v1, "sim2"

    goto :goto_0

    :cond_1
    const-string v1, "sim1"

    .line 59
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/coloros/settings/widget/preference/ColorRingtonePreference;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ringtone_sim1"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;)Z

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v3}, Lcom/coloros/settings/utils/al;->Q(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "simcard_mumber"

    .line 70
    invoke-static {v1, v3, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/f;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12127d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/f;->a(Landroidx/preference/Preference;)V

    return-void
.end method
