.class public Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "ColorUsbConfigurationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->c()V

    return-void
.end method


# virtual methods
.method final c()V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 100
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 103
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 104
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setValue(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1057
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    if-eqz p1, :cond_2

    .line 1060
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 1061
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1062
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    array-length v3, p1

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 1066
    aget-object v5, v0, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1068
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setUsbSettableEntries, entry: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", is not settable function."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ColorUsbConfigurationPreferenceController"

    invoke-static {v6, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1072
    :cond_0
    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1075
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1076
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "select_usb_configuration"

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1087
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 1088
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "none"

    .line 1089
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1090
    invoke-virtual {p1, p2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {p1, p2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method
