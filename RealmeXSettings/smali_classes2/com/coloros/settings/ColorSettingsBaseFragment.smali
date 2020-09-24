.class public abstract Lcom/coloros/settings/ColorSettingsBaseFragment;
.super Lcom/coloros/settings/BackTitlePreferenceFragment;
.source "ColorSettingsBaseFragment.java"


# static fields
.field private static final ID_MAIN_LAYOUT:I = 0x7f0a03c9

.field public static final KEY_COLOR_PREFERENCE_FOOTER:Ljava/lang/String; = "color_preference_footer"

.field public static final KEY_COLOR_PREFERENCE_HEADER:Ljava/lang/String; = "color_preference_header"

.field public static final KEY_COLOR_PREFERENCE_HEADER_SCREEN:Ljava/lang/String; = "color_preference_header_screen"

.field private static final TAG:Ljava/lang/String; = "ColorSettingsBaseFragment"


# instance fields
.field private colorBackupToTop:Lcom/coloros/settings/a/a;

.field protected mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

.field public mContext:Landroid/content/Context;

.field private mDividerView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addPreferenceFooter(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 132
    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;

    if-eqz p1, :cond_3

    :cond_1
    const-string p1, "color_preference_footer"

    .line 133
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const p1, 0x7f150058

    .line 137
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->addPreferencesFromResource(I)V

    :cond_3
    return-void
.end method

.method public addPreferenceHeader(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 118
    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_2

    instance-of p1, p1, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;

    if-nez p1, :cond_2

    const-string p1, "color_preference_header"

    .line 119
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const p1, 0x7f150059

    .line 123
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->addPreferencesFromResource(I)V

    :cond_2
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    .line 64
    invoke-super {p0, p1}, Lcom/coloros/settings/BackTitlePreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->shouldAddPreferenceHeader()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->addPreferenceHeader(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->shouldAddPreferenceFooter()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->addPreferenceFooter(Z)V

    return-void
.end method

.method protected getPreferenceRecycleViewResId()I
    .locals 1

    const v0, 0x7f0d00be

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-super {p0, p1}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->colorBackupToTop:Lcom/coloros/settings/a/a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->supportFullScreen()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getPreferenceRecycleViewResId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->supportFullScreen()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Z)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->setMainLayoutPaddingTop(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p2}, Lcom/coloros/settings/ColorSettingsBaseFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p2}, Lcom/coloros/settings/ColorSettingsBaseFragment;->setDividerHeight(I)V

    const p2, 0x7f0a020e

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mDividerView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->unbind()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mDividerView:Landroid/view/View;

    .line 210
    invoke-super {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->colorBackupToTop:Lcom/coloros/settings/a/a;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->c()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 158
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ColorSettingsBaseFragment"

    const-string v0, "Activity not found."

    .line 167
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onResume()V

    .line 186
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->shouldSetOverScroll()Z

    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->shouldSetDivider()Z

    .line 186
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->colorBackupToTop:Lcom/coloros/settings/a/a;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->colorBackupToTop:Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 2085
    iput-object v1, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->colorBackupToTop:Lcom/coloros/settings/a/a;

    iget-object v1, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mDividerView:Landroid/view/View;

    .line 2093
    iput-object v1, v0, Lcom/coloros/settings/a/a;->b:Landroid/view/View;

    .line 194
    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/BackTitlePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    iget-object p2, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mDividerView:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f0a020e

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mDividerView:Landroid/view/View;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mDividerView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050063

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mDividerView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMainLayoutPaddingTop(Landroid/view/View;)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->shouldAddTopPadding()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a03c9

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ColorSettingsBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 244
    invoke-virtual {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public shouldAddPreferenceFooter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSetDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSetOverScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showTopSwitchBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected supportFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected useColorStyle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
