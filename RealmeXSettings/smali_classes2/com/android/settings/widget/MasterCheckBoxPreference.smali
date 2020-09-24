.class public Lcom/android/settings/widget/MasterCheckBoxPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterCheckBoxPreference.java"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->a:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/widget/MasterCheckBoxPreference;Z)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->b:Z

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d0279

    return v0
.end method

.method public final a(Z)V
    .locals 1

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->b:Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->a:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/android/settings/widget/MasterCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterCheckBoxPreference$1;-><init>(Lcom/android/settings/widget/MasterCheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0138

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->a:Landroid/widget/CheckBox;

    .line 84
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->a:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->a:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->b:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->a:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->c:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setEnabled(Z)V

    .line 1109
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->c:Z

    .line 1110
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->a:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    return-void
.end method
