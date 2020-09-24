.class public Lcom/color/eyeprotect/ui/a/b;
.super Lcom/color/eyeprotect/ui/a/a;

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/ui/a/b$b;,
        Lcom/color/eyeprotect/ui/a/b$a;
    }
.end annotation


# static fields
.field private static final e:Landroid/net/Uri;


# instance fields
.field c:Lcom/color/eyeprotect/ui/a/b$b;

.field protected d:Lcom/color/eyeprotect/b/a;

.field private f:Lcom/color/support/preference/ColorMarkPreference;

.field private g:Landroidx/preference/PreferenceGroup;

.field private h:Lcom/color/support/preference/ColorMarkPreference;

.field private i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

.field private j:Lcom/color/support/preference/ColorSwitchPreference;

.field private k:Lcom/color/support/preference/ColorSwitchPreference;

.field private l:Lcom/color/eyeprotect/util/ColorTemperaturePreference;

.field private m:Z

.field private n:Landroid/content/ContentResolver;

.field private o:Landroid/app/Activity;

.field private p:Lcolor/support/v7/widget/Toolbar;

.field private q:Lcolor/support/design/widget/ColorAppBarLayout;

.field private r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "color_eyeprotect_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/color/eyeprotect/ui/a/b;->e:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->c:Lcom/color/eyeprotect/ui/a/b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/ui/a/b;->m:Z

    new-instance v0, Lcom/color/eyeprotect/ui/a/b$a;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/ui/a/b$a;-><init>(Lcom/color/eyeprotect/ui/a/b;)V

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->h()V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/a/b;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/a/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->b(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->c(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "mode"

    const-string v0, "2"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(ZZZ)V
    .locals 0

    iget-boolean p3, p0, Lcom/color/eyeprotect/ui/a/b;->m:Z

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/color/eyeprotect/ui/a/b;->m:Z

    iget-object p3, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p3, p1}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;Z)V

    iget-object p3, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p3, p2}, Lcom/color/eyeprotect/util/e;->d(Landroid/content/ContentResolver;Z)V

    iget-object p3, p0, Lcom/color/eyeprotect/ui/a/b;->h:Lcom/color/support/preference/ColorMarkPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Lcom/color/support/preference/ColorMarkPreference;->setSelectable(Z)V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->f:Lcom/color/support/preference/ColorMarkPreference;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorMarkPreference;->setSelectable(Z)V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    iget-boolean p0, p0, Lcom/color/eyeprotect/ui/a/b;->m:Z

    invoke-static {p1, p0}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic b(Lcom/color/eyeprotect/ui/a/b;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic c(Lcom/color/eyeprotect/ui/a/b;)Lcom/color/support/preference/ColorSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->k:Lcom/color/support/preference/ColorSwitchPreference;

    return-object p0
.end method

.method static synthetic f()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/color/eyeprotect/ui/a/b;->e:Landroid/net/Uri;

    return-object v0
.end method

.method private g()V
    .locals 1

    const-string v0, "key_fixed_time_settings"

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    invoke-virtual {v0, p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;)V

    const-string v0, "key_fixed_time_open"

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->j:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->j:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "key_immediately_open"

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->k:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->k:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "color_temperature"

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->l:Lcom/color/eyeprotect/util/ColorTemperaturePreference;

    const-string v0, "key_normal"

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorMarkPreference;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->h:Lcom/color/support/preference/ColorMarkPreference;

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->h:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "key_saturation"

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorMarkPreference;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->f:Lcom/color/support/preference/ColorMarkPreference;

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->f:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "key_group_saturation"

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->g:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->k:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->k:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->j:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/ui/a/b;->j:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->j()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Z)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/ui/a/b;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->b(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->b(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Z)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->c(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->c(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/color/eyeprotect/ui/a/b;->f:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v2, v0}, Lcom/color/support/preference/ColorMarkPreference;->a(Z)V

    iget-object v2, p0, Lcom/color/eyeprotect/ui/a/b;->f:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/color/support/preference/ColorMarkPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->h:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->a(Z)V

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->h:Lcom/color/support/preference/ColorMarkPreference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/color/support/preference/ColorMarkPreference;->setSelectable(Z)V

    return-void
.end method

.method private m()V
    .locals 0

    return-void
.end method

.method private n()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/h;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0701df

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method public d()V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->h()V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->i:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/color/eyeprotect/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/color/eyeprotect/b/a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/color/eyeprotect/b/a;

    iput-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->d:Lcom/color/eyeprotect/b/a;

    :goto_0
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/color/eyeprotect/ui/a/a;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->d(J)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->a(J)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->c(J)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->b(J)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/color/eyeprotect/ui/a/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080168

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    iput-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->p:Lcolor/support/v7/widget/Toolbar;

    iget-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->p:Lcolor/support/v7/widget/Toolbar;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const p2, 0x7f080095

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/color/common/a/b;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f0077

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/color/eyeprotect/ui/a/b;->p:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p3, p2}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->p:Lcolor/support/v7/widget/Toolbar;

    const p3, 0x7f070140

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    iget-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->p:Lcolor/support/v7/widget/Toolbar;

    new-instance p3, Lcom/color/eyeprotect/ui/a/b$1;

    invoke-direct {p3, p0}, Lcom/color/eyeprotect/ui/a/b$1;-><init>(Lcom/color/eyeprotect/ui/a/b;)V

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/f/t;->a(Landroid/view/View;Z)V

    const p2, 0x7f080048

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->q:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->n()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/color/eyeprotect/ui/a/b;->q:Lcolor/support/design/widget/ColorAppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p3, p2, v0, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->o:Landroid/app/Activity;

    const p2, 0x7f12000c

    invoke-virtual {p0, p2}, Lcom/color/eyeprotect/ui/a/b;->addPreferencesFromResource(I)V

    iget-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->o:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    new-instance p2, Lcom/color/eyeprotect/ui/a/b$b;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/color/eyeprotect/ui/a/b$b;-><init>(Lcom/color/eyeprotect/ui/a/b;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->c:Lcom/color/eyeprotect/ui/a/b$b;

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->g()V

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->i()V

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->m()V

    iget-object p2, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/color/eyeprotect/util/e;->d(Landroid/content/ContentResolver;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/eyeprotect/ui/a/b;->m:Z

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/color/eyeprotect/ui/a/a;->onPause()V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->c:Lcom/color/eyeprotect/ui/a/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->c:Lcom/color/eyeprotect/ui/a/b$b;

    invoke-virtual {v0}, Lcom/color/eyeprotect/ui/a/b$b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->l:Lcom/color/eyeprotect/util/ColorTemperaturePreference;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->l:Lcom/color/eyeprotect/util/ColorTemperaturePreference;

    invoke-virtual {p0}, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->b()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_fixed_time_open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/color/eyeprotect/util/e;->h(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p1, v1}, Lcom/color/eyeprotect/util/e;->d(Landroid/content/ContentResolver;I)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->j()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->k()V

    :goto_1
    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->h()V

    goto :goto_3

    :cond_3
    const-string v0, "key_immediately_open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/color/eyeprotect/util/e;->h(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p1, v1}, Lcom/color/eyeprotect/util/e;->d(Landroid/content/ContentResolver;I)Z

    :cond_4
    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0, p2}, Lcom/color/eyeprotect/ui/a/b;->a(Z)V

    goto :goto_3

    :cond_5
    const-string v0, "key_saturation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_7

    invoke-direct {p0, v1, v2, v1}, Lcom/color/eyeprotect/ui/a/b;->a(ZZZ)V

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->h:Lcom/color/support/preference/ColorMarkPreference;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/color/support/preference/ColorMarkPreference;->a(Z)V

    goto :goto_3

    :cond_6
    const-string v0, "key_normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-direct {p0, v2, v1, v1}, Lcom/color/eyeprotect/ui/a/b;->a(ZZZ)V

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b;->f:Lcom/color/support/preference/ColorMarkPreference;

    goto :goto_2

    :cond_7
    :goto_3
    return v2
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/color/eyeprotect/ui/a/a;->onResume()V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->c:Lcom/color/eyeprotect/ui/a/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->c:Lcom/color/eyeprotect/ui/a/b$b;

    invoke-virtual {v0}, Lcom/color/eyeprotect/ui/a/b$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->l:Lcom/color/eyeprotect/util/ColorTemperaturePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->l:Lcom/color/eyeprotect/util/ColorTemperaturePreference;

    invoke-virtual {v0}, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a()V

    :cond_1
    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->i()V

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->h()V

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/a/b;->l()V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->n:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/eyeprotect/ui/a/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/color/eyeprotect/ui/a/a;->onStart()V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->d:Lcom/color/eyeprotect/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b;->d:Lcom/color/eyeprotect/b/a;

    invoke-interface {v0, p0}, Lcom/color/eyeprotect/b/a;->a(Lcom/color/eyeprotect/ui/a/b;)V

    :cond_0
    return-void
.end method
