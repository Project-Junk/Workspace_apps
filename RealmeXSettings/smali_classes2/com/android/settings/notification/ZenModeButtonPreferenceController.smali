.class public Lcom/android/settings/notification/ZenModeButtonPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroidx/fragment/app/FragmentManager;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "zen_mode_toggle"

    .line 45
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 46
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->a:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private a()V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$TasrtsDVRZbl8beBCZ_yzu1QoRs;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$TasrtsDVRZbl8beBCZ_yzu1QoRs;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$RO7Ilwpqc5vc-q_fJdQ72Mq6l7c;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$RO7Ilwpqc5vc-q_fJdQ72Mq6l7c;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$S3prOzLFWgGbMNsQpUtZ9z7cjSw;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$S3prOzLFWgGbMNsQpUtZ9z7cjSw;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 3

    .line 117
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x4f4

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 119
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {p2, p1}, Lcom/android/settings/notification/w;->b(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 110
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x4f4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->j:Lcom/android/settings/notification/w;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/w;->a(I)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 3

    .line 103
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x4f4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 105
    new-instance p1, Lcom/android/settings/notification/SettingsEnableZenModeDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;-><init>()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->a:Landroidx/fragment/app/FragmentManager;

    const-string v1, "EnableZenModeButton"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0x4f4

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/w;->a(I)V

    return-void
.end method

.method public static synthetic lambda$RO7Ilwpqc5vc-q_fJdQ72Mq6l7c(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$S3prOzLFWgGbMNsQpUtZ9z7cjSw(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$TasrtsDVRZbl8beBCZ_yzu1QoRs(Lcom/android/settings/notification/ZenModeButtonPreferenceController;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->a(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$yOOK5TeOM6YYeiepAb0H_yOwcPg(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_toggle"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a07d5

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b:Landroid/widget/Button;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->a()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->c:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 70
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a07d4

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->c:Landroid/widget/Button;

    .line 72
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->c:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$yOOK5TeOM6YYeiepAb0H_yOwcPg;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$yOOK5TeOM6YYeiepAb0H_yOwcPg;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 1092
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->c:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1093
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->a()V

    .line 1094
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 1087
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->c:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1088
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->b:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
