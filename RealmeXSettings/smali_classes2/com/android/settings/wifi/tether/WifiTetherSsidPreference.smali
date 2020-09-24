.class public Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;
.super Lcom/android/settings/widget/ValidatedEditTextPreference;
.source "WifiTetherSsidPreference.java"


# instance fields
.field d:Landroid/view/View$OnClickListener;

.field e:Z

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ValidatedEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/ValidatedEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/ValidatedEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const v0, 0x7f0d026f

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setLayoutResource(I)V

    const v0, 0x7f0d039d

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setWidgetLayoutResource(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080803

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WifiTetherSsidPreference"

    const-string v1, "Resource does not exist: 2131232771"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0107

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a0747

    .line 82
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 84
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->e:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12199f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
