.class public final Lcom/android/settings/connecteddevice/usb/d;
.super Lcom/android/settings/connecteddevice/usb/c;
.source "UsbDetailsDataRoleController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$a;


# instance fields
.field private e:Landroidx/preference/PreferenceCategory;

.field private f:Lcom/android/settings/widget/RadioButtonPreference;

.field private g:Lcom/android/settings/widget/RadioButtonPreference;

.field private h:Lcom/android/settings/widget/RadioButtonPreference;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/c;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V

    .line 45
    new-instance p1, Lcom/android/settings/connecteddevice/usb/-$$Lambda$d$ItwWrghapROfZX2rbtuLEDTgGI4;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$d$ItwWrghapROfZX2rbtuLEDTgGI4;-><init>(Lcom/android/settings/connecteddevice/usb/d;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 125
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/d;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 5069
    iput-object p0, v0, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    .line 129
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private synthetic a()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_0

    const v1, 0x7f1217ce

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$ItwWrghapROfZX2rbtuLEDTgGI4(Lcom/android/settings/connecteddevice/usb/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/d;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 6

    .line 101
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 3177
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/d;->c:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/b;->b()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v1, :cond_5

    .line 103
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 104
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/d;->c:Lcom/android/settings/connecteddevice/usb/b;

    .line 4136
    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/b;->a()I

    move-result v2

    .line 4137
    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/b;->c()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    .line 4149
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/android/settings/connecteddevice/usb/b;->b:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_3

    .line 4150
    iget-object v1, v1, Lcom/android/settings/connecteddevice/usb/b;->b:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    .line 105
    :cond_3
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    const v0, 0x7f1217cd

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/d;->i:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/d;->c:Lcom/android/settings/connecteddevice/usb/b;

    .line 109
    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/b;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0xbb8

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x3a98

    .line 108
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method protected final a(ZJII)V
    .locals 1

    const-string p2, ""

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->f:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p4}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->g:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p5, p4, :cond_1

    .line 74
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->f:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->g:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p4}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p5, :cond_3

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    if-nez p1, :cond_3

    .line 81
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->g:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->f:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz p1, :cond_5

    if-eqz p5, :cond_5

    .line 87
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 2177
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p5, :cond_4

    .line 89
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    const p2, 0x7f1217ce

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    :goto_1
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->h:Lcom/android/settings/widget/RadioButtonPreference;

    .line 95
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->d:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/d;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/c;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/d;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->e:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    .line 1173
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1217b7

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/d;->a(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->g:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 p1, 0x2

    .line 2173
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1217b6

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/d;->a(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/d;->f:Lcom/android/settings/widget/RadioButtonPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "usb_details_data_role"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
