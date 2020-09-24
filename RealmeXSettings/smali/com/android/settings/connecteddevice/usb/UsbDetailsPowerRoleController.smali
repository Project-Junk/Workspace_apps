.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;
.super Lcom/android/settings/connecteddevice/usb/c;
.source "UsbDetailsPowerRoleController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private e:Landroidx/preference/PreferenceCategory;

.field private f:Landroidx/preference/TwoStatePreference;

.field private g:I

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/c;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V

    .line 46
    new-instance p1, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$n0BFfYlcUeSqPi9XEEqEw3RTHIk;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$n0BFfYlcUeSqPi9XEEqEw3RTHIk;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->h:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 47
    iget v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    const v1, 0x7f1217ce

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$n0BFfYlcUeSqPi9XEEqEw3RTHIk(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->a()V

    return-void
.end method


# virtual methods
.method protected final a(ZJII)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->c:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/b;->c()Z

    move-result p2

    if-nez p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->b:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->c:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/b;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 75
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->b:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    const-string p2, ""

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-ne p4, p5, :cond_2

    .line 78
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p5}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 81
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p5}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    if-nez p4, :cond_5

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 85
    iget p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    if-nez p1, :cond_5

    .line 86
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    if-eqz p1, :cond_7

    if-eqz p4, :cond_7

    if-ne p1, p4, :cond_6

    .line 94
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 97
    :cond_6
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    const p2, 0x7f1217ce

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    .line 99
    :goto_2
    iput p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    .line 100
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->d:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/c;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    .line 63
    new-instance p1, Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    .line 64
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f1217db

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->e:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "usb_details_power_role"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 127
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 106
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->c:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/b;->a()I

    move-result v2

    if-eq v2, p1, :cond_5

    iget v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    if-nez v2, :cond_5

    .line 109
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 110
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->c:Lcom/android/settings/connecteddevice/usb/b;

    .line 1117
    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/b;->b()I

    move-result v3

    .line 1118
    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/b;->c()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq p1, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 1130
    :cond_2
    :goto_1
    iget-object v3, v2, Lcom/android/settings/connecteddevice/usb/b;->b:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_3

    .line 1131
    iget-object v2, v2, Lcom/android/settings/connecteddevice/usb/b;->b:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2, p1, v0}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    .line 112
    :cond_3
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->g:I

    .line 113
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f1217cd

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->h:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->c:Lcom/android/settings/connecteddevice/usb/b;

    .line 116
    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/b;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0xbb8

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x3a98

    .line 115
    :goto_2
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v1
.end method
