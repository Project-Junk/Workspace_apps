.class public Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;
.super Lcom/color/support/preference/ColorSwitchWithDividerPreference;
.source "SettingsColorSwitchWithDividerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;
    }
.end annotation


# instance fields
.field public b:Landroid/view/View$OnClickListener;

.field private final c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 79
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;-><init>(Landroidx/preference/Preference;IB)V

    .line 1121
    iput-object v0, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    const v0, 0x7f0a06b9

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
