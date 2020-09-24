.class public Lcom/android/settings/accounts/SyncStateSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "SyncStateSwitchPreference.java"


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
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f1302dd

    .line 61
    invoke-direct {p0, p1, v1, v0, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->a:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->b:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->c:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->h:Z

    .line 62
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f1302dd

    .line 52
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->a:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->b:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->c:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->h:Z

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 54
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->f:Ljava/lang/String;

    .line 56
    iput v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 67
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->f:Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->g:I

    .line 70
    iget-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setVisible(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 76
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a06bc

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/AnimatedImageView;

    const v1, 0x7f0a06bd

    .line 79
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    iget-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->b:Z

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

    .line 82
    :goto_2
    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setVisibility(I)V

    .line 83
    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->a:Z

    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setAnimating(Z)V

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->c:Z

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

    .line 86
    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "com.android.internal.R.id.switch_widget"

    .line 88
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->h:Z

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020010

    .line 97
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12164d

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 100
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .line 150
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->h:Z

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_0
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->onClick()V

    :cond_1
    return-void
.end method
