.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiAPITest.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:I

.field private b:Landroidx/preference/Preference;

.field private c:Landroidx/preference/Preference;

.field private d:Landroidx/preference/Preference;

.field private e:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/settings/wifi/WifiAPITest;->a:I

    return p0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->a:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAPITest;->e:Landroid/net/wifi/WifiManager;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "wifi"

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->e:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f0d039c

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "disconnect"

    .line 77
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->b:Landroidx/preference/Preference;

    .line 78
    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->b:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p2, "disable_network"

    .line 80
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->c:Landroidx/preference/Preference;

    .line 81
    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->c:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p2, "enable_network"

    .line 83
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->d:Landroidx/preference/Preference;

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->b:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->c:Landroidx/preference/Preference;

    const-string v1, "Cancel"

    const-string v2, "Ok"

    const-string v3, "Enter Network ID"

    const-string v4, "Input"

    if-ne p1, v0, :cond_1

    .line 110
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 114
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 116
    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiAPITest$1;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 129
    new-instance v0, Lcom/android/settings/wifi/WifiAPITest$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiAPITest$2;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->d:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 136
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 140
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 142
    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$3;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiAPITest$3;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 149
    new-instance v0, Lcom/android/settings/wifi/WifiAPITest$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiAPITest$4;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    return p1
.end method
