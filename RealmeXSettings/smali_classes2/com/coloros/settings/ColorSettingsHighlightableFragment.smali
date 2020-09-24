.class public abstract Lcom/coloros/settings/ColorSettingsHighlightableFragment;
.super Lcom/coloros/settings/ColorSettingsBaseFragment;
.source "ColorSettingsHighlightableFragment.java"


# instance fields
.field public a:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field public b:Z

.field private c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private d:Z

.field private e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->b:Z

    .line 37
    iput-boolean v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->d:Z

    .line 38
    new-instance v0, Lcom/coloros/settings/ColorSettingsHighlightableFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment$1;-><init>(Lcom/coloros/settings/ColorSettingsHighlightableFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->a:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_1
    return-void
.end method

.method public onBindPreferences()V
    .locals 2

    .line 2125
    iget-boolean v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->d:Z

    if-nez v0, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2127
    iget-object v1, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 2129
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2130
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    .line 2131
    iput-boolean v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->d:Z

    .line 2132
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->a()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preference_highlighted"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->b:Z

    :cond_0
    return-void
.end method

.method public onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 93
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v0, v2

    .line 97
    :cond_3
    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iget-boolean v2, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->b:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->a:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->a:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    return-object p1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f15003e

    .line 81
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->a:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_0

    .line 1171
    iget-boolean v0, v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->c:Z

    const-string v1, "android:preference_highlighted"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onUnbindPreferences()V
    .locals 2

    .line 2137
    iget-boolean v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->d:Z

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v1, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    .line 2140
    iput-object v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_0
    const/4 v0, 0x0

    .line 2142
    iput-boolean v0, p0, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->d:Z

    :cond_1
    return-void
.end method
