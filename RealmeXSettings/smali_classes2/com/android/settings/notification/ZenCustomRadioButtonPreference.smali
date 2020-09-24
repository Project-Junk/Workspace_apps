.class public Lcom/android/settings/notification/ZenCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;,
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RadioButton;

.field private b:Z

.field private c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;

.field private d:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0271

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0271

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d0271

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0271

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d0276

    return v0
.end method

.method public final a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    return-void
.end method

.method public final a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->d:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 107
    iput-boolean p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->b:Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a013a

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1020001

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a:Landroid/widget/RadioButton;

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const v0, 0x1020018

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0747

    .line 90
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 91
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const/16 v1, 0x8

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 98
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->d:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020018

    if-ne v0, v1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;->onGearClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a013a

    if-ne p1, v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->d:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;

    if-eqz p1, :cond_1

    .line 132
    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_1
    return-void
.end method
