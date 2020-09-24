.class public Lcom/android/settings/development/HdcpCheckingPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "HdcpCheckingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03009c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->a:[Ljava/lang/String;

    .line 50
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03009a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->b:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroidx/preference/ListPreference;)V
    .locals 4

    const-string v0, "persist.sys.hdcp_checking"

    .line 77
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 80
    aget-object v2, v2, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "hdcp_checking"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 1091
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    .line 55
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "persist.sys.hdcp_checking"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/development/HdcpCheckingPreferenceController;->a(Landroidx/preference/ListPreference;)V

    .line 67
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/d;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/development/HdcpCheckingPreferenceController;->a(Landroidx/preference/ListPreference;)V

    return-void
.end method
