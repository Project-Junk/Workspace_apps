.class public Lcom/android/settings/notification/HeaderPreferenceController;
.super Lcom/android/settings/notification/l;
.source "HeaderPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final j:Lcom/android/settings/dashboard/DashboardFragment;

.field private k:Lcom/android/settings/widget/b;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/android/settings/notification/HeaderPreferenceController;->l:Z

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->j:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_app_header"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/HeaderPreferenceController;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->b:Landroid/app/NotificationChannelGroup;

    .line 97
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 99
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object v2, v2, Lcom/android/settings/notification/k$a;->d:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 101
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->g:Landroid/content/Context;

    const v3, 0x7f120eb6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 103
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->b:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 104
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->l:Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->k:Lcom/android/settings/widget/b;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/settings/notification/HeaderPreferenceController;->j:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;)Lcom/android/settings/widget/b;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->j:Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 67
    iget-boolean v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->l:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 76
    :cond_1
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->j:Lcom/android/settings/dashboard/DashboardFragment;

    const v2, 0x7f0a0260

    .line 78
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    .line 77
    invoke-static {v1, v0, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/HeaderPreferenceController;->k:Lcom/android/settings/widget/b;

    .line 79
    iget-object p1, p0, Lcom/android/settings/notification/HeaderPreferenceController;->k:Lcom/android/settings/widget/b;

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object p1

    .line 1125
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/HeaderPreferenceController;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->b:Landroid/app/NotificationChannelGroup;

    .line 1127
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->d:Ljava/lang/CharSequence;

    .line 1163
    :goto_0
    iput-object v0, p1, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notification/HeaderPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1173
    iput-object v0, p1, Lcom/android/settings/widget/b;->c:Ljava/lang/CharSequence;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    .line 1209
    iput-object v0, p1, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget v0, v0, Lcom/android/settings/notification/k$a;->b:I

    .line 1214
    iput v0, p1, Lcom/android/settings/widget/b;->f:I

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/b;->a(I)Lcom/android/settings/widget/b;

    move-result-object p1

    .line 2197
    iput-boolean v0, p1, Lcom/android/settings/widget/b;->g:Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->j:Lcom/android/settings/dashboard/DashboardFragment;

    .line 87
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/notification/HeaderPreferenceController;->j:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->g:Landroid/content/Context;

    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
