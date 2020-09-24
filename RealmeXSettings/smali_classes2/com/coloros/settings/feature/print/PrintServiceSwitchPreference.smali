.class public Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;
.super Landroidx/preference/Preference;
.source "PrintServiceSwitchPreference.java"


# instance fields
.field private a:Lcom/color/support/widget/ColorSwitch;

.field private b:Landroid/widget/TextView;

.field private c:Z

.field private d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const v0, 0x7f0a06b6

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    iput-object v0, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->a:Lcom/color/support/widget/ColorSwitch;

    const v0, 0x7f0a0704

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->b:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->a:Lcom/color/support/widget/ColorSwitch;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->c:Z

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->a:Lcom/color/support/widget/ColorSwitch;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/PrintServiceSwitchPreference;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
