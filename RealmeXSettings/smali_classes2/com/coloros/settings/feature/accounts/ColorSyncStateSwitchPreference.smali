.class public Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "ColorSyncStateSwitchPreference.java"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Landroid/accounts/Account;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->a:Z

    .line 33
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->b:Z

    .line 34
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->c:Z

    .line 44
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->h:Z

    const p1, 0x7f0d0100

    .line 58
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setLayoutResource(I)V

    const p1, 0x7f0d00cd

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setWidgetLayoutResource(I)V

    .line 60
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->a:Z

    .line 33
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->b:Z

    .line 34
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->c:Z

    .line 44
    iput-boolean p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->h:Z

    const p2, 0x7f0d00cd

    .line 48
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setWidgetLayoutResource(I)V

    const/4 p2, 0x0

    .line 49
    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 50
    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->f:Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 65
    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->f:Ljava/lang/String;

    .line 67
    iput p4, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->g:I

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 73
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a06bc

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/AnimatedImageView;

    const v1, 0x7f0a06bd

    .line 76
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    iget-boolean v2, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    const/16 v5, 0x8

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    .line 79
    :goto_2
    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setVisibility(I)V

    .line 80
    iget-boolean v6, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->a:Z

    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setAnimating(Z)V

    .line 82
    iget-boolean v0, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->c:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v5

    .line 83
    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020001

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->h:Z

    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020010

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12164d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 97
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const v0, 0x7f0a0311

    .line 1104
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1106
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1109
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public onClick()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->h:Z

    if-nez v0, :cond_1

    .line 160
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    .line 161
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->onClick()V

    :cond_1
    return-void
.end method
