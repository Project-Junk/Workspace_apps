.class public Lcom/android/settings/widget/MasterSwitchPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterSwitchPreference.java"


# instance fields
.field private a:Landroid/widget/Switch;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/MasterSwitchPreference;)Landroid/widget/Switch;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/settings/widget/MasterSwitchPreference;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->b:Z

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0d027a

    return v0
.end method

.method public a(Lcom/android/settingslib/g$a;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->b(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 97
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->b:Z

    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 104
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->c:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lcom/android/settings/widget/MasterSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterSwitchPreference$1;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a06b6

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    .line 85
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/widget/MasterSwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->b:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->a:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->c:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method
