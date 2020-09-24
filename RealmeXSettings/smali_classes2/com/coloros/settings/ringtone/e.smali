.class public final Lcom/coloros/settings/ringtone/e;
.super Ljava/lang/Object;
.source "OppoRingtonePreferencesGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/e$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/ringtone/f;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/coloros/settings/ringtone/e$a;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    .line 36
    iget-object p1, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    new-instance v0, Lcom/coloros/settings/ringtone/e$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/e$1;-><init>(Lcom/coloros/settings/ringtone/e;)V

    .line 1154
    iput-object v0, p1, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->b:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)I
    .locals 2

    .line 94
    new-instance v0, Lcom/coloros/settings/ringtone/f;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/coloros/settings/ringtone/f;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3087
    iget-object p1, p0, Lcom/coloros/settings/ringtone/e;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3088
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    const/4 v1, 0x0

    .line 3141
    iput v1, v0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->setTitle(I)V

    return-void
.end method

.method public final a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/ringtone/f;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/coloros/settings/ringtone/e;->b:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->removeAll()V

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/f;

    .line 59
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    invoke-virtual {v2}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2051
    iget-object v2, v0, Lcom/coloros/settings/ringtone/f;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v0, v0, Lcom/coloros/settings/ringtone/f;->c:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a(Z)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    .line 2093
    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->getPreferenceCount()I

    move-result v1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 2095
    invoke-virtual {v0, p1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorMarkPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a(Lcom/color/support/preference/ColorMarkPreference;Z)V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
