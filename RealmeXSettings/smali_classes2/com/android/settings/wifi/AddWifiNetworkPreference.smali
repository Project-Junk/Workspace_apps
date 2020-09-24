.class public Lcom/android/settings/wifi/AddWifiNetworkPreference;
.super Landroidx/preference/Preference;
.source "AddWifiNetworkPreference.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d024d

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->setLayoutResource(I)V

    const p1, 0x7f0d039d

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0806a1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->setIcon(I)V

    const p1, 0x7f121918

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->setTitle(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080809

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AddWifiNetworkPreference"

    const-string v1, "Resource does not exist: 2131232777"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$-2TSl68JVqTAJ4OPx7_96m8OXfo(Lcom/android/settings/wifi/AddWifiNetworkPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0107

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12199b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$AddWifiNetworkPreference$-2TSl68JVqTAJ4OPx7_96m8OXfo;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$AddWifiNetworkPreference$-2TSl68JVqTAJ4OPx7_96m8OXfo;-><init>(Lcom/android/settings/wifi/AddWifiNetworkPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
