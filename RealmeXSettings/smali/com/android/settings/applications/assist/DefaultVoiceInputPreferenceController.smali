.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;
.super Lcom/android/settings/applications/defaultapps/a;
.source "DefaultVoiceInputPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;
    }
.end annotation


# instance fields
.field private d:Lcom/android/settings/applications/assist/c;

.field private e:Lcom/android/internal/app/AssistUtils;

.field private f:Landroidx/preference/PreferenceScreen;

.field private g:Landroidx/preference/Preference;

.field private h:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/a;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;-><init>(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->h:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;

    .line 52
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->e:Lcom/android/internal/app/AssistUtils;

    .line 53
    new-instance v0, Lcom/android/settings/applications/assist/c;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/assist/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->d:Lcom/android/settings/applications/assist/c;

    .line 54
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->d:Lcom/android/settings/applications/assist/c;

    invoke-virtual {p1}, Lcom/android/settings/applications/assist/c;->a()V

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->g:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->d:Lcom/android/settings/applications/assist/c;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/c;->a()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->f:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->f:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->g:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->f:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->g:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/applications/b;)Landroid/content/Intent;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->a()Lcom/android/settingslib/applications/b;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 125
    instance-of v1, p1, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    check-cast p1, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;

    .line 1163
    iget-object v1, p1, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;->a:Lcom/android/settings/applications/assist/c$a;

    iget-object v1, v1, Lcom/android/settings/applications/assist/c$a;->d:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    return-object v0

    .line 1166
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;->a:Lcom/android/settings/applications/assist/c$a;

    iget-object p1, p1, Lcom/android/settings/applications/assist/c$a;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final a()Lcom/android/settingslib/applications/b;
    .locals 10

    .line 1148
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->d:Lcom/android/settings/applications/assist/c;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a(Lcom/android/settings/applications/assist/c;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1152
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->d:Lcom/android/settings/applications/assist/c;

    iget-object v2, v2, Lcom/android/settings/applications/assist/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/settings/applications/assist/c$b;

    .line 107
    iget-object v3, v8, Lcom/android/settings/applications/assist/c$b;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->a:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->c:I

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/c$a;Z)V

    return-object v0

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->d:Lcom/android/settings/applications/assist/c;

    iget-object v2, v2, Lcom/android/settings/applications/assist/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/settings/applications/assist/c$c;

    .line 114
    iget-object v3, v8, Lcom/android/settings/applications/assist/c$c;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->a:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->c:I

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/c$a;Z)V

    return-object v0

    :cond_5
    return-object v1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->f:Landroidx/preference/PreferenceScreen;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->g:Landroidx/preference/Preference;

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "voice_input_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->d:Lcom/android/settings/applications/assist/c;

    .line 64
    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a(Lcom/android/settings/applications/assist/c;)Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->e:Lcom/android/internal/app/AssistUtils;

    iget v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->c:I

    .line 66
    invoke-virtual {v1, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 67
    invoke-static {v1, v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->h:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->h:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->c()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->g:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/a;->updateState(Landroidx/preference/Preference;)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->c()V

    return-void
.end method
